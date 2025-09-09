# > CL/RF _ Couple Life Reflection Framework

Engineering toolkit: theory and practice for couples - a practical tool for diagnostics, vision, and change in relationships.

Sources are written in Markdown and can be built into HTML/PDF.

The book website is published at [https://vitar.github.io/clrf/](https://vitar.github.io/clrf/).

## Structure
- `src/en` — English version
- `src/lt` — Lithuanian version
- `src/ru` — Russian version
- `assets` — templates and images
- `mkdocs.yml` — documentation site configuration
- `Makefile` — local build commands
- `.github/workflows/build.yml` — CI build pipeline

## Quick start
```bash
pip install mkdocs mkdocs-material
sudo apt-get install -y pandoc wkhtmltopdf   # or weasyprint
make site
make pdf
```
