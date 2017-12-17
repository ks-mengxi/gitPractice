#!/bin/bash

function getDayNum {
	local dayNum=$(git log | egrep "^Date:(\s)*$1" | wc -l)
	echo $dayNum
}

function countFrequentDay {
	local dayArray=(Sun Mon Tue Wed Thu Fri Sat)
	local freqDay=Sun
	local freqNum=$(getDayNum Sun)
	
	local currentDay
	for currentDay in ${dayArray[*]}
	do
		local currentDayNum=$(getDayNum $currentDay)
		if [[ $currentDayNum -gt $freqNum ]]
		then
			freqDay=$currentDay
			freqNum=$currentDayNum
		fi
	done

	echo $freqDay, $freqNum		
}
