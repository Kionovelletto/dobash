#!/bin/bash

while true; do echo -n .; sleep 1; done &
echo -e "I want coffee! \n Please Wait Running: "
sleep 10
echo done
killall animation02_progress.sh
