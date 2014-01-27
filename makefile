all: doc test

doc: doc/manual.six

doc/manual.six: makedoc.g \
		PackageInfo.g \
		doc/Intros.autodoc \
		doc/BoijSoederberg.bib \
		gap/*.gd gap/*.gi examples/*.g examples/doc/*.g
	        gap makedoc.g

clean:
	(cd doc ; ./clean)

test:	doc
	gap maketest.g

archive: test
	(mkdir -p ../tar; cd ..; tar czvf tar/BoijSoederberg.tar.gz --exclude ".DS_Store" --exclude "*~" BoijSoederberg/doc/*.* BoijSoederberg/doc/clean BoijSoederberg/gap/*.{gi,gd} BoijSoederberg/{PackageInfo.g,README,COPYING,VERSION,init.g,read.g,makedoc.g,makefile,maketest.g} BoijSoederberg/examples/*.g BoijSoederberg/examples/doc/*.g)

#WEBPOS=public_html
#WEBPOS_FINAL=~/Sites/homalg-project/BoijSoederberg

towww: archive
	echo '<?xml version="1.0" encoding="UTF-8"?>' >${WEBPOS}.version
	echo '<mixer>' >>${WEBPOS}.version
	cat VERSION >>${WEBPOS}.version
	echo '</mixer>' >>${WEBPOS}.version
	cp PackageInfo.g ${WEBPOS}
	cp README ${WEBPOS}/README.BoijSoederberg
	cp doc/manual.pdf ${WEBPOS}/BoijSoederberg.pdf
	cp doc/*.{css,html} ${WEBPOS}
	rm -f ${WEBPOS}/*.tar.gz
	mv ../tar/BoijSoederberg.tar.gz ${WEBPOS}/BoijSoederberg-`cat VERSION`.tar.gz
	rm -f ${WEBPOS_FINAL}/*.tar.gz
	cp ${WEBPOS}/* ${WEBPOS_FINAL}
	ln -s BoijSoederberg-`cat VERSION`.tar.gz ${WEBPOS_FINAL}/BoijSoederberg.tar.gz

