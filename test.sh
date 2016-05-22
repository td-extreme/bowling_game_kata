#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
make Game.class
if [ $? != 0 ]; then
  exit
fi
make BowlingGameTest.class
if [ $? != 0 ]; then
  printf "${RED}**********************************************************\n"
  printf "${NC}"
  exit
fi

make run

if [ $? == 0 ]; then
  printf "${GREEN}**********************************************************\n"
else
  printf "${RED}**********************************************************\n"
fi
printf "${NC}"
