# Things that control xsltproc
XSLT = docbook.xsl
XSLTOPTS = --xinclude

# Generic rebuilding rules
SUFFIXES = .xml .txt .html

.txt.xml:
	$(ASCIIDOC) -b docbook -d book $<

.xml.html:
	$(XSLTPROC) $(XSLTOPTS) -o $@ $(XSLT) $<

# Use case document
USE_CASES = \
	uc9999-template.txt
use-cases.txt: $(USE_CASES) use-cases.sh Makefile
	@$(SHELL) use-cases.sh $(USE_CASES) > $@.new; \
	if diff $@ $@.new > /dev/null 2>&1; then \
	  echo "$@ is unchanged"; \
	  rm $@.new; \
	else \
	  echo "Recreating $@"; \
	  mv $@.new $@; \
	fi

# Automake magic
EXTRA_DIST = $(USE_CASES) use-cases.sh docbook.xsl
noinst_DATA = use-cases.html

DISTCLEANFILES = use-cases.txt
