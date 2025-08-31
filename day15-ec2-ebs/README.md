#!/bin/bash
# Day-15: Simple script to create and attach an EBS volume to an EC2 instance
# Usage: ./attach-ebs.sh <size-in-GB> <availability-zone> <instance-id>
# Author: <Nahid Hasan>
# Date: (31/08/2025)

SIZE=$1
AZ=$2
INSTANCE_ID=$3

# 1️⃣ Create EBS Volume
VOLUME_ID=$(aws ec2 create-volume \
  --size $SIZE \
  --availability-zone $AZ \
  --volume-type gp3 \
  --query 'VolumeId' \
  --output text)

echo "✅ Created Volume: $VOLUME_ID"

# Wait until volume is available
aws ec2 wait volume-available --volume-ids $VOLUME_ID