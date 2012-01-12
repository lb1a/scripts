#!/bin/bash
MOMENTARY_DIR=$(pwd)
CHOSEN_DIR=$1
cd $CHOSEN_DIR
for i in $(find . -name "*.html"); do
	iconv -t utf8 $i | sed -e 's/CHARSET=iso8859-1/CHARSET=UTF-8/g' > $i.1
	mv $i.1 $i
	echo $i" converted"
done
