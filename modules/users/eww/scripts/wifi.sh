#!/bin/sh

if iwctl station wlp2s0 show | grep -q "connected"; then
    icon=""
    ssid=Unicorn
    status="Connected to ${ssid}"
else
    icon="睊"
    status="offline"
fi

echo "{\"icon\": \"${icon}\", \"status\": \"${status}\"}" 
