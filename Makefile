# Settings
MAKEFILES=Makefile
JEKYLL=jekyll
SRC=$(wildcard *.md) $(wildcard */*.md)
DST=_site

# Controls
.PHONY : commands clean files
all : commands

## commands : show all commands.
commands :
	@grep -h -E '^##' ${MAKEFILES} | sed -e 's/## //g'

## serve    : run a local server.
serve :
	${JEKYLL} serve

## site     : build files but do not run a server.
site :
	${JEKYLL} build

## spell    : check spelling.
spell:
	@cat ${SRC} | aspell list | sort | uniq

## clean    : clean up junk files.
clean :
	@rm -rf ${DST}
	@find . -name .DS_Store -exec rm {} \;
	@find . -name '*~' -exec rm {} \;
