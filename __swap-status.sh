#!/bin/bash
if free | awk '/^Swap:/ {exit !$2}'; then
sudo swapon -show
else
echo 'No swap'
fi
