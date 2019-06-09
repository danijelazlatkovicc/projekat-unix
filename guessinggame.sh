#!/usr/bin/env bash
function num_guess {
	flcnt=$(ls -l | wc -l)
	if [ $resp -eq $flcnt ]
	then 
		echo "Congratulations, your guess was right! "
		break
	elif [ $resp -gt $flcnt ]
	then 
		echo "Your guess is too high."
	else
		echo "Your guess is too low."
	fi
}

echo "Welcome!"
echo "Enter your guess: "
read resp
try='Y'
while [[ $try = 'Y' ]]
do 
	num_guess
	echo "Guess again: "
	read resp
done