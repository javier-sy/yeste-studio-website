---
layout: page
title: Letters
permalink: news/letters/
---
{%- assign letters = site.letters | sort: "date" | reverse -%}

<p class="news-page__intro">The letters of <strong>{{ site.data.newsletter.name }}</strong>, as they were sent.</p>

{%- if letters.size > 0 %}
{% include news-list.html items=letters %}
{%- else %}
<p>No letters yet.</p>
{%- endif %}

<p class="news-page__more"><a href="/news/">All news</a></p>
