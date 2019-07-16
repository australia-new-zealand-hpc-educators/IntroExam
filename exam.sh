#!/bin/bash
# 
# This is an summative exam for Introduction to Linux and High Performance 
# Computing.
#
# Lev Lafayette, 2019

introduction() {
	clear
	cat << EOF
-------------------------------------------------------------------------
Welcome to the Introduction to Linux and HPC Exam!

This exam will take 60 minutes to complete and includes 60 questions from
the introductory course with 15 questions in each subsection.

Questions may have more than one way of getting the correct answer.

Your time will start when a key is entered.
--------------------------------------------------------------------------
EOF
	read -n1 -r -p "Press any key to begin"
}

questions() {
	clear
	shuf -n 3 dataset.md -o questions.md 
	input="questions.md"
	while IFS= read -r line
	do
  	echo "$line"
	echo
	done < "$input"
}


main() {
	introduction
	SECONDS=0
	questions
	read -n1 -r -p "Press any key to finish"
	clear
	duration=$SECONDS
	echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
}

main
exit 0
