if [ -n "${BASE_CONF}" ] && [ -n "${CLOUD_NAME}" ] ; then
    pgrep rclone
    if [ $? -eq 0 ]; then
        echo "already mounred skipping"
    else 
        echo $BASE_CONF | base64 -d > .rclone.conf
        rclone serve sftp  $CLOUD_NAME:$SUB_DIR --no-auth --vfs-cache-mode full&
    fi
        
else 
    echo "CLOUD NOT MOUNTED" > /home/coder/CLOUD_NOT_MOUNTED
fi

