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

This exam will take 30 minutes to complete and includes 30 questions from
the introductory course with 10 questions in each subsection.

Questions may have more than one way of getting the correct answer.

Your time will start when a key is entered.
--------------------------------------------------------------------------
EOF
	read -n1 -r -p "Press any key to begin"
}

questions1() {
# The function question1 covers examination of the Linux environment.
	clear
	shuf -n 5 dataset1.md -o questions1.md 
	input="questions1.md"
	while IFS= read -r line
	do
  	echo "$line"
	echo
	done < "$input"
}

questions2() {
# The function question2 covers examination of environment modules and basic job submission.
        clear
        shuf -n 5 dataset2.md -o questions2.md 
        input="questions2.md"
        while IFS= read -r line
        do
        echo "$line"
        echo
        done < "$input"
}

questions3() {
# The function question2 covers examination of environment modules and basic job submission.
        clear
        shuf -n 5 dataset3.md -o questions3.md 
        input="questions3.md"
        while IFS= read -r line
        do
        echo "$line"
        echo
        done < "$input"
}

main() {
	introduction
	SECONDS=0
	questions1
	read -n1 -r -p "Press any key to finish section 1"
	questions2
	read -n1 -r -p "Press any key to finish section 2"
	questions3
	read -n1 -r -p "Press any key to finish section 3"
	clear
	duration=$SECONDS
	echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
}

main
exit 0
