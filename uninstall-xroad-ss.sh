#!/bin/sh
  
set -x
  
sudo apt-get purge xroad-common
sudo apt-get autoremove
sudo rm -rf /etc/xroad
sudo rm -rf /usr/share/xroad
sudo rm -rf /var/lib/xroad
sudo rm -rf /var/log/xroad
sudo rm -rf /var/tmp/xroad
sudo apt-get purge nginx
sudo -u postgres dropdb messagelog
sudo -u postgres dropdb serverconf
sudo -u postgres psql -c "drop user serverconf"
sudo apt-get --purge remove postgresql-9.3  
  
