# Backup and Restore Brews

1. Run aio_backup_brew.sh to backup all brews and casks.
2. This will:
    1. backup the last restore to restore-homebrew.sh.current_date
    2. Run backup-homebrew.sh and put results in restore-homebrew.sh
3. To restore brews and casks, ensure brew is already installed. Run script restore-homebrew.sh
