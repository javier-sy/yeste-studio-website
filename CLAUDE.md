# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Website of yeste.studio, a studio, lab & workshop for research and creation in sound and music. The site showcases algorithmic compositions, performances, PhD research materials, and MusaDSL (a domain-specific language for algorithmic composition).

Live site: https://yeste.studio/

## Build Commands

```bash
# Install dependencies
bundle install

# Local development server (http://localhost:4000)
bundle exec jekyll serve

# Production build
JEKYLL_ENV=production bundle exec jekyll build
```

Requirements: Ruby 3.4.5, Bundler 2.5

## Architecture

**Stack**: Jekyll 4.3.4 static site generator with SCSS, WaveSurfer.js audio players, GitHub Pages deployment.

**The theme is a sibling repository.** Shared look and behaviour live in
`../yeste-studio-theme` — including `assets/js/common.js`, which implements the
tab components and the theme toggle used here and on the product sites. A change
to a component that also appears on another yeste.studio site belongs there, not
in this repo; check before duplicating.

### Key Directories

- `_pages/` - Main content pages (Markdown)
- `_phd_music/` - Jekyll collection for PhD compositions (output to `/phd/materials/:title/`)
- `_events/` - Jekyll collection of dated appearances, rendered by `shows.md` and `teaching.md` (no pages of their own)
- `_layouts/` - HTML templates (`works.html` and `music.html` include WaveSurfer.js players)
- `_includes/` - Reusable components (`wavesurfer-player.html` for inline audio players)
- `_sass/` - ITCSS-structured stylesheets (0-settings, 1-tools, 2-base, 3-modules, 4-layouts)
- `_data/settings.yml` - Site config: menus, social links, contact email, GA4 measurement ID
- `_data/cookies.yml` - Cookie register: feeds the cookie policy's table and the consent version
- `audio/` - MP3 files (works/, phd/)
- `_plugins/soundcloud-plugin.rb` - Custom `{% soundcloud ID %}` Liquid tag

### Audio Player System

Two WaveSurfer.js implementations:
1. **Inline players** (`_includes/wavesurfer-player.html`) - Used in `works.md` via include
2. **Full-page player** (`_layouts/music.html`) - Individual PhD track pages

Both support: waveform visualization, play/pause, time display, volume control, loading indicator, dark mode colors.

### PhD Music Collection

Files in `_phd_music/` use this front matter structure:
```yaml
layout: music
title: "Composition Name"
composer: "yeste.studio"
duration: "HH:MM"
year: 2022
techniques: ["MusaDSL", "SuperCollider"]
audio_file: "/audio/phd/file.mp3"
image_file: "/images/phd/artwork.jpg"
soundcloud_url: "https://soundcloud.com/..."
github_code: "https://github.com/..."
```

### Events Collection

`_events/` holds every dated appearance (concert, premiere, talk, lecture, panel), one
file per event (`YYYY-MM-DD-slug.md`, `output: false`). `shows.md` and `teaching.md` are
two views of the same collection: each lists the events that have activities of its kinds
(`performance` for shows; `course` for the teaching page's *Docencia* block; `talk`, `lecture`, `panel` for its talks) through
`_includes/event.html`, and links to the other page when the event also has the other kind.
Dates are real YAML dates: ordering and the `dd-mm-yyyy` display belong to the include.

```yaml
title: "Estreno de Espiral, conferencia y charla"
date: 2022-11-23
date_precision: month     # only when just the month is known; date then holds the 1st
date_label: "2021-22 - hoy" # ongoing: shown instead of the date, which only orders
place: "Facultad de Bellas Artes, Universidad del País Vasco"
city: "Leioa (Bizkaia)"
image: /images/shows/....jpg
intro: |                  # optional, shown under the title on every view
activities:
  - kind: performance
    title: "Espiral, variante 6, estreno original en 16 canales"
    work: espiral         # slug of the _works/ document: gives author, year and the online link
    duration: "16:50"     # of the performed version (the work's own is the online one)
    online: "reducción estéreo binaural del original en 16 canales"
    text: |
  - kind: talk
    title: "..."
    image: ...            # optional
    text: |
```

### Brand Assets

`_includes/brand/lockup.svg` (the header) and the favicon set at the site root are generated
from the brand masters by `../yeste-studio-theme/scripts/sync-brand.sh`; never edit them by hand.

### Analytics and Cookie Consent

Google Analytics loads only after the visitor accepts, through the consent bar
(`_includes/cookie-consent.html`, `js/consent.js`, `_sass/3-modules/_cookie-consent.scss`).
Those three files and `_includes/cookies-table.html` are copies of the theme's, refreshed by
`../yeste-studio-theme/scripts/sync-consent.sh`: edit them in the theme, then run it. The
consent cookie is shared by the four sites on `.yeste.studio`; its contract, the legal
requirements and the verification steps are in `../yeste-studio-theme/docs/cookie-consent.md`.
`_data/cookies.yml` is this site's own register (it adds `classView`): a change to a
non-exempt entry bumps its `version` so every visitor is asked again.

### Third-party resources

None at page load: fonts (`assets/fonts`, `_sass/0-settings/_fonts.scss`) and Ionicons
(`assets/vendor/ionicons`) are copies of the theme's, refreshed by
`../yeste-studio-theme/scripts/sync-vendor.sh`; WaveSurfer.js is this site's own copy in
`assets/vendor/wavesurfer` (pinned version, BSD-3). A visitor's browser contacts only GitHub
Pages and, after accepting cookies, Google Analytics. Don't add a CDN script or font without
revisiting `../yeste-studio-theme/docs/cookie-consent.md`.

### Styling

CSS custom properties enable dark/light mode (`_sass/0-settings/_color-scheme.scss`). Brand color: `#279b44` (`--brand-color`; `--brand-color-text` is the same hue darkened for text on light backgrounds). Theme toggle persists via localStorage.

## Deployment

Automated via GitHub Actions (`.github/workflows/github-pages.yml`). Push to `main` triggers build and deploy to GitHub Pages.

## Content Guidelines

- Audio files: MP3 format, 320kbps quality
- Site language: Mixed Spanish/English (Spanish for legal pages, PhD thesis; English for works, bio)
- MusaDSL documentation lives at external site musadsl.yeste.studio
