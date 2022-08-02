#!/bin/bash

killall -q polybar
polybar > /tmp/polybar.log 2>&1 & disown
