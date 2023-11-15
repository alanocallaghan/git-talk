RMD := $(wildcard *.Rmd)
HTML := $(RMD:.Rmd=.html)
.PHONY: fake

all: $(HTML) fake

%.html: %.Rmd $(shell find figure/ -type f)
	r -e 'rmarkdown::render("$<")'

fake:
	echo "there's even changes here...?"
