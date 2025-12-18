# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website for Javier Sánchez Yeste, a sound artist and musician. The site showcases algorithmic compositions, performances, PhD research materials, and MusaDSL (a domain-specific language for algorithmic composition).

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

### Key Directories

- `_pages/` - Main content pages (Markdown)
- `_phd_music/` - Jekyll collection for PhD compositions (output to `/phd/materials/:title/`)
- `_layouts/` - HTML templates (`works.html` and `music.html` include WaveSurfer.js players)
- `_includes/` - Reusable components (`wavesurfer-player.html` for inline audio players)
- `_sass/` - ITCSS-structured stylesheets (0-settings, 1-tools, 2-base, 3-modules, 4-layouts)
- `_data/settings.yml` - Site config: menus, social links, contact email, analytics ID
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
composer: "Javier Sánchez Yeste"
duration: "HH:MM"
year: 2022
techniques: ["MusaDSL", "SuperCollider"]
audio_file: "/audio/phd/file.mp3"
image_file: "/images/phd/artwork.jpg"
soundcloud_url: "https://soundcloud.com/..."
github_code: "https://github.com/..."
```

### Styling

CSS custom properties enable dark/light mode (`_sass/0-settings/_color-scheme.scss`). Brand color: `#5e3aee`. Theme toggle persists via localStorage.

## Deployment

Automated via GitHub Actions (`.github/workflows/github-pages.yml`). Push to `main` triggers build and deploy to GitHub Pages.

## Content Guidelines

- Audio files: MP3 format, 320kbps quality
- Site language: Mixed Spanish/English (Spanish for legal pages, PhD thesis; English for works, bio)
- MusaDSL documentation lives at external site musadsl.yeste.studio
