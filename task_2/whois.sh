#!/bin/bash
source_path=$1
type=$2
domen=$3
url="https://www.whois.com/whois/"


if [[ "$type" -eq "domain" ]]
then
echo "$source_path/$type.html"
curl -o "$source_path/$type.html" "$url$domen"
fi

if [[ "$type" -eq "file" ]]
then
while read LINE
    do curl -o "$source_path/$type.html" "$url$LINE"
done < "$domen"
fi