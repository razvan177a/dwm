#!/bin/bash

GOV=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

if [ "$GOV" = "performance" ]; then
	st -e sudo auto-cpufreq --force "powersave"
else
	st -e sudo auto-cpufreq --force "performance"
fi
	

