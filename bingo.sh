#!/bin/bash

# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$((RANDOM%75+1))
TEXT="The next number is, "

if (($NUMBER <= 15))
then 
    sleep 1
    echo $TEXT B:
    sleep 1
    echo $NUMBER
elif [[ $NUMBER -le 30 ]]
then
    sleep 1
    echo $TEXT I:
    sleep 1
    echo $NUMBER
elif (($NUMBER<46))
then
    sleep 1
    echo $TEXT N:
    sleep 1
    echo $NUMBER
elif [[ $NUMBER -lt 61 ]]
then 
    sleep 1
    echo $TEXT G:
    sleep 1
    echo $NUMBER
else
    sleep 1
    echo $TEXT O:
    sleep 1
    echo $NUMBER
fi