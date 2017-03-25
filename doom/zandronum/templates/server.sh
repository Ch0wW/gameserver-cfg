#!/bin/sh
#=========================================================
# Please modify the CFG, PORT, IWAD, and PWAD values from below.
# ADD_PARMS is optionnal.
#
# If you want to add multiple PWADs :
# PWAD="$HOME/zandronum/3ha2.wad $HOME/zandronum/bdoom20a.pk3"
#=========================================================
CFG="$HOME/zandronum/server.cfg"
PORT=10666
IWAD="$HOME/zandronum/DOOM2.WAD"
PWAD=""
ADD_PARMS=""
#=========================================================
CRASHCOUNT=0
MAXCRASH=10
ulimit -c 0
while (true)
do
	zandronum-server -port $PORT -iwad $IWAD -file $PWAD +exec $CFG $ADD_PARMS
	PID=$!
	trap "kill -15 $PID; exit 0" 15
	wait
	echo  `date '+%Y-%m-%d %H:%M:%S'` : zandronum crashed.
	CRASHCOUNT=`expr $CRASHCOUNT + 1`
	if [ $CRASHCOUNT -ge $MAXCRASH ]; then break; fi
	sleep 2
done

