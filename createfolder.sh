#!/bin/bash

file=$1

while IFS= read -r folder_name; do
    if [ ! -d "$folder_name" ]; then
        mkdir "$folder_name"
        echo "Directory '$folder_name' created."
    else
        echo "Directory '$folder_name' already exists."
    fi
done < "$file"

echo "Directories created successfully."
