SHELL=/usr/bin/bash

PATH=/sbin:/bin:/usr/sbin:/usr/bin

service nginx status > output.txt

if grep -q "running" output.txt; then
    echo "Nginx is running"
else
    service nginx start
    echo "Nginx was not running. The service has been started." 
fi

sudo rm -f output.txt
