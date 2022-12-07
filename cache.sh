#!/bin/sh

session_cache=$XDG_CONFIG_HOME/zathura/cache
cache_session() {
    pids=$(pgrep zathura)

    touch $session_cache && truncate -s 0 $session_cache

    for pid in $pids; do
        dbus-send --session --print-reply --dest=org.pwmt.zathura.PID-$pid /org/pwmt/zathura org.freedesktop.DBus.Properties.Get string:"org.pwmt.zathura" string:"filename" | grep string | awk '{for (i=3; i<=NF; i++) printf("%s ", $i)}' >> $session_cache
    done
}

# trap "cache_session" WINCH

# cat $session_cache | xargs zathura-tabbed
#
cache_session
