RMD := $(wildcard *.Rmd)
HTML := $(RMD:.Rmd=.html)

all: $(HTML)

%.html: %.Rmd $(shell find figure/ -type f)
	r -e 'rmarkdown::render("$<")'
