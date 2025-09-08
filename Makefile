# -------- Settings --------
LANGS := en lt ru
NAME := clrf
OUTDIR := dist/pdf

PDF_ENGINE := wkhtmltopdf
PDF_ENGINE_OPTS := \
	--page-size A4 \
	--margin-top 15mm \
	--margin-right 12mm \
	--margin-bottom 18mm \
	--margin-left 12mm

PDF_CSS := pdf.css
CSS_FLAG := $(if $(PDF_CSS),-c $(PDF_CSS),)

# -------- Chapters once (language-agnostic) --------
# List every md path once as it appears under each language directory.
COMMON_MD := \
	index.md \
	theory/01-preface.md \
	theory/10-intro.md \
	theory/20-conditions.md \
	theory/30-needs.md \
	theory/40-functions.md \
	theory/50-links.md \
	theory/60-vision.md \
	theory/70-changes.md \
	theory/80-priorities-strategy.md \
	theory/90-practices-toolbox.md \
	theory/99-outro.md \
	practice/p01-conditions-checklist.md \
	practice/p02-needs-checklist.md \
	practice/p03-functions-checklist.md \
	practice/p04-diagnostic-light.md \
	practice/p05-individual-vision.md \
	practice/p06-change-table.md \
	practice/p07-priority-matrix.md \
	practice/p08-retrospective.md \
	practice/p09-raci.md \
	practice/p10-rituals-map.md \
	practice/p11-personal-functions.md \
	practice/p12-shared-vision.md
	changelog.md

# -------- Outputs --------
PDFS := $(foreach L,$(LANGS),$(OUTDIR)/$(NAME)-$(L).pdf)

.PHONY: all pdf clean
all: pdf
pdf: $(PDFS)

# -------- Pattern rule: build any language PDF --------
# Uses $* (the stem) to expand 'src/<lang>/' for the same COMMON_MD list.
$(OUTDIR)/$(NAME)-%.pdf:
	@mkdir -p $(OUTDIR)
	pandoc $(addprefix src/$*/,$(COMMON_MD)) \
		--pdf-engine=$(PDF_ENGINE) \
		$(foreach opt,$(PDF_ENGINE_OPTS),--pdf-engine-opt=$(opt)) \
		$(CSS_FLAG) \
		-o $@

clean:
	rm -rf $(OUTDIR)
