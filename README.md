# CL/RF — Couple Life Reflection Framework

Engineering toolkit: theory and practice for couples. Sources are written in Markdown and can be built into HTML/PDF/DOCX.

## Structure
- `src/en` — English version (theory + practice)
- `src/lt` — Lithuanian version (theory + practice)
- `src/ru` — Russian version (theory + practice)
- `assets` — templates and images
- `dist` — build artifacts (generated)
- `mkdocs.yml` — documentation site configuration
- `Makefile` — local build commands
- `.github/workflows/build.yml` — CI build pipeline

## Quick start
```bash
pip install mkdocs mkdocs-material
sudo apt-get install -y pandoc wkhtmltopdf   # or weasyprint
make site
make pdf
make docx
```
