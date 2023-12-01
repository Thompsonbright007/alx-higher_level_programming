#!/bin/bash;
# Send GET request and display body for 200 status
[ $# -eq 0 ] && { echo "Usage: $0 <URL>"; exit 1; }; response=$(curl -s -w "%{http_code}" "$1"); [ "$(tail -n 1 <<< "$response")" == "200" ] && echo "$(head -c -4 <<< "$response")" || echo "Error: HTTP status code $(tail -n 1 <<< "$response")"
