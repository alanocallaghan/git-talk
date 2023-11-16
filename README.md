# git-talk

You can render the presentations using `make all`. They're split among three files

First you need to [install R](https://cran.r-project.org/) and a few packages:

- xaringan
- rmarkdown
- knitr

To do this, you'd run (from R)

```r
install.packages(c("rmarkdown", "xaringan", "knitr"))
```

To render an individual presentation, you could run this in R:

```r
rmarkdown::render("git-intro-1.Rmd")
```

This will create a `git-intro-1.html` file.
