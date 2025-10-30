# Neteera LaTeX Beamer Template

A professional Beamer presentation template with Neteera branding.

## Structure

- `template.tex` - Main template file with customizable variables
- `preamble.tex` - Beamer configuration and styling
- `title.tex` - Title slide and table of contents with automatic two-column layout
- `thank_you.tex` - Thank you slide content
- `test.tex` - Test file demonstrating template features

## Images

- `neteera_logo.png` - Company logo for slide footers
- `neteera_title.png` - Background image for title slide
- `neteera_thank_you.png` - Background for thank you slide

## Installation

Run the install script to set up the TEXINPUTS environment variable:
```bash
./install.sh
source ~/.bashrc
```

This allows projects anywhere on your system to find the template images without complex relative paths.

## Usage

1. Edit the variables in `template.tex`:
   - `\longtitle` - Full presentation title
   - `\shorttitle` - Abbreviated title for slide headers
   - `\myname` - Presenter name
   - `\whichdate` - Presentation date

2. Add your content between `\input{title.tex}` and `\input{thank_you.tex}`

3. Compile with pdflatex or your preferred LaTeX compiler

## Features

- Warsaw theme with custom Neteera colors
- Automatic logo placement on all slides
- "Confidential & Proprietary" footer
- Custom title slide with background image
- Professional color scheme (RGB 86,114,127)
- Automatic table of contents with two-column layout
- `\fullpageimage{filename}` command for large images that fit between title and footer