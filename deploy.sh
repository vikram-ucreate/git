#!/bin/bash

sudo apt-get install wget
content=$(wget http://production-review-tool.herokuapp.com/api/checkReadyToDeploy?app_name=webman -q -O -)
echo $content
if [ "${content:1:14}" == '"success":true' ]; then 
 exit 0
fi
exit 1
