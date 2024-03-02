#!/bin/bash

# The directory to backup
source_directory="/path/to/source/directory"

# The directory where the backup will be stored
backup_directory="/path/to/backup/directory"

# The name of the backup file
backup_file_name="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Create a backup by tar-ing the source directory
tar -czf "${backup_directory}/${backup_file_name}" "${source_directory}" --warning=no-file-changed

# Print a success message
echo "Backup of ${source_directory} completed! The backup file is located at ${backup_directory}/${backup_file_name}"
