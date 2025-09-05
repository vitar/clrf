# CL/RF — Couple Life Reflection Framework

Инженерный набор: теория + практики для пар. Исходники в Markdown, сборка в HTML/PDF/DOCX.

## Структура
- `src/ru` — русская версия (theory + practice)
- `assets` — шаблоны и изображения
- `dist` — артефакты сборки (генерируется)
- `mkdocs.yml` — сайт документации
- `Makefile` — локальная сборка
- `.github/workflows/build.yml` — CI сборка

## Быстрый старт
```bash
pip install mkdocs mkdocs-material
sudo apt-get install -y pandoc wkhtmltopdf   # либо weasyprint
make site
make pdf
make docx
```
