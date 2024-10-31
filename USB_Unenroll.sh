#!/bin/bash

# Set variables
TARGET_DIR="/mnt/stateful_partition/target"
GOOGLE_UPDATE_DIR="$TARGET_DIR/google_update"
ENROLLMENT_TOKEN="$GOOGLE_UPDATE_DIR/enterprise_enrollment_token"

# Mount the system partition
echo "Mounting system partition..."
mkdir -p $TARGET_DIR
mount /dev/root $TARGET_DIR

# Identify and modify system files
echo "Modifying system files..."
cp $GOOGLE_UPDATE_DIR/google_update.sh $GOOGLE_UPDATE_DIR/google_update.sh.orig
sed -i 's/^.*google_management_service.*$//' $GOOGLE_UPDATE_DIR/google_update.sh
sed -i 's/^.*google_update_service.*$//' $GOOGLE_UPDATE_DIR/google_update.sh
rm $ENROLLMENT_TOKEN

# Reboot and verify unenrollment
echo "Rebooting and verifying unenrollment..."
reboot
