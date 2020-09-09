if [ -n "${BASE_CONF}" ] && [ -n "${COULD_NAME}" ] ; then
    cat /proc/mounts | grep rclonesd
    if [ $? -eq 0 ]; then
        echo "already mounred skipping"
    else 
        echo $BASE_CONF | base64 -d > .rclone.conf
        rclone mount $COULD_NAME:$SUB_DIR cloud  --vfs-cache-mode full --daemon
    fi
        
else 
    echo "CLOUD NOT MOUNTED" > /home/coder/cloud/CLOUD_NOT_MOUNTED
fi

