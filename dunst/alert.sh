#!/bin/bash

appname="$1"
summary="$2"
body="$3"

AUDIO_DIR=$HOME/.config/dunst/audio_files

# Convert match to lowercase
appname_case=$(echo "$appname" | tr '[:upper:]' '[:lower:]')
summary_case=$(echo "$summary" | tr '[:upper:]' '[:lower:]')
body_case=$(echo "$body" | tr '[:upper:]' '[:lower:]')

#paplay /home/altindas/.config/dunst/notify.wav

# by APPNAME ----------------------------------------------------------
if [[ $summary_case != "locking screen in 30 seconds" ]]
then
case $appname_case in
    # DEFAULT NOTIFICATIONS --
    *'brave'*|'firefox'*)
        paplay --volume 50000 $AUDIO_DIR/notify1.wav
        exit
        ;;

    *'spotify'*)
        paplay --volume 60000 $AUDIO_DIR/airplane.wav
        exit
        ;;

    *'dunstify'*)
        paplay $AUDIO_DIR/screenshot.wav
        exit
        ;;

    *'notify-send.sh'*)
        paplay --volume 45000 $AUDIO_DIR/notify.wav
        exit
        ;;

    *'kde connect'*)
        paplay --volume 80000 $AUDIO_DIR/ubuntu_fail.wav
        exit
        ;;
    *)
      paplay --volume 90000 $AUDIO_DIR/notification.wav
 # do nothing..
        ;;
esac
fi
# by SUMMARY -----------------------------------------------------------
case $summary_case in
    # ERROR MESSAGES --
    *'fail'*|*'error'*|*'warn'*)
        paplay --volume 55000 $AUDIO_DIR/warn.wav
        exit
        ;;
    *'screen'*)
        paplay --volume 55000 $AUDIO_DIR/warn.wav
        exit
        ;;
    *)
        # do nothing..
        ;;
esac

# by BODY --------------------------------------------------------------
case $body_case in
    # ERROR MESSAGES --
    *'fail'*|*'failure'*|*'has failed'*|*'error'*|*'warn'*)
        paplay --volume 55000 $AUDIO_DIR/warn.wav
        exit
        ;;
    *'success'*)
        paplay --volume 55000 $AUDIO_DIR/complete.wav
        exit
        ;;
    *)
        # do nothing..
        ;;
esac
exit
