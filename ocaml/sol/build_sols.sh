#!/usr/bin/env bash

echo "open Core"
echo "let all : (int, (module Solution.S)) List.Assoc.t = ["

for file in $(find P*.ml); do
    number=$(echo "$file" | grep -o "[1-9]\d*")
    file=$(echo "$file" | cut -d. -f1)
    printf "    (%d, (module %s));\n" "$number" "$file"
done

echo "]"
