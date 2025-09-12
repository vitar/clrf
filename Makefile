BOOK_EN=\
	src/en/index.md \
	src/en/theory/01-preface.md \
	src/en/theory/10-intro.md \
	src/en/theory/20-conditions.md \
	src/en/theory/30-needs.md \
	src/en/theory/40-functions.md \
	src/en/theory/50-links.md \
	src/en/theory/60-vision.md \
	src/en/theory/70-changes.md \
	src/en/theory/80-priorities-strategy.md \
	src/en/theory/90-practices-toolbox.md \
	src/en/theory/99-outro.md \
	src/en/practice/p01-conditions-checklist.md \
	src/en/practice/p02-needs-checklist.md \
	src/en/practice/p03-functions-checklist.md \
	src/en/practice/p04-diagnostic-light.md \
	src/en/practice/p05-individual-vision.md \
	src/en/practice/p06-change-table.md \
	src/en/practice/p07-priority-matrix.md \
	src/en/practice/p08-retrospective.md \
	src/en/practice/p09-raci.md \
	src/en/practice/p10-rituals-map.md \
	src/en/practice/p11-personal-functions.md \
	src/en/practice/p12-shared-vision.md \
	src/en/changelog.md

BOOK_LT=\
	src/lt/index.md \
	src/lt/theory/01-preface.md \
	src/lt/theory/10-intro.md \
	src/lt/theory/20-conditions.md \
	src/lt/theory/30-needs.md \
	src/lt/theory/40-functions.md \
	src/lt/theory/50-links.md \
	src/lt/theory/60-vision.md \
	src/lt/theory/70-changes.md \
	src/lt/theory/80-priorities-strategy.md \
	src/lt/theory/90-practices-toolbox.md \
	src/lt/theory/99-outro.md \
	src/lt/practice/p01-conditions-checklist.md \
	src/lt/practice/p02-needs-checklist.md \
	src/lt/practice/p03-functions-checklist.md \
	src/lt/practice/p04-diagnostic-light.md \
	src/lt/practice/p05-individual-vision.md \
	src/lt/practice/p06-change-table.md \
	src/lt/practice/p07-priority-matrix.md \
	src/lt/practice/p08-retrospective.md \
	src/lt/practice/p09-raci.md \
	src/lt/practice/p10-rituals-map.md \
	src/lt/practice/p11-personal-functions.md \
	src/lt/practice/p12-shared-vision.md \
	src/lt/changelog.md

BOOK_RU=\
	src/ru/index.md \
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
	src/ru/theory/99-outro.md \
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
	src/ru/practice/p12-shared-vision.md \
	src/ru/changelog.md

all: site pdf

site:
	mkdocs build -d dist/site

pdf:
	mkdir -p dist/site/assets/pdf
	pandoc $(BOOK_EN) \
	-t html5 -s \
	--css=pdf.css \
	--pdf-engine=wkhtmltopdf \
	--pdf-engine-opt=--page-size \
	--pdf-engine-opt=A4 \
	--pdf-engine-opt=--margin-top \
	--pdf-engine-opt=15mm \
	--pdf-engine-opt=--margin-right \
	--pdf-engine-opt=12mm \
	--pdf-engine-opt=--margin-bottom \
	--pdf-engine-opt=18mm \
	--pdf-engine-opt=--margin-left \
	--pdf-engine-opt=12mm \
	-o dist/site/assets/pdf/clrf-en.pdf
	pandoc $(BOOK_LT) \
	-t html5 -s \
	--css=pdf.css \
	--pdf-engine=wkhtmltopdf \
	--pdf-engine-opt=--page-size \
	--pdf-engine-opt=A4 \
	--pdf-engine-opt=--margin-top \
	--pdf-engine-opt=15mm \
	--pdf-engine-opt=--margin-right \
	--pdf-engine-opt=12mm \
	--pdf-engine-opt=--margin-bottom \
	--pdf-engine-opt=18mm \
	--pdf-engine-opt=--margin-left \
	--pdf-engine-opt=12mm \
	-o dist/site/assets/pdf/clrf-lt.pdf
	pandoc $(BOOK_RU) \
	-t html5 -s \
	--css=pdf.css \
	--pdf-engine=wkhtmltopdf \
	--pdf-engine-opt=--page-size \
	--pdf-engine-opt=A4 \
	--pdf-engine-opt=--margin-top \
	--pdf-engine-opt=15mm \
	--pdf-engine-opt=--margin-right \
	--pdf-engine-opt=12mm \
	--pdf-engine-opt=--margin-bottom \
	--pdf-engine-opt=18mm \
	--pdf-engine-opt=--margin-left \
	--pdf-engine-opt=12mm \
	-o dist/site/assets/pdf/clrf-ru.pdf

clean:
	rm -rf dist