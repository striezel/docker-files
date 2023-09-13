#!/usr/bin/bash

if [ -z $1 ]
then
  echo You have to pass a URL as argument to the script.
  exit 1
fi

youtube-dl --restrict-filenames -o '%(title).50s-%(id)s.%(ext)s' "$1"
