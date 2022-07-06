#!/bin/bash

[ "$(amixer scontents | grep Playback | grep 45874 -m 1 | awk '{print $6}')" = "[on]" ] && [ "$(pamixer --get-volume-human)" = "mute" ] && pamixer -t

[ "$(amixer scontents | grep Playback | grep 45874 -m 1 | awk '{print $6}')" = "[off]" ] && [ "$(pamixer --get-volume-human)" != "mute" ] && pamixer -t

