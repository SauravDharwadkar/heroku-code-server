if [ -n "${CLIENT_ID}" ] && [ -n "${CLIENT_SECRET}" ] && [ -n "${TOKEN}" ]; then
		# google-drive-ocamlfuse doesn't clear stdin so pipe works
		su coder -l -c "echo \"${TOKEN}\" | \
		 google-drive-ocamlfuse -headless \
		 -id \"${CLIENT_ID}.apps.googleusercontent.com\" \
		 -secret \"${CLIENT_SECRET}\""

        exec su coder -l -c "google-drive-ocamlfuse /home/coder/gdrive"
        
else 
    echo "GDRIVE NOT MOUNTED" > /home/coder/gdrive/GDRIVE_NOT_MOUNTED
fi

