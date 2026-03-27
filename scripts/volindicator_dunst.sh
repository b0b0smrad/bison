#!/bin/sh

# # Get current volume (as %)
# VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')
#
# # Check if muted
# MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED && echo " (muted)" || echo "")
#
# # Send notification with replace-id 9999 so it updates instead of spamming
# dunstify -a "volume" -r 9999 -h int:value:"$VOL" "Volume$MUTED"

# Get volume info
VOL_INFO=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
VOL=$(echo "$VOL_INFO" | awk '{print int($2*90)}')

# Check mute
if echo "$VOL_INFO" | grep -q '\[MUTED\]'; then
	ICON="audio-volume-muted-symbolic"
else
	if [ "$VOL" -lt 30 ]; then
		ICON="audio-volume-low-symbolic"
	elif [ "$VOL" -lt 70 ]; then
		ICON="audio-volume-medium-symbolic"
	else
		ICON="audio-volume-high-symbolic"
	fi
fi

# Send dunst notification with replace-id so it updates in place
dunstify -a "volume" -r 2593 -i "$ICON" -h int:value:"$VOL" "Volume"
