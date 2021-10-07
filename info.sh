#!/bin/bash

## Collin Smith, purpose of this script is to take 2 arguments and output the name of the script, a usage message, date and time, name of user, name of current directory, name of the machine, name of login shell, contents of the required file, number of text lines, listing of the directory, number of parameters of the script, calendar for October of current year, disk usage, current number of users in system, and current time.
##1) This script will run with bash shell.
##

## Checks to make sure user has provided at least one argument.
if (( $# < 1 ));
  then
        echo "You need to provide at least one argument."
        exit 1
fi


## Tells user how to use script.
echo "Enter the file name for the first parameter."
echo "Enter the directory of that file as the second parameter."

## Shows the name of file and directory.
echo "The name of the file is $1"
echo "The name of the directory is $2"

## Displays date and username.
echo "Below is the current date and time."
date
echo "Below is your username."
whoami

## Displays current directory, machine info, and login shell.  Login shell might be inccrrect though.
echo "Below is your current working directory."
pwd
echo "Below is the machine information."
uname -a
echo "Below is the name of the login shell."
echo $SHELL

## Displays contents of the file and directory that were privded,the total number of arguments used for this script, and the number of lines in the file.
echo "Below is the contents of file which you provided."
cat $2$1
echo "This is the number of lines in that file."
wc -l $2$1
echo "These are the files in the directory you provided."
ls $2
echo "Below is the number of arguments you provided."
echo $#

## Displays calendar for October, 2019, disk usage, number of users online, and time.
echo "Below is the calendar for October of the current year."
cal 10 2019
echo "Below is the disk usage information."
df
echo "Below is the number of users currently online."
users | wc -w
echo "Below is the current time."
date +"%T"
