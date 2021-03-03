# !/bin/bash
echo -e "\nBASE_CONF\nNote: copy as it is without spaces \n\n\n"
echo -e "#$(date -u)\n$(cat ~/.config/rclone/rclone.conf)" > ~/.config/rclone/rclone.conf
cat ~/.config/rclone/rclone.conf | base64 --wrap=0 

echo -e "\n\n\nhere CLOUD_NAME ignore other token texts \n"
cat ~/.config/rclone/rclone.conf | grep "\[*\]"
echo -e "\n"
