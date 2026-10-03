#!/usr/bin/env python3
"""Writes the waveform of every mp3 under audio/ beside it, as <name>.json.

    scripts/audio-peaks.py [file.mp3 ...]

The players draw the waveform from this file and fetch the audio only when the visitor plays
it; without it they would download and decode each mp3 just to draw it. Run it after adding or
replacing an mp3 (needs ffmpeg). The JSON holds the duration in seconds and 2000 peaks: the
largest absolute sample of each slice, mono, between 0 and 1.
"""
import array
import json
import pathlib
import subprocess
import sys

PEAKS = 2000
RATE = 8000  # enough to find the peaks of each slice; keeps decoding fast

root = pathlib.Path(__file__).resolve().parent.parent
files = [pathlib.Path(f) for f in sys.argv[1:]] or sorted((root / "audio").rglob("*.mp3"))

for mp3 in files:
    pcm = subprocess.run(
        ["ffmpeg", "-v", "error", "-i", str(mp3), "-ac", "1", "-ar", str(RATE), "-f", "s16le", "-"],
        check=True, capture_output=True,
    ).stdout
    samples = array.array("h", pcm)
    duration = len(samples) / RATE
    size = max(1, len(samples) // PEAKS)
    peaks = [
        round(max(abs(s) for s in samples[i:i + size]) / 32768, 3)
        for i in range(0, size * PEAKS, size)
        if samples[i:i + size]
    ]
    out = mp3.with_suffix(".json")
    out.write_text(json.dumps({"duration": round(duration, 3), "peaks": peaks}, separators=(",", ":")))
    print(f"{out.relative_to(root)}: {duration:.1f} s, {len(peaks)} peaks")
