#!/bin/bash
# Fix permissions on the file system. This assumes that apache is the website user, and the apache group exists
sudo usermod -a -G apache $USER
sudo restorecon -R -v .
sudo find . -type d -exec chmod 775 {} +
sudo find . -type f -exec chmod 664 {} +
sudo chown -R apache:apache *
sudo chown -R apache:apache .*
sudo chmod +x FixPermissions.sh
sudo chmod +x Backup.sh