# Things that control xsltproc
XSLT = docbook.xsl
XSLTOPTS = --xinclude

# Generic rebuilding rules
SUFFIXES = .xml .txt .html .pdf

.txt.xml:
	$(ASCIIDOC) -b docbook -d article $<

.txt.pdf:
	$(A2X) -d article -f pdf $<

.xml.html:
	$(XSLTPROC) $(XSLTOPTS) -o $@ $(XSLT) $<

# Use case document
USE_CASES = \
	uc0101-basic-hierarchy.txt \
	uc0102-design-reuse.txt \
    uc0103-design-integrity.txt \
    uc0104-design-unit.txt \
	uc0201-homogeneous-buses.txt \
	  uc0201-main.sch uc0201-subcircuit.sch \
	  uc0201-main.png uc0201-subcircuit.png \
	uc0202-composite-signal-types.txt \
	uc0401-subcircuit-annotation.txt \
	uc0701-line-endings.txt \
	uc9999-template.txt
use-cases.txt: $(USE_CASES) use-cases.sh Makefile
	$(SHELL) use-cases.sh $(USE_CASES) > $@

# Automake magic
EXTRA_DIST = $(USE_CASES) use-cases.sh docbook.xsl
noinst_DATA = use-cases.html use-cases.pdf

CLEANFILES = use-cases.html use-cases.pdf use-cases.xml
DISTCLEANFILES = use-cases.txt
