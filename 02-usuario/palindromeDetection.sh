#!/bin/bash 

regex="/.txt?$"

if [[ $1 =~ $regex ]]; then 

	for word in $( cat $1 ) do
		if [ "$word" == "$(rev $word)" ]; then
			echo "$word es palíndromo."
		fi
	done

# echo -n "$str" | tac -s' '

			

