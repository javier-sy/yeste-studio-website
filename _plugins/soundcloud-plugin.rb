module Jekyll
  class SoundCloudSoundTag < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      super
      @id = markup
    end

    def render(context)
      "<iframe width=\"100%\" height=\"25%\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https://api.soundcloud.com/tracks/#{@id}\"></iframe><p></p>"
    end
  end

end

Liquid::Template.register_tag('soundcloud', Jekyll::SoundCloudSoundTag)
