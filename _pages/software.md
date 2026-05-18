---
layout: page
title: Software
permalink: software
image: images/software.png
---

# MusaDSL

Soy el autor de MusaDSL, un lenguaje de dominio específico de código abierto basado en Ruby, diseñado para la composición sonora y musical algorítmica.

MusaDSL separa la lógica compositiva del renderizado de audio, permitiendo crear estructuras musicales complejas de forma independiente a los sintetizadores o DAWs utilizados. Esta arquitectura facilita la exploración de sistemas generativos, la composición algorítmica y el live coding.

Utilizo MusaDSL en diversas de mis obras, como *Espiral*, *El Bosque*, *Piezoreflections* o el *Estudio Fibonacci*.

## Características principales

- **Secuenciador avanzado** con precisión de microsegundos para estructuras polirrítmicas y politemporales, con múltiples fuentes de reloj (interno, MIDI, externo)
- **Herramientas generativas**: cadenas de Markov, Variatio, Rules (sistemas-L), GenerativeGrammar y algoritmos genéticos Darwin
- **Series**: iteradores lazy con operaciones funcionales (transformar, filtrar, invertir, combinar, cortar, repetir) y generadores especializados (Fibonacci, serie armónica, aleatorio con restricciones)
- **Más de 30 escalas y modos** en 9 familias (modos griegos, pentatónicas, blues, simétricas, bebop, étnicas, menor melódica...) con soporte de temperamento igual y afinación justa
- **Sistema de acordes** con calidad, extensiones, voicings y navegación acorde-escala
- **Datasets y Score**: representación estructurada de eventos musicales (grados de escala, alturas MIDI, dinámicas) con organización multivoce
- Sistema de notación textual **Neumalang** con soporte para grados de escala y ornamentos
- **Operaciones matriciales** para transformación de estructuras sonoras y musicales
- Transcripción a **MIDI** y generación de partituras en **MusicXML** con expansión de ornamentos
- **Comunicaciones MIDI** multiplataforma para conexión con instrumentos y controladores
- **Gestión polifónica MIDI** con asignación automática de voces

## Licencia

Todos los proyectos del ecosistema MusaDSL están publicados bajo licencia **LGPL 3.0** o **GPL 3.0**.

🌐 [musadsl.yeste.studio](https://musadsl.yeste.studio)

# MusaLCE — Entorno de Live Coding

MusaLCE es el entorno de live coding de MusaDSL: permite escribir Ruby en el editor y oír los cambios en tiempo real mientras el secuenciador sigue tocando. Incluye un servidor (`musalce-server`), una extensión para Visual Studio Code, y conectores para **Bitwig Studio** y **Ableton Live**.

MusaLCE soporta dos modos: un workflow autónomo con REPL propio (control total, ideal para SuperCollider, Max/MSP u OSC), y un workflow integrado con DAW donde `musalce-server` expone una API `daw.*` que gestiona transport, tracks y voces directamente.

MusaLCE está publicado bajo licencia **LGPL 3.0**.

🌐 [musalce.yeste.studio](https://musalce.yeste.studio)

# Nota — Asistente de composición con IA

Nota es un plugin para [Claude Code](https://claude.ai/code) que transforma la IA en un asistente de composición algorítmica con conocimiento profundo de MusaDSL. Permite preguntar sobre el framework en lenguaje natural (`/nota:explain`), generar ideas compositivas (`/nota:think`), escribir código verificado a partir de intenciones musicales (`/nota:code`), y analizar las propias obras (`/nota:analyze`).

Nota incorpora una base de conocimiento semántica que cubre toda la documentación, la referencia de API y más de 20 proyectos de demostración. A medida que el compositor indexa sus obras (`/nota:index`) y extrae buenas prácticas (`/nota:best-practices`), el asistente se enriquece con ese conocimiento personal. Cada paso alimenta al siguiente, formando un ciclo creativo continuo.

Nota está publicado bajo licencia **GPL 3.0**.

🌐 [nota.yeste.studio](https://nota.yeste.studio)

# Próximamente

- **Pulso** — controlador físico (plugin de Elgato Stream Deck) para sesiones de live coding con MusaLCE. Publicación pendiente.
- **Plugins VST3** — colección de plugins de audio para tareas de mezcla y masterización. Varios plugins en desarrollo, publicación pendiente.
