---
layout: works
title: Works
permalink: works
image: images/works.jpg
---
# Algorithmic Works

Sound works created mostly with MusaDSL and rendered with Max/MSP, Supercollider, Ableton Live and Bitwig Studio.

{% assign algorithmic_works = site.works | where: "category", "algorithmic" | sort: "order" %}
{% for work in algorithmic_works %}
## [{{ work.title }}]({{ work.url }}){% if work.year_remix %} ({{ work.year }}, remixed for stereo on {{ work.year_remix }}){% else %} ({{ work.year }}){% endif %}

{{ work.content | markdownify }}

{% include wavesurfer-player.html audio_file=work.audio_file image_file=work.image_file title=work.title player_id=work.slug %}

{% endfor %}

# Soundscapes

"Natural" recordings from "natural" phenomena.

{% assign soundscape_works = site.works | where: "category", "soundscape" | sort: "order" %}
{% for work in soundscape_works %}
## [{{ work.title }}]({{ work.url }}) ({{ work.year }})

{{ work.content | markdownify }}

{% include wavesurfer-player.html audio_file=work.audio_file image_file=work.image_file title=work.title player_id=work.slug %}

{% endfor %}
