#!/bin/bash

# https://github.com/zlsun/dotfiles/blob/master/files/bin/i3blocks-mpd

SHOWNAME_PATH=~/.config/i3/i3block-mpd-showname

exec-mpc() {
    mpc $* &> /dev/null
}

showname=$([ -f $SHOWNAME_PATH ] && cat $SHOWNAME_PATH || echo 0)

case $BLOCK_BUTTON in
  1) exec-mpc toggle ;;
  2) showname=$((!$showname)); echo $showname > $SHOWNAME_PATH ;;
  3) exec-mpc stop   ;;
  4) exec-mpc 'volume +5' ;;
  5) exec-mpc 'volume -5' ;;
  6) exec-mpc pre    ;;
  7) exec-mpc next   ;;
esac

playing=
 paused=
stopped=

if [ $showname = '1' ]; then
  mpc current | awk -F ' - ' '{printf "［%s / %s ］", $1, $2}'
fi

status=$(mpc status | sed -n 's/^\[\([^])]*\)\].*$/\1/p')
case $status in
  playing) echo -n $playing ;;
  paused)  echo -n $paused  ;;
  *)       echo -n $stopped ;;
esac