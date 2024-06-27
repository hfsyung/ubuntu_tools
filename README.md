# ubuntu_tools
Tools for ubuntu server installs. 

Set of tools to speed up the install of a new Ubuntu server. 

## install_webmin_cockpit.sh
How to Use the Updated Script
Create the Script File:
Save the script as install_webmin_cockpit.sh.
  nano install_webmin_cockpit.sh

Paste the Script:
Copy and paste the script content into the file.

Make the Script Executable:
  chmod +x install_webmin_cockpit.sh

Run the Script:
  ./install_webmin_cockpit.sh

Script Explanation
Get the Current Server IP:
The function get_ip uses hostname -I to get the server's IP address and extracts the first IP address listed.

Update and Install Dependencies:
The script updates the package list and installs necessary dependencies.

Install Webmin:

Adds the Webmin repository and GPG key.
Updates the package list again to include the new repository.
Installs Webmin.
Install Cockpit:

Installs Cockpit from the default repositories.
Starts and enables the Cockpit service to run on boot.
Check Service Status:

Displays the status of both Webmin and Cockpit services to ensure they are running.
Access Information:

Retrieves the server's IP address and uses it to display URLs for accessing Webmin and Cockpit after installation.
This updated script simplifies the installation process and dynamically includes the server's IP address in the final instructions.
