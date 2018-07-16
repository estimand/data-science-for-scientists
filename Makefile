
all: 01_intro.pdf \
     02_ds_what_why_how.pdf \
     03_problem_statements.pdf \
     04_ds_process.pdf \
     05_ds_skills.pdf \
     06_ds_career_planning.pdf \
     07_wrapup.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex" -use-make $<

clean:
	latexmk -CA

