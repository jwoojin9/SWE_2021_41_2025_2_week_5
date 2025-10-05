#!/bin/bash

for file in files/*
do
  if [ -f "$file" ]; then
    filename=$(basename "$file")
    first_char=${filename:0:1}
    lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    mv "$file" "$lower_char/"
  fi
done