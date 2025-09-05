THEORY_RU=\
  src/ru/theory/00-cover.md \
  src/ru/theory/01-preface.md \
  src/ru/theory/10-intro.md \
  src/ru/theory/20-conditions.md \
  src/ru/theory/30-needs.md \
  src/ru/theory/40-functions.md \
  src/ru/theory/50-links.md \
  src/ru/theory/60-vision.md \
  src/ru/theory/70-changes.md \
  src/ru/theory/80-priorities-strategy.md \
  src/ru/theory/90-practices-toolbox.md \
  src/ru/theory/99-outro.md

PRACTICE_RU=\
  src/ru/practice/p01-conditions-checklist.md \
  src/ru/practice/p02-needs-checklist.md \
  src/ru/practice/p03-functions-checklist.md \
  src/ru/practice/p04-diagnostic-light.md \
  src/ru/practice/p05-individual-vision.md \
  src/ru/practice/p06-change-table.md \
  src/ru/practice/p07-priority-matrix.md \
  src/ru/practice/p08-retrospective.md \
  src/ru/practice/p09-raci.md \
  src/ru/practice/p10-rituals-map.md \
  src/ru/practice/p11-personal-functions.md \
  src/ru/practice/p12-shared-vision.md

all: site pdf docx

site:
	mkdocs build -d dist/site

pdf:
	mkdir -p dist/pdf
	pandoc $(THEORY_RU) -o dist/pdf/clrf-ru-theory.pdf --toc --metadata title="CL/RF — Теория"
	pandoc $(PRACTICE_RU) -o dist/pdf/clrf-ru-practice.pdf --toc --metadata title="CL/RF — Практика"

docx:
	mkdir -p dist/docx
	pandoc $(THEORY_RU) -o dist/docx/clrf-ru-theory.docx --reference-doc=assets/templates/reference.docx --toc
	pandoc $(PRACTICE_RU) -o dist/docx/clrf-ru-practice.docx --reference-doc=assets/templates/reference.docx --toc

clean:
	rm -rf dist
