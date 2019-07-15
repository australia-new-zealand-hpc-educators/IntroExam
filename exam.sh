#!/bin/bash
# 
# This is an summative exam for Introduction to Linux and High Performance 
# Computing.
#
# Lev Lafayette, 20190715

questions() {
	shuf -n 3 dataset.md -o questions.md 
	input="questions.md"
	while IFS= read -r line
	do
  	echo "$line"
	done < "$input"
}


main() {
	SECONDS=0
	questions
	read -n1 -r -p "Press any key to continue"
	duration=$SECONDS
	echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
}

main
exit 0
