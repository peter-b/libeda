# Things that control xsltproc
XSLT = docbook.xsl
XSLTOPTS = --xinclude

# Generic rebuilding rules
SUFFIXES = .xml .txt .html

.txt.xml:
	$(ASCIIDOC) -b docbook -d article $<

.xml.html:
	$(XSLTPROC) $(XSLTOPTS) -o $@ $(XSLT) $<

# Use case document
USE_CASES = \
	uc0101-basic-hierarchy.txt \
	uc0701-line-endings.txt \
	uc9999-template.txt
use-cases.txt: $(USE_CASES) use-cases.sh Makefile
	$(SHELL) use-cases.sh $(USE_CASES) > $@

# Automake magic
EXTRA_DIST = $(USE_CASES) use-cases.sh docbook.xsl
noinst_DATA = use-cases.html

CLEANFILES = use-cases.html use-cases.xml
DISTCLEANFILES = use-cases.txt
