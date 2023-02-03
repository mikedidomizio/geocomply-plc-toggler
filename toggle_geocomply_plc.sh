#!/bin/bash

# the `launchctl` commands below need to be ran from the directory
cd /Library/LaunchAgents || exit 1

if [ ! -f com.GeoComply.PlayerLocationCheck.Agent.plist ]
then
    echo "PLC does not appear to be installed.  It needs to be installed before it can be toggled"
    exit 0
fi

PLC_PID=$(pgrep PlayerLocationCheck)

if [ -z "$PLC_PID" ]
then
  launchctl load com.GeoComply.PlayerLocationCheck.Agent.plist
  echo "PLC starting"
else
  launchctl unload com.GeoComply.PlayerLocationCheck.Agent.plist
  echo "PLC stopping"
fi
