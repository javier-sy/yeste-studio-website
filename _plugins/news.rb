# frozen_string_literal: true

# News and letters (../yeste-studio-theme/docs/news.md):
# - every news item needs a date and topics from _data/topics.yml, or the build fails;
# - each topic gets /news/<key>/ and /news/<key>/feed.xml;
# - each letter gets email.txt beside its page: the letter in Markdown with absolute links,
#   ready to paste into the newsletter service.
module YesteStudio
  class NewsGenerator < Jekyll::Generator
    safe true

    def generate(site)
      topics = site.data.fetch('topics')
      news = site.collections.fetch('news').docs

      check_news(news, topics.map { |topic| topic['key'] })
      topics.each do |topic|
        site.pages << topic_page(site, topic, 'index.html', 'news-topic')
        site.pages << topic_page(site, topic, 'feed.xml', 'feed')
      end
      site.collections.fetch('letters').docs.each do |letter|
        site.pages << email_page(site, letter, news)
      end
    end

    private

    def check_news(news, keys)
      news.each do |item|
        fail_build(item, 'needs a date in its front matter') unless explicit_date?(item)
        topics = Array(item.data['topics'])
        fail_build(item, 'needs at least one topic') if topics.empty?
        unknown = topics - keys
        fail_build(item, "unknown topics #{unknown.join(', ')} (see _data/topics.yml)") unless unknown.empty?
      end
    end

    # Jekyll fills `date` from the file name; the front matter must state it too, as _events does.
    def explicit_date?(item)
      File.read(item.path)[/\A---\s*\n.*?\n---/m].to_s.match?(/^date:/)
    end

    def topic_page(site, topic, name, layout)
      Jekyll::PageWithoutAFile.new(site, site.source, "news/#{topic['key']}", name).tap do |page|
        page.data.merge!('layout' => layout, 'title' => "#{topic['label']} news", 'topic' => topic['key'])
        page.data['sitemap'] = false if name == 'feed.xml'
      end
    end

    def email_page(site, letter, news)
      dir = letter.url.delete_prefix('/').chomp('/')
      Jekyll::PageWithoutAFile.new(site, site.source, dir, 'email.txt').tap do |page|
        page.content = email_text(site, letter, news)
        page.data.merge!('layout' => nil, 'sitemap' => false, 'render_with_liquid' => false)
      end
    end

    def email_text(site, letter, news)
      base = site.config['url'].chomp('/')
      items = Array(letter.data['news']).map do |entry|
        item = news.find { |doc| doc.data['slug'] == entry['item'] }
        fail_build(letter, "names #{entry['item']}, which is not in _news") unless item
        "### [#{item.data['title']}](#{base}#{item.url})\n\n#{entry['text'] || item.data['summary']}"
      end
      body = letter.content.strip.gsub('](/', "](#{base}/")
      ["# #{letter.data['title']}", body, *items, "#{base}#{letter.url}"].join("\n\n") + "\n"
    end

    def fail_build(doc, message)
      raise Jekyll::Errors::FatalException, "#{doc.relative_path}: #{message}"
    end
  end
end
