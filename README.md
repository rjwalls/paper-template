paper-template
==============

A generic starting template for writing research papers.

Checkout this repository using the following command to ensure that the git
submodules are loaded properly. I use Ben Ransford's [excellent Makefile][ben].

[ben]:https://github.com/ransford/pdflatex-makefile

```bash
git clone --recursive git@github.com:rjwalls/paper-template.git
```

You'll want to change the remote URL using:

```bash
git remote set-url origin git@github.com:USERNAME/NEW-REPO-NAME.git
```

# Misc. Commands

## Balance Columns

Use `\vfill\eject` to force content to the next column. This is especially
useful for balancing out the references on the final page. Just make sure to
edit the .BBL file (you may want to move the BBL contents to the main.tex
file because the BBL isn't tracked in the repository). 

## Embed Fonts

Use:

```bash
ps2pdf -dPDFSETTINGS=/prepress paper.pdf paper_camera.pdf
```

Check the results with (look for the emb column):
```bash
pdffonts paper_camera.pdf
```

Note, you can get `pdffonts` from `Poppler` and Homebrew using:
```bash
brew install poppler
```

## Make PS from PDF

```bash
pdf2ps paper_camera.pdf paper_camera.ps
```

## Make single TeX source file

Removes comments too!

```bash
latexpand paper.tex > paper_camera.tex
```

Get `latexpand` [here](https://gitorious.org/latexpand).

## Useful utils

See Marc's [blog
post](http://people.cs.umass.edu/~liberato/blog/2013/01/19/miscellaneous-latex-slash-bibtex-tools/) for a list of useful latex utilities.


## Gotchas

Make sure to have a reference cited in your .tex file (in-text citation, e.g. \cite{Walls:2011a}) otherwise this will not compile, even if you have entries in your bib file.
