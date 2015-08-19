#!/usr/bin/env bash

# Check for the following text in the source for HEAD
tabbo_words="DONT PUSH ME"

taboo_found=`git grep --color "$taboo_words" HEAD`
if [ -n "$taboo_found" ]
then
    # Display the first occurence/commit of the taboo word(s) was found
    commit=`git log --pretty=format:'%Cred%h%Creset' -S "$taboo_words" | tail -n1`
    echo "Found $taboo_found, first occurence was in $commit, not pushing"
    exit 1
fi
exit 0

