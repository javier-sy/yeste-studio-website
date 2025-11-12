---
layout: music
title: "Piezoreflections"
composer: "Javier Sánchez Yeste"
duration: "5:00"
year: 2017
techniques:
  - "MusaDSL"
  - "Composición algorítmica"
  - "Micrófonos piezoeléctricos"
  - "Impedance mismatch"
  - "Captación de ruido electromagnético"
  - "Estructura de eventos"
audio_file: "/audio/phd/piezoreflections.mp3"
image_file: "/images/phd/piezoreflections.jpg"
description: "¿Sueñan los micrófonos piezoeléctricos con ruidos eléctricos? Reacción en cadena sonora a partir de interferencias electromagnéticas capturadas con piezos impedance-mismatched."
soundcloud_url: "https://soundcloud.com/yeste-studio/piezoreflections"
genre: "Experimental / Noise / Electroacoustic"
github_code: "https://github.com/javier-sy/piezoreflections"
---

## El "Error" Como Punto de Partida

Para la segunda pieza compuesta con MusaDSL quise explorar una idea que surgió de un error en una grabación sonora.

El "error" se produjo durante unas pruebas con micrófonos piezoeléctricos de contacto realizadas a mitad de agosto de 2017. Conecté un micrófono piezoeléctrico de contacto (que se caracterizan por una impedancia muy alta) a la grabadora Zoom H5 y me dispuse a registrar las vibraciones de la baranda del balcón de casa en las que esperaba encontrar los efectos vibratorios del tráfico de vehículos de la Avenida Diagonal y, quizás, del metro, todo ello transformado a través de los cuerpos resonantes de las estructuras del edificio y del metal.

No obstante, debido a la diferencia de impedancias entre el micrófono y la entrada de la grabadora y a la nula protección electromagnética del cable que lo unía a la grabadora, el micrófono se convirtió en una antena que capturaba el rango audible portado en las interferencias electromagnéticas emitidas por los aparatos eléctricos domésticos, al estilo de los *Electric Walks* de Christina Kubisch (2004).

Lámparas de bajo consumo, monitor del ordenador, MacBook Pro, router WiFi, nevera y ruido electromagnético "ambiental" resultaron de tremendo interés sonoro, registrado a través de dos micrófonos-antenas capturando en estéreo.

## Material Sonoro

A partir de este material estéreo grabado a 96kHz en 24 bits, de unos 15 minutos de duración, quise explorar una estructura compositiva basada en la idea de **reacción en cadena**, donde un evento sonoro desencadenaba otros y, estos a su vez, otros más; algo parecido a una reacción de fisión nuclear, fuente de energía cuando es una reacción controlada y fuente de destrucción cuando se produce sin límites que la modulen.

## Estructura Compositiva: Reacción en Cadena

La idea de reacción en cadena me evocaba la idea de eventos que son lanzados por un proceso y la de agentes que capturan los eventos y hacen algo con ellos. Algo así como mensajes lanzados al aire y que son escuchados y respondidos (quizás con la emisión de otro mensaje al aire) por otro proceso.

## Proceso de Construcción

La construcción de la pieza supuso:

1. **Comprensión del material registrado**: Análisis de las 15 minutos de grabación
2. **Troceado en fragmentos**: Uso de Ableton Live + Sampler para crear 60 fragmentos
3. **Clasificación en 5 categorías** según características subjetivas significativas:
   - Sonidos continuos
   - Sonidos continuos con ruidos regulares
   - Sonidos con transitorios
   - Sonidos dinámicos
   - Sonidos "hardcore"

4. **Programación de la partitura en código**: Definición de reglas de lanzamiento de sonidos según categoría y duración

5. **Establecimiento de límites**: Variables de control para evitar la explosión en cadena y convertir el proceso en controlado (contadores de eventos sonando simultáneamente, transitorios, finalización)

## Desarrollo Técnico

Comencé la versión estéreo de *Piezoreflections* a principios de septiembre de 2017 y la terminé a mitad de noviembre. En diciembre inicié una segunda versión para 12 altavoces.

En esta pieza utilicé la versión 0.3.2 de MusaDSL en la cual, además de implementar los métodos `launch` y `on` en Sequencer, realicé diversas mejoras menores, correcciones de errores sobre las versiones anteriores y reorganicé la estructura del código fuente.

## Escucha Recomendada

**Usar auriculares.** Las frecuencias capturadas y los detalles del procesamiento requieren reproducción de calidad para apreciar las sutilezas del ruido eléctrico, las interferencias electromagnéticas y la evolución de la reacción en cadena.

---

*Pieza compuesta entre septiembre y noviembre de 2017.*

**Código fuente**: [github.com/javier-sy/piezoreflections](https://github.com/javier-sy/piezoreflections)
