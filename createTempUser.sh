#!/bin/bash

# Creates a temporary admin user on macOS

dscl . -create /Users/temp
dscl . -create /Users/temp UserShell /bin/bash
dscl . -create /Users/temp RealName temp
dscl . -create /Users/temp UniqueID 1001
dscl . -create /Users/temp PrimaryGroupID 1000
dscl . -create /Users/temp NFSHomeDirectory /Local/Users/temp
dscl . -passwd /Users/temp temp
dscl . -append /Groups/admin GroupMembership temp
