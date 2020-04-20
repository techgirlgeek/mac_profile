#!/bin/bash

cp ~/mac_profile/scripts/restore-homebrew.sh ~/mac_profile/scripts/restore-homebrew.sh.$(date +"%Y%m%d")
~/mac_profile/scripts/backup-homebrew.sh > ~/mac_profile/scripts/restore-homebrew.sh
