#!/bin/bash
MOMENTARY_DIR=$(pwd)
CHOSEN_DIR=$1

cd $CHOSEN_DIR
for i in $(find . -name "*.html"); do
	recode -d ..html $i
	echo $i" converted"
done
cd $MOMENTARY_DIR
