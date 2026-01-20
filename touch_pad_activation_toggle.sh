#!/bin/bash
DEV="ELAN06FA:00 04F3:32B9 Touchpad"

STATE=$(xinput list-props "$DEV" | grep "Device Enabled" | awk '{print $4}')

if [ "$STATE" -eq 1 ]; then
    xinput disable "$DEV"
else
    xinput enable "$DEV"
fi
