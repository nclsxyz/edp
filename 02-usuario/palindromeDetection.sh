#!/bin/bash 

regex=".*\.txt$"

if [[ $1 =~ $regex ]]; then 
    for word in $(cat $1); do
        if [ "$word" == "$(echo $word | rev)" ]; then
            echo "$word es palíndromo."
        fi
    done
fi



			

