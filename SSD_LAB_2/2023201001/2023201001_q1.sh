#!/bin/bash

read t
arr=()

read -r line
i=0

for x in $line; do
    arr[$i]=$x
    i=$((i+1))
done

for ((i = 0; i < $t; i++)); do
    if [ $((arr[i]%2)) -eq 1 ]; then  

       #for top to bottom printing
       for ((j = 1; j <=arr[i]; j=$((j+2)))); do
             temp=$(((arr[i]-j) /2))
             
             #for spaces
             for ((k = 0; k <$temp; k++)); do
                  printf " "
             done

             #for *'s
            for ((k = 0; k <$j; k++)); do
                  printf "*"
             done

             #for spaces
             for ((k = 0; k <$temp; k++)); do
                  printf " "
             done
           printf "\n"             
       done   #first main loop 
      
      #for bottom to top printing
       for ((j = arr[i]-2; j >=1 ; j=$((j-2)))); do
             temp=$(((arr[i]-j) /2))
             
             #for spaces
             for ((k = 0; k <$temp; k++)); do
                  printf " "
             done

             #for *'s
            for ((k = 0; k <$j; k++)); do
                  printf "*"
             done

             #for spaces
             for ((k = 0; k <$temp; k++)); do
                  printf " "
             done
           printf "\n"             
       done   #secondmain loop 

    fi
done
