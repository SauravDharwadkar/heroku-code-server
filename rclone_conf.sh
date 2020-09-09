# !/bin/bash
echo -e "copy as it is without spaces \n\n\n"
cat ~/.config/rclone/rclone.conf | base64 --wrap=0 

echo -e "\n\n\nhere CLOUD_NAME igone other token texts \n"
cat ~/.config/rclone/rclone.conf | grep "\[*\]"
echo -e "\n"