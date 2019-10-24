pdffile=`ls *.pdf`

for eachfile in $pdffile
do
	echo "$eachfile"
	docker run -ti --rm -v "$PWD":/pdf bwits/pdf2htmlex pdf2htmlEX --zoom 1.3 "$eachfile"
	name=$(echo "$eachfile" | cut -f 1 -d '.')
	echo "$name"
	mv "$name.html" html/
done

#docker run -ti --rm -v /home/workspace/workspace/text.legal/pilot/pdf:/pdf bwits/pdf2htmlex pdf2htmlEX --zoom 1.3 $FILE_NAME
