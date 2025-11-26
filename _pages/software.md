---
layout: page
title: Software
permalink: software
image: images/software.png
---

# MusaDSL

Soy el autor de MusaDSL, un lenguaje de dominio específico de código abierto basado en Ruby, diseñado para la composición sonora y musical algorítmica.

MusaDSL separa la lógica compositiva del renderizado de audio, permitiendo crear estructuras musicales complejas de forma independiente a los sintetizadores o DAWs utilizados. Esta arquitectura facilita la exploración de sistemas generativos, la composición algorítmica y la transcripción de notación musical.

Utilizo MusaDSL en diversas de mis obras, como *Espiral*, *El Bosque*, *Piezoreflections* o los *Estudios Fibonacci*.

Toda la documentación, ejemplos y descargas están disponibles en [musadsl.yeste.studio](https://musadsl.yeste.studio).

## Características principales

- **Secuenciador avanzado** con precisión de microsegundos para estructuras polirrítmicas
- Múltiples fuentes de reloj (interno, MIDI, externo)
- **Herramientas generativas**: cadenas de Markov, Variatio, Rules, GenerativeGrammar y algoritmos genéticos Darwin
- Sistema de notación textual Neumalang
- Transcripción a MIDI y MusicXML con expansión de ornamentos
- Soporte completo de escalas y afinaciones

## Ecosistema de componentes

| Componente | Descripción | Repositorio |
| --- | --- | --- |
| **Musa-DSL** | Framework principal en Ruby | [GitHub](https://github.com/javier-sy/musa-dsl) |
| **MusaLCEServer** | Servidor de procesamiento para live coding | [GitHub](https://github.com/javier-sy/MusaLCEServer) |
| **MusaLCE Client for VSCode** | Cliente para Visual Studio Code | [GitHub](https://github.com/javier-sy/musa-dsl-vscode-repl) |
| **MusaLCE for Bitwig** | Conector para Bitwig Studio 4+ | [GitHub](https://github.com/javier-sy/MusaLCEforBitwig) |
| **MusaLCE for Live** | Conector para Ableton Live 11+ | [GitHub](https://github.com/javier-sy/MusaLCEforLive) |

## Suite de librerías MIDI para Ruby

Conjunto de componentes de código abierto para añadir capacidades de comunicación MIDI a MusaDSL, utilizables también de forma independiente en otros proyectos Ruby.

Esta suite es un fork de las librerías de [Ari Russo](https://github.com/arirusso) con modificaciones y optimizaciones.

| Librería | Función | Repositorio |
| --- | --- | --- |
| **MIDI Events** | Representación de eventos MIDI | [GitHub](https://github.com/javier-sy/midi-events) |
| **MIDI Parser** | Parseo de datos MIDI | [GitHub](https://github.com/javier-sy/midi-parser) |
| **MIDI Communications** | Comunicación MIDI con instrumentos y superficies de control | [GitHub](https://github.com/javier-sy/midi-communications) |
| **MIDI Communications MacOS** | Interfaz MIDI de bajo nivel para MacOS | [GitHub](https://github.com/javier-sy/midi-communications-macos) |

## Licencia

Todos los proyectos del ecosistema MusaDSL están publicados bajo licencia LGPL 3.0.  
