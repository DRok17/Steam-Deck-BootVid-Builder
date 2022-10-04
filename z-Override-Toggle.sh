#!/bin/bash
override="./1boot/override.txt"
#Check if Override is enabled
if [ -e $override ]
then
    #Disables Override
    rm Override-Enabled.txt
    rm $override
else
    #Enableds Override
    echo "Override-Enabled" > Override-Enabled.txt
    echo "Override-Enabled" > $override
fi
exit