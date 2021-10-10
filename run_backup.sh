#!/bin/zsh

cd /home/dranger/backup_image_tbd
chmod +x ./image-backup

sudo mount /mnt/backup
sudo ./image-backup -i /mnt/backup/dev_backup.img,,2048
sudo ./image-backup -i /mnt/backup/prod_backup.img,, -o --exclude="/home/dranger/*_tbd",--exclude="/home/dranger/logs/*",--exclude="/home/dranger/software_key.drk",--delete-excluded
