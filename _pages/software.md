---
layout: page
title: Software
permalink: software
image: images/software.png
---
# Musa-DSL

Musa-DSL is an open source language (in fact a framework with a set of DSL's) based on Ruby for sound and music composition.

Musa-DSL downloads, documentation and examples can be found on [musa-dsl.org](https://musa-dsl.org).

Source code can be found in [github.com/javier-sy/musa-dsl](https://github.com/javier-sy/musa-dsl). 

# Musa Live Coding Environment (MusaLCE)

MusaLCE is an open source live coding environment based on Musa-DSL and connected to Ableton Live or Bitwig Studio through an Atom editor user interface.

With MusaLCE you can create sound and music coding in Atom and running immediately 
the programs in a background server. 

The server connects through the connector to Ableton Live or Bitwig Studio 
sending MIDI messages to your tracks.

Also you cand create tracks, add instruments and effects, etc. from your live coding session in Atom. 
 
MusaLCE can be found on Musa-DSL website [musa-dsl.org/musalce](https://musa-dsl.org/musalce).

The server source code can be found in [github.com/javier-sy/MusaLCEServer](https://github.com/javier-sy/MusaLCEServer).

The Ableton Live connector source code can be found in [github.com/javier-sy/MusaLCEforLive](https://github.com/javier-sy/MusaLCEforLive).

The Bitwig Studio connector source code can be found in [github.com/javier-sy/MusaLCEforBitwig](https://github.com/javier-sy/MusaLCEforBitwig).

The Atom editor plugin source code can be found in [github.com/javier-sy/musa-dsl-atom-repl](https://github.com/javier-sy/musa-dsl-atom-repl).

# A suite of Ruby MIDI libraries

Open source suite of several components to add MIDI communications capabilities to Musa-DSL that also can be used in other Ruby projects independently of Musa-DSL.

This suite is a fork of of [Ari Russo](https://github.com/arirusso)'s libraries with some modifications and optimizations.

| Library | Function | 
| --- | --- |
| [MIDI Events](https://github.com/javier-sy/midi-events) | MIDI Events representation | 
| [MIDI Parser](https://github.com/javier-sy/midi-parser) | MIDI Data parsing | 
| [MIDI Communications](https://github.com/javier-sy/midi-communications) | MIDI communication with Instruments and Control Surfaces |  
| [MIDI Communications MacOS Layer](https://github.com/javier-sy/midi-communications-macos) | Low level MIDI interface to MacOS | 
| **TO DO** | Low level MIDI interface to Linux |  
| **TO DO** | Low level MIDI interface to JRuby |  
| **TO DO** | Low level MIDI interface to Windows |  
