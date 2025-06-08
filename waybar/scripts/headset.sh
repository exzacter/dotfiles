#!/bin/bash

if lsusb | grep -q "046d:0af7"; then
    echo '{"text": " headset connected", "tooltip": "headset connected", "class": "connected"}'
else
    echo '{"text": "headset disconnected", "tooltip": "headset disconnected", "class": "disconnected"}'
fi

