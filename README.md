# CreationService
Systemd Service for USB Auto mount and unmount with creation of text file with current date included.


# Auto installation

1. Open a terminal in the directory of the repository
2. Give install.sh, executable rights with the code : chmod u+x install.sh
3. Run install.sh with the code : ./install.sh

# Manual installation 

1. Copy the script to /usr/bin and make it executable:

	sudo cp usbDetectServ.sh /usr/bin/usbDetectServ.sh
	sudo chmod +x /usr/bin/usbDetectServ.sh

2. Copy the unit file to /etc/systemd/system and give it permissions:

	sudo cp myservice.service /etc/systemd/system/myservice.service
	sudo chmod 644 /etc/systemd/system/myservice.service

3. Start and Enable the Service.

   -Once you have a unit file, you are ready to test the service:

    	sudo systemctl start myservice

   -Check the status of the service:

    	sudo systemctl status myservice

   -The service can be stopped or restarted using standard systemd commands:

	sudo systemctl stop myservice
	sudo systemctl restart myservice

   -Finally, use the enable command to ensure that the service starts whenever      	the system boots:

	sudo systemctl enable myservice

