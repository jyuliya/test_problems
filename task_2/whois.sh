#!/bin/bash
source_path=$1
type=$2
domen=$3
url="https://www.whois.com/whois/"

if [ ! -d "/$source_path" ]; then  mkdir "$source_path"; fi

if [[ "$type" == "file" ]]
then
while read LINE
    do  name=(${LINE//./_})
    	if [ ! -f "/$source_path/$name.html" ]; then  cat >  "/$source_path/$name.html"; fi
    	curl -o "$source_path/$name.html" "$url$LINE"
	done < "$domen"
fi

if [[ "$type" == "domain" ]]
then
name=(${domen//./_})
if ! test -f "$source_path/$name.html"; then  cat > "$source_path/$name.html"; fi
curl -o "$source_path/$name.html" "$url$domen"
fi

