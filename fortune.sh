#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$((RANDOM % 6))

GET_FORTUNE(){
    
    if [[ ! $1 ]] # or if [[ -z $1 ]]
    then
        echo Ask a Yes or No question:
    else
        echo Try again. Make sure it ends with a question mark:
    fi
    read QUESTION
}
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]
do
    GET_FORTUNE again
done
echo ${RESPONSES[$N]}