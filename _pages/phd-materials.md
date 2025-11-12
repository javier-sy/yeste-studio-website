---
layout: page
title: Materiales de audio
permalink: /phd/materials
image:
---

Esta página reúne los materiales sonoros que ilustran la tesis doctoral, organizados por proyectos. Cada obra documenta exploraciones en composición algorítmica, procesamiento de audio y desarrollo de MusaDSL.

---

## The Washing Machine

Exploración de composición algorítmica en MusaDSL, síntesis granular y generación de material armónico a partir de material con contenido espectral de ruido.

{% assign washing_machine_works = site.phd_music | where_exp: "item", "item.title contains 'Washing Machine'" | sort: "year" | reverse %}
{% for work in washing_machine_works %}
### [{{ work.title }}]({{ work.url }})
**{{ work.year }}** • {{ work.duration }}
{{ work.description }}
{% endfor %}

---

## Piezoreflections

Composición algorítmica en MusaDSL basada en la idea de "reacción en cadena sonora". Material base: interferencias electromagnéticas capturadas mediante micros piezoeléctricos conectados en *impedance mismatch* a la grabadora.

{% assign piezoreflections = site.phd_music | where_exp: "item", "item.title contains 'Piezoreflections'" %}
{% for work in piezoreflections %}
### [{{ work.title }}]({{ work.url }})
**{{ work.year }}** • {{ work.duration }}
{{ work.description }}
{% endfor %}

---

## An Elevator Door's 16 Selected Seconds

Microscopio sonoro: expansión temporal extrema (~X100) de grabaciones de campo de una puerta de ascensor. Programado en MusaDSL.

{% assign elevator_works = site.phd_music | where_exp: "item", "item.title contains 'Elevator'" | sort: "duration" | reverse %}
{% for work in elevator_works %}
### [{{ work.title }}]({{ work.url }})
**{{ work.year }}** • {{ work.duration }}
{{ work.description }}
{% endfor %}

---

## Espiral

Proyección espacial de espirales tridimensionales rotadas y distorsionadas sobre instrumentación orquestal. Programado en MusaDSL.

{% assign espiral_works = site.phd_music | where_exp: "item", "item.project == 'Espiral'" | sort: "year" %}
{% for work in espiral_works %}
### [{{ work.title }}]({{ work.url }})
**{{ work.year }}** • {{ work.duration }}
{{ work.description }}
{% endfor %}

---

## Estudio para Clave

Gramáticas generativas aplicadas a la exploración de características perceptivas de la música barroca. Programado en MusaDSL.

{% assign clave_works = site.phd_music | where_exp: "item", "item.title contains 'Clave'" %}
{% for work in clave_works %}
### [{{ work.title }}]({{ work.url }})
**{{ work.year }}** • {{ work.duration }}
{{ work.description }}
{% endfor %}

---

## Acerca de estos materiales

Todos los materiales sonoros están vinculados a la investigación doctoral sobre composición algorítmica y desarrollo de MusaDSL, un lenguaje específico de dominio para composición musical creado como parte de la tesis.

