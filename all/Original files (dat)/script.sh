#!/bin/bash
for f in *.dat; do
	echo "Processing $f file.."
	cat $f  | sed -r 's/^[ ]*//g' | sed -r 's/[ ]+/,/g' > $(basename "$f" .dat).csv
done
