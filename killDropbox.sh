#!/bin/sh
# Check if there is a line in /etc/hosts containing "dropbox.com".
# If it doesn't then add it, else it if exists replace it with new line.

if grep -q "dropbox.com" /etc/hosts; then
    echo "Redirect exists for dropbox.com, replacing with new..."
    # Remove line
    /usr/bin/sed -i_bak -e '/dropbox.com/d' /etc/hosts
    # Add redirect
    echo "0.0.0.0 dropbox.com" >> /etc/hosts
    # Reset DNS
    /usr/bin/killall -HUP mDNSResponder
else
    echo "Redirect does not exist for dropbox.com, adding it now..."
    # Add redirect
    echo "0.0.0.0 dropbox.com" >> /etc/hosts
    # Reset DNS
    /usr/bin/killall -HUP mDNSResponder
fi

exit 0