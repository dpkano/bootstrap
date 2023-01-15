#!/bin/bash

isCurrent=$1
statusBgColor=$2
theI=$3
theW=$4
theF=$5

activeColor="colour15"
inactiveColor="colour237"
prevColor="colour243"
black="colour16"
alarmColor="colour9"
wrappingColor=$inactiveColor
textColor=$black
if [ "$isCurrent" == "yes" ]; then
    wrappingColor=$activeColor
else
    textColor=$black
    if [[ $theF == *"-"* ]]; then
        wrappingColor=$prevColor
    fi
    if [[ $theF == *"#"* ]]; then
        textColor=$alarmColor
    fi
fi
prefix="#[fg=${statusBgColor},bg=${wrappingColor}]"
suffix="#[fg=${wrappingColor},bg=${statusBgColor}]"
echo -n "${prefix}#[fg=${textColor},bg=$wrappingColor]${theI}:${theW}${suffix}"
