#!/bin/sh

gracefulexit() {
	if test -f "$pidfile" ; then
		kill "$(cat "$pidfile")"
		rm "$pidfile"
	fi
	exit 0
}

trap gracefulexit term

pidfile="/xeyes.pid"
xeyes &
echo "$!" >"$pidfile"

while true ; do
	sleep 1
done
