---
layout: music
title: "2019-01-22 Estudio para Clave nº1"
composer: "Javier Sánchez Yeste"
duration: "0:46"
year: 2019
techniques:
  - "MusaDSL"
  - "Composición algorítmica"
  - "Gramática generativa"
  - "Neumalang"
audio_file: "/audio/phd/estudio-para-clave-n1.mp3"
description: "Exploración de gramáticas generativas aplicadas a características perceptivas de la música barroca para clavicordio. Implementado con neumalang y con el módulo REPL."
soundcloud_url: "https://soundcloud.com/yeste-studio/estudio-para-clave-n1/s-s0wCGugXT3G"
genre: "Experimental / Generative / Contemporary Classical"
private: true
---

## Concepto: Gramáticas Generativas y Música Barroca

En esta pieza quería investigar la relación entre algunas características perceptivas de la **música del barroco para clavicordio** y las **gramáticas generativas**.

La aproximación consistía en formalizar patrones compositivos barrocos mediante reglas gramaticales que pudieran generar material musical coherente con características estilísticas del período.

## Herramientas Técnicas

### Neumalang (EDSL)

Utilicé el sublenguaje **neumalang**, un EDSL (Embedded Domain Specific Language) de MusaDSL que permite definir material musical mediante una notación textual compacta.

Ejemplo de definición de motivos en neumalang:
```ruby
a = '{ puts "motif a" } [ (+0 1) (+0 st) (+1) (+1) (. /2) (-1)
      ::next (.) (-2 st) (+1 *2) ]'.nn

b = '{ puts "motif b" } [ (+0 /· tr(low2)) (+3 //) (-1 /) (-1 st) (-1 st)
      (-1 mor(up)) (+1 st) (+1 *2) (+1 /2) (-1 *2) ::next (-1) ]'.nn
```
&nbsp;
### Módulo de Gramática Generativa

Implementé un módulo de gramática generativa en MusaDSL v0.14.33 (diciembre de 2019) que permite:
- Definir reglas de producción gramatical
- Generar estructuras musicales mediante aplicación recursiva de reglas
- Controlar la complejidad y variedad del material generado

## Estructura de la Pieza

La composición se estructura mediante:

1. **Definición de motivos base** usando neumalang
2. **Reglas de transformación** mediante gramática generativa
3. **Eventos** (`launch :next`, `on :next`) para control de flujo
4. **Fases compositivas**:
   - Fase inicial con motivos a y b
   - Modulaciones armónicas mediante cambios de base
   - Fase de cierre con motivo c
   - Desarrollo final con motivo d

## Desarrollo Técnico

**Versión de MusaDSL**: v0.14.33 (diciembre de 2019)

**Componentes utilizados**:
- Neumalang (EDSL)
- Módulo de gramática generativa
- Módulo REPL
- Sistema de eventos (launch/on)

---

*Pieza compuesta el 22 de enero de 2019 usando MusaDSL v0.14.33 (diciembre 2019).*
