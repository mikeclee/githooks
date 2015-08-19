#!/usr/bin/env bash

read -p "Have you run all relevant tests, are you ready to continue the push? (y/n) " -n 1 -r < /dev/tty userInput
echo # Blank line

if [[ $userInput =~ ^[Yy] ]]
then
  exit 0 # Success
fi

exit 1 # Defalut fail
