---
layout: page
title: Software
permalink: software
image: images/software.png
---

> Para una visión completa del ecosistema — qué hay, cómo encajan los proyectos entre sí y cuál elegir según el caso de uso — visita **[musa-ecosystem.yeste.studio](https://musa-ecosystem.yeste.studio)**.

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

Licencia **LGPL 3.0** o **GPL 3.0** según componente.

🌐 [musadsl.yeste.studio](https://musadsl.yeste.studio)

# MusaLCE — Entorno de Live Coding

MusaLCE es el entorno de live coding de MusaDSL: permite escribir Ruby en el editor y oír los cambios en tiempo real mientras el secuenciador sigue tocando.

Soporta dos vías de uso — un REPL standalone que tú instancias para destinos arbitrarios (SuperCollider, Max/MSP, OSC), y una integración llave-en-mano con Ableton Live o Bitwig Studio a través de `musalce-server` y una extensión específica del DAW.

Licencia **LGPL 3.0**.

🌐 [musalce.yeste.studio](https://musalce.yeste.studio)

# Nota — Asistente de composición con IA

Nota es un plugin para [Claude Code](https://claude.ai/code) que transforma la IA en un asistente de composición algorítmica con conocimiento profundo de MusaDSL. Permite preguntar sobre el framework en lenguaje natural (`/nota:explain`), generar ideas compositivas (`/nota:think`), escribir código verificado a partir de intenciones musicales (`/nota:code`), y analizar las propias obras (`/nota:analyze`).

Nota incorpora una base de conocimiento semántica que cubre toda la documentación, la referencia de API y más de 20 proyectos de demostración. A medida que el compositor indexa sus obras (`/nota:index`) y extrae buenas prácticas (`/nota:best-practices`), el asistente se enriquece con ese conocimiento personal. Cada paso alimenta al siguiente, formando un ciclo creativo continuo.

Licencia **GPL 3.0**.

🌐 [nota.yeste.studio](https://nota.yeste.studio)

# Próximamente

- **Pulso** — sistema de control remoto OSC para DAWs musicales mediante un plugin de Elgato Stream Deck más un bridge específico del DAW. Para Bitwig Studio en su primera versión; Ableton Live planificado. Incluye, entre otras superficies, integración con MusaLCE Surface para sesiones de live coding. Publicación pendiente.
