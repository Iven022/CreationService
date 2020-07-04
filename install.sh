#!/bin/bash

sudo cp usbDetectServ.sh /usr/bin/usbDetectServ.sh
sudo chmod +x /usr/bin/usbDetectServ.sh

sudo cp myservice.service /etc/systemd/system/myservice.service
sudo chmod 644 /etc/systemd/system/myservice.service

sudo systemctl start myservice
 
sudo systemctl enable myservice
