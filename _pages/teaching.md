---
layout: page
title: Teaching & Talks
permalink: teaching
image: /images/teaching.jpg
---

# Docencia

{% assign kinds = "course" | split: "," %}
{% assign events = site.events | sort: "date" | reverse %}
{% for event in events %}
{%- assign shown = event.activities | where_exp: "a", "kinds contains a.kind" -%}
{%- if shown.size > 0 %}
{% include event.html event=event kinds=kinds other_url="/shows" other_label="Shows" %}
{%- endif %}
{% endfor %}

# Clases invitadas y charlas

{% assign kinds = "talk,lecture,panel" | split: "," %}
{% assign events = site.events | sort: "date" | reverse %}
{% for event in events %}
{%- assign shown = event.activities | where_exp: "a", "kinds contains a.kind" -%}
{%- if shown.size > 0 %}
{% include event.html event=event kinds=kinds other_url="/shows" other_label="Shows" %}
{%- endif %}
{% endfor %}
