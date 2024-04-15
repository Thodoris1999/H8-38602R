GHIDRADIR := ${HOME}/Documents/ghidra_10.4_DEV
PROCDIR := $(GHIDRADIR)/Ghidra/Processors/h8

build:
	$(GHIDRADIR)/support/sleigh -a $$PWD/data/languages

install:
	mkdir -p $(PROCDIR)/data/languages
	rsync -av --delete --exclude='*.xml' $$PWD/data/languages $(PROCDIR)/data/languages
	touch $(PROCDIR)/Module.manifest
