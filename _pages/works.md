---
layout: works
title: Works
permalink: works
image: /images/works.jpg
---
# Algorithmic Works

Sound works created mostly with [MusaDSL](https://musadsl.yeste.studio) and rendered with Max/MSP, Supercollider, Ableton Live and Bitwig Studio.

{% assign algorithmic_works = site.works | where: "category", "algorithmic" | sort: "order" %}
{% for work in algorithmic_works %}
## [{{ work.title }}]({{ work.url }})

<p class="meta">{{ work.composer }} · {{ work.year }}{% if work.year_remix %}, remixed {{ work.year_remix }}{% endif %} · {{ work.duration }}</p>

{{ work.content | markdownify }}

{% include wavesurfer-player.html audio_file=work.audio_file image_file=work.image_file title=work.title player_id=work.slug %}

{% endfor %}

# Soundscapes

"Natural" recordings from "natural" phenomena.

{% assign soundscape_works = site.works | where: "category", "soundscape" | sort: "order" %}
{% for work in soundscape_works %}
## [{{ work.title }}]({{ work.url }})

<p class="meta">{{ work.composer }} · {{ work.year }} · {{ work.duration }}</p>

{{ work.content | markdownify }}

{% include wavesurfer-player.html audio_file=work.audio_file image_file=work.image_file title=work.title player_id=work.slug %}

{% endfor %}
