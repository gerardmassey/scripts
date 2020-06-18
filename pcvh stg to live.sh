#!/bin/bash

# Remove the old backups
rm -v ~/public_html/pcvhbackup.zip
rm -v ~/public_html/pcvhstgbackup.zip
rm -v ~/working/wp-config.php

# Zip up the current directories
zip -r ~/public_html/pcvhbackup.zip ~/public_html/pcvh
zip -r ~/public_html/pcvhstgbackup.zip ~/public_html/pcvhstg

# Copy the current wp-config.php to the working directory
cp -v ~/public_html/pcvh/wp-config.php ~/working

# Remove the current live site directory
rm -rv ~/public_html/pcvh

# Copy over the staging site to the main site directory
cp -rv ~/public_html/pcvhstg ~/public_html/pcvh

# Remove the copied over wp-config.php
rm -v ~/public_html/pcvh/wp-config.php

# Copy over the correct wp-config.php from the working directory to the live site directory
rm -v ~/public_html/pcvh/wp-config.php
cp -v ~/working/wp-config.php ~/public_html/pcvh

chmod -R 755 ~/public_html/pcvh

# Unzip the Search and Replace DB script to the live site directory
unzip -v ~/working/srdbm.zip -d ~/public_html/pcvh

# Backup the live site's database to the working directory
# mysqldump -u oromadmy -p oromadmy_pcvh  > ~/working/backup.sql