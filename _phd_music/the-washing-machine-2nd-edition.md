---
layout: music
title: "The Washing Machine (2nd Edition)"
composer: "Javier Sánchez Yeste"
duration: "10:03"
year: 2017
techniques:
  - "MusaDSL"
  - "SuperCollider"
  - "Composición algorítmica"
  - "Field recording"
  - "Síntesis granular"
audio_file: "/audio/phd/the-washing-machine-2nd-edition.mp3"
image_file: "/images/phd/the-washing-machine-2nd-edition.jpg"
description: "Transformación de un ciclo de lavado de una lavadora en una pieza con connotación armónica mediante síntesis granular y composición algorítmica en MusaDSL."
soundcloud_url: "https://soundcloud.com/yeste-studio/the-washing-machine-2nd-edition"
genre: "Experimental / Drone / Electronic"
github_code: "https://github.com/javier-sy/the-washing-machine"
---

## Sobre la Obra

*The Washing Machine (2nd Edition)* es la primera obra creada con MusaDSL, mi lenguaje específico de dominio para composición algorítmica. Se trata de una pieza exploratoria en dos terrenos fundamentales:

1. El desarrollo de una partitura escrita como código fuente *en mis propios términos* para un instrumento inexistente y con parámetros arbitrarios.
2. El procesamiento del audio para generar sensaciones de alturas musicales y acordes aunque el material de origen era fundamentalmente ruido y, por lo tanto, no estaba estructurado armónicamente.

## Idea Generatriz

El reto era transformar la grabación sonora de un ciclo de lavado de la lavadora de casa, que incluía elementos rítmicos propios derivados de la rotación del tambor a distintas velocidades, en una pieza sonora con una cierta connotación armónica, aún partiendo de un material sonoro que no tiene un tono musical identificable sino un espectro fundamentalmente de ruido.

## Proceso Técnico

### Arquitectura del Sistema

La arquitectura de la pieza se estructura en tres componentes que se sincronizan desde Ableton Live:

- **MusaDSL**: Partitura en código que controla los parámetros de procesamiento
- **SuperCollider**: Motor de audio que realiza la síntesis granular
- **Ableton Live**: Sincronización MIDI y grabación del resultado

### Síntesis Granular y Progresión Armónica

La aproximación consistía en generar varias voces partiendo del mismo flujo sonoro de origen que serían procesadas mediante síntesis granular para dar, cada voz, una altura de una "nota" del acorde de una progresión armónica.

Al tratarse de voces en las que la síntesis granular comprime los granos de sonido (trasladando su espectro hacia registros más agudos) o los dilata en el tiempo (trasladando su espectro hacia el grave) esperaba que se generase una cierta percepción de altura relativa entre las voces que diera lugar a la percepción de la progresión armónica aunque las voces no tuvieran una altura tonal definida.

### Desarrollo de MusaDSL

Para esta pieza desarrollé los componentes fundamentales de MusaDSL v0.1.0:

- **Sequencer**: Motor temporal basado en compases y subdivisiones binarias alineado con la forma de onda visible en el DAW
- **Series**: Secuencias de elementos (alturas, duraciones, parámetros) que se pueden consumir, combinar y transformar
- **Scale y Chord**: Representación de escalas musicales y acordes con nomenclatura de teoría musical (grados romanos, duplicaciones, inversiones)
- **Transport**: Sincronización con reloj MIDI externo

## Edición Remasterizada

Esta es la segunda edición, publicada en SoundCloud el 20 de agosto de 2017, con mejoras en el balance tímbrico y la espacialización respecto a la versión original de 2016.

Se recomienda escuchar con auriculares de calidad para apreciar los detalles del procesamiento granular y la evolución de las texturas sonoras a lo largo del ciclo de lavado.

---

*Pieza finalizada en octubre de 2017. Edición remasterizada publicada el 20 de agosto de 2017.*

**Código fuente**: [github.com/javier-sy/the-washing-machine](https://github.com/javier-sy/the-washing-machine)
