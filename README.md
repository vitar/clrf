# Couple Life Reflection Framework (CLRF)

Engineering toolkit: theory and practice for couples - a practical tool for diagnostics, vision, and change in relationships.

The book sources are written in Markdown and can be built into HTML/PDF.

The book website is published at [https://vitar.github.io/clrf/](https://vitar.github.io/clrf/).

## Structure
- `src/en` — English book version
- `src/lt` — Lithuanian book version
- `src/ru` — Russian book version
- `assets` — templates and images
- `mkdocs.yml` — Book site configuration
- `Makefile` — PDF build commands
- `.github/workflows/build.yml` — GitHub Actions CI build pipeline

## Quick start
```bash
pip install mkdocs mkdocs-material
sudo apt-get install -y pandoc wkhtmltopdf
make site
make pdf
```
