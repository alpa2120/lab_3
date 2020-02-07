#!/bin/bash
# Authors : Alex Palo
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: " # Prompt user for a filename
read file_name # Read filename input
echo "Enter a regular expression: " # Prompt user for a regex
read regex_expression # Read regex input

#Problem 2 Code:
grep $regex_expression $file_name # Using grep execute regex on filename

#Problem 3 Code:
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt # Count phone numbers in file
# [0-9]\{3\} Find three digits in a row
# - Then find a dash
# [0-9]\{3\} Three more digits in a row
# - Then find another dash
# [0-9]\{4\} Four digits in a row

#Problem 4 Code:
grep -c '.*@.*\.' regex_practice.txt
# .* Find any number characters
# Followed by @ character
# .* Followed by any number of characters
# \. Followed by a period

grep -o '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt
# 303- Find 303 followed by a dash
# [0-9]\{3\} Followed by 3 digits
# - Followed by dash
# [0-9]\{4\} Followed by 4 digits

grep "@geocities.com" regex_practice.txt >> email_results.txt
# "@geocities.com" regex_practice.txt Find the emails in the file
# >> email_results.txt Append the found emails to the write file

