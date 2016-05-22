#!/bin/bash
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
LIGHTBLUE='\033[1;34m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NNC='\033[0m' # No Color

printf "${PURPLE}"
BEGIN=$(date +%s)
clear

while true; do
  NOW=$(date +%s)
  let DIFF=$(($NOW - $BEGIN))
  let MINS=$(($DIFF / 60))
  let SECS=$(($DIFF % 60))

  if [ $MINS == 2 ]; then
    printf "${BLUE}"
  elif [ $MINS == 4 ]; then
    printf "${LIGHTBLUE}"
  elif [ $MINS == 6 ]; then
    printf "${CYAN}"
  elif [ $MINS == 8 ]; then
    printf "${GREEN}"
  elif [ $MINS == 10 ]; then
    printf "${YELLOW}"
  elif [ $MINS == 12 ]; then
    printf "${ORANGE}"
  elif [ $MINS == 14 ]; then
    printf "${RED}"
  elif [ $MINS == 17 ]; then 
    printf "${NNC}"
    exit
  fi

  printf "\r\t\t%02d:%02d\t\t"  $MINS $SECS
  sleep 0.25
done
