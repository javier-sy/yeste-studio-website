---
layout: music
title: "An Elevator Door's 16 Selected Seconds"
composer: "Javier Sánchez Yeste"
duration: "29:40"
year: 2023
techniques:
  - "Field recording"
  - "Composición algorítmica"
  - "Expansión temporal (zoom ~x100)"
  - "Análisis espectral"
  - "Síntesis granular"
  - "MusaDSL + Max/MSP"
audio_file: "/audio/phd/an-elevator-doors-16-selected-seconds.mp3"
image_file: "/images/phd/an-elevator-doors-16-selected-seconds.jpg"
description: "Microscopio sonoro: 19 segundos del sonido de una puerta de ascensor expandidos a 29 minutos mediante zoom temporal y espectral."
soundcloud_url: "https://soundcloud.com/yeste-studio/an-elevator-doors-16-selected-seconds"
genre: "Experimental / Spectral"
github_code: "https://github.com/javier-sy/an-elevator-doors-16-selected-seconds"
---

## Origen

*An Elevator Door's 16 Selected Seconds* surge a partir de la grabación a mitad de noviembre de 2017 de un minuto y cinco segundos del recorrido en el antiguo ascensor de la facultad de BBAA de la UB para subir hasta el 2º piso y volver a bajar: se registraron los sonidos con los que el ascensor respondía al abrir la puerta para entrar, pulsar el botón para subir, una vez arriba volver a pulsar el botón para bajar y, ya en la planta 0, abrir de nuevo la puerta y salir.

Se pueden identificar golpes metálicos de la puerta y de su mecanismo de bloqueo, vibraciones de baja frecuencia del motor que resuenan en la cabina y chirridos del roce de la cabina durante el ascenso y descenso.

## Microscopio Sonoro

Revisando posteriormente el registro me resultaron muy interesantes los eventos sonoros metálicos junto al zumbido de fondo y los chirridos y comencé a pensar en analizar tales sonidos aumentándolos, como si dispusiera de un microscopio sonoro. 

El espectrograma o la forma de onda son representaciones visuales que ya "aumentan" las posibilidades de percepción del sonido pero mi interés era aumentarlos como sonido, no como imagen.

De ahí surgió la idea de hacer un **zoom temporal**, dilatando la duración del sonido, y **zoom espectral**, proyectando el espectro de los eventos sonoros sobre nuevos armónicos. Se trataba de una relectura sobre la apuesta espectralista iniciada por Tristan Murail.

## Análisis y Reducción del Material

En primer lugar realicé una categorización de los eventos sonoros del material original a partir del análisis espectral realizado con la aplicación Sonic Visualizer.

Identifiqué visualmente los eventos sonoros, a los que denominé **"nodos"**, y los numeré según la altura de sus picos, es decir, según los valores de las frecuencias más altas que presentaban. El pico más alto fue el nº1 y el más bajo el nº23. También los clasifiqué en 3 grupos según su aspecto horizontal; marqué las mesetas y los mínimos, y dividí en 3 secciones consecutivas el material.

### Estrategia de Reducción

- **Material original**: 65 segundos
- **Si se expandiera todo ~x100**: 1 hora 40 minutos (demasiado largo)
- **Sección A seleccionada**: 27 segundos (entrada y subida en el ascensor; la bajada en el ascensor era sonoramente redundante)
- **Eliminación de silencios**: reducción final a **19 segundos**
- **Duración final expandida**: **29 minutos 40 segundos**

## Arquitectura del Sistema

El procesamiento del audio se realizaba mediante tres componentes interconectados:

1. **Ableton Live**:
   - Reloj MIDI master
   - Grabación de 6 voces de audio estéreo a medida que se procesan
   - Mezcla final y monitorización

2. **Max/MSP**:
   - Procesamiento del material base de 19 segundos a instancias de los comandos que llegan del programa en MusaDSL
   - 6 instancias del patch `voice3` generando 6 voces estéreo
   - Comunicación con MusaDSL a través de OSC

3. **MusaDSL**:
   - Programa de control desarrollado en MusaDSL
   - Envía órdenes OSC a Max/MSP para modular el comportamiento de los patches `voice3`
   - Sincronización con Clock MIDI de Ableton Live

### Patch voice3: Resíntesis Granular

El patch `voice3` recogía el audio del material base de un buffer, lo granulaba a medida que lo recorría lentamente (zoom temporal), y reproducía los granos a velocidades relativas de **1x, 2x, 3x, 6x, 9x, 12x** en sub-voces estéreo (zoom espectral).

La duración de los gránulos de audio y los niveles de la mezcla de las sub-voces se recibían como parámetros desde el programa escrito en MusaDSL.

## Partitura en Código: *En Mis Propios Términos*

La aproximación para realizar la composición de la pieza partía del análisis visual realizado anteriormente. Imaginaba la pieza como un recorrido ampliado en el tiempo por el camino del espectro representado, en el que el oyente se aproximaba a los nodos, los transitaba y luego se alejaba de ellos; cada nodo teniendo sus propias peculiaridades y mostrando diferentes perspectivas sonoras del material base.

Esto es lo que quería representar en mi "partitura", y en este nivel de abstracción. No quería dibujar en el DAW líneas que representaran los valores de los parámetros como el tamaño del grano o la intensidad de una sub-voz. Quería indicar, *en mis propios términos*, dónde estaban los nodos y qué armónicos quería desarrollar al aproximarse y alejarse de ellos.

La partitura en código definía:
- **Los 11 nodos relevantes del fragmento**: posición temporal y nivel de cada nodo
- **Parámetros de aproximación**: qué sub-voces activar y con qué rangos de cambio de niveles
- **Modulaciones**: cambios graduales usando el método `move` del Sequencer de MusaDSL

## Desarrollo de MusaDSL

Para la creación de *An Elevator Door's 16 Selected Seconds*, utilicé la versión **v0.6.2** de MusaDSL.

## Escucha Recomendada

**Usar auriculares.** La obra requiere atención sostenida para apreciar:
- Texturas microscópicas del roce de piezas metálicas
- Resonancias complejas de los mecanismos mecánicos del ascensor ampliados en la cabina
- Transformaciones espectrales graduales


---

*Grabación original: noviembre 2017. Versión expandida: 2023.*

**Código fuente**: [github.com/javier-sy/an-elevator-doors-16-selected-seconds](https://github.com/javier-sy/an-elevator-doors-16-selected-seconds)
