#!/usr/bin/env bash
# File: guessinggame.sh
function guess_nb_files {
  echo "Guess how many files are in the current directory:"
  read response
  echo $response
}
nbFiles=`ls --format=single-column | wc -l`
found=0
while [[ $found -ne 1 ]]
do
  guess_nb_files
  if [[ $response -eq $nbFiles ]]
  then
    echo "Congratulations your answer is correct"
    let found=1
  elif  [[ $response -gt $nbFiles ]]
  then
    echo "Sorry your answer $response is too high. Try again."
  else
    echo "Sorry your answer $response is too low. Try again."
  fi
done
