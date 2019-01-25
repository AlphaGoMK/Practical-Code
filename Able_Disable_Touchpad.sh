#!/bin/bash

output=$(xinput list-props 14 | grep Device\ Enabled)
if [[ "$output" =~ Device.Enabled.\(142\):.1 ]]
then
    xinput set-prop 14 'Device Enabled' 0
else
    xinput set-prop 14 'Device Enabled' 1
fi
