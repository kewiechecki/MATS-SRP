srp.pdf: build/srp.bbl
	xelatex -output-directory=build srp.tex
	mv build/srp.pdf .

build/srp.bbl: build/srp.bcf
	biber build/srp

build/srp.bcf: build srp.tex
	xelatex -output-directory=build srp.tex

build:
	mkdir build

clean:
	rm -rf build
