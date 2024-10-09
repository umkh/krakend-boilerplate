#!/bin/sh

# Check if the krakend.json file exists
JSON_FILE="/etc/krakend/krakend.json"

if [ ! -f "$JSON_FILE" ]; then
    echo "File $JSON_FILE does not exist."
    exit 1
fi

printenv | while IFS='=' read -r v value; do
    if [ -n "$v" ]; then
        # echo "${v}=${value}"
        
        # Escape special characters in the value for sed
        ev=$(printf '%s\n' "$value" | sed 's/[\/&]/\\&/g')

        # Replace placeholders in the krakend.json file
        sed -i "s|${v}|${ev}|g" "$JSON_FILE"
    fi
done