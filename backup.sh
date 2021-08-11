#!/bin/bash
date=$(date +%y-%m-%d)
zip -r /root/BackupData-$date.zip /home/ubuntu/minecraft/*
rclone copy /root/BackupData-$date.zip gdrive:Backup/
rm -rf /root/BackupData-$date.zip
