#!/bin/bash
file=$1
echo "Top 5 IP addresses with the most requsets:"
awk '{count[$1]++} END {for (word in count) print word, "- " count[word] " requests"}' "$file" | sort -rnk3 | head -n 5
echo
echo "Top 5 response status code:"
grep -oE ' [0-9]{3} ' "$file" | tr -d ' ' | sort | uniq -c |  sort -rn | while read count code; do echo "$code - $count requests"; done  | head -n 5
echo
echo "Top 5 most requested paths:"
awk -F'"' '{print $2}' "$file" | awk '{count[$2]++} END {for (path in count) print path, "- " count[path] " requests"}' | sort -rnk3 | head -n 5
echo
echo "Top 5 user agents:"
grep -oE '"[^"]*"$' "$file" | sed 's/^"//; s/"$//' | sort | uniq -c | sort -rn | head -n 5 | while read count ua; do echo "$ua - $count requests"; done
