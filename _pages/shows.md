---
layout: page
title: Shows
permalink: shows
image: /images/mixer.jpg
image_attribution: 'Photo by <a href="https://unsplash.com/@adigold1?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Adi Goldstein</a> on <a href="https://unsplash.com/s/photos/music-studio?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>'
---
{% assign kinds = "performance" | split: "," %}
{% assign events = site.events | sort: "date" | reverse %}
{% for event in events %}
{%- assign shown = event.activities | where_exp: "a", "kinds contains a.kind" -%}
{%- if shown.size > 0 %}
{% include event.html event=event kinds=kinds other_url="/teaching" other_label="Teaching & Talks" %}
{%- endif %}
{% endfor %}
