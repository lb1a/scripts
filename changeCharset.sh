#!/bin/bash
MOMENTARY_DIR=$(pwd)
if [ "$1" != "--debug" ]; then
CHOSEN_DIR=$1
cd $CHOSEN_DIR
for i in $(find . -name "*html"); do
	iconv -t utf8//IGNORE $i | sed -e 's/CHARSET=iso8859-1/CHARSET=UTF-8/g' > $i.1
	mv $i.1 $i
	echo $i" converted"
done
cd $MOMENTARY_DIR
else
cd $CHOSEN_DIR = $2
for i in $(find . -name "*html"); do
        echo $i
done

fi
