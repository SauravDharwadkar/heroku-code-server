if [ -n "${BASE_CONF}" ] && [ -n "${CLOUD_NAME}" ] ; then
    cat /proc/mounts | grep rclone
    if [ $? -eq 0 ]; then
        echo "already mounred skipping"
    else 
        echo $BASE_CONF | base64 -d > .rclone.conf
        rclone mount $CLOUD_NAME:$SUB_DIR cloud  --vfs-cache-mode full --daemon
    fi
        
else 
    echo "CLOUD NOT MOUNTED" > /home/coder/cloud/CLOUD_NOT_MOUNTED
fi

