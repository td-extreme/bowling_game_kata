#!/usr/bin/env bash
clear
echo "Bowling Game Kata (Java)"
lastGame="$(stat -f %Sm -t %S Game.java)"
lastTest="$(stat -f %Sm -t %S BowlingGameTest.java)"
while [ true ]; do
  currentGame="$(stat -f %Sm -t %S Game.java)"
  currentTest="$(stat -f %Sm -t %S BowlingGameTest.java)"
  if [ $lastGame != $currentGame ]
  then 
    make clean
    sh ./test.sh
    lastGame="$(stat -f %Sm -t %S Game.java)"
  fi

  if [ $lastTest != $currentTest ]
  then 
    make clean
    sh ./test.sh
    lastTest="$(stat -f %Sm -t %S BowlingGameTest.java)"
  fi
  sleep 2
done


