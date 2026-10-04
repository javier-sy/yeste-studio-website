---
layout: page
title: News
permalink: news/
---
{%- assign items = site.news | sort: "date" | reverse -%}
{%- assign letters = site.letters | sort: "date" | reverse -%}

<p class="news-page__intro">News from yeste.studio and its tools.{% if site.data.newsletter.endpoint %} <strong>{{ site.data.newsletter.name }}</strong>, the newsletter, gathers them in occasional <a href="/news/letters/">letters</a>.{% endif %}</p>

<p class="news-page__topics">
  {%- for topic in site.data.topics %}
  <a href="/news/{{ topic.key }}/">{{ topic.label }}</a>{% unless forloop.last %} ·{% endunless %}
  {%- endfor %}
</p>

{% include newsletter-form.html placement="top" %}

{% include news-list.html items=items topics=true %}

<p class="news-page__more"><a href="/feed.xml">RSS</a>{% if letters.size > 0 %} · <a href="/news/letters/">Letters</a>{% endif %}</p>
