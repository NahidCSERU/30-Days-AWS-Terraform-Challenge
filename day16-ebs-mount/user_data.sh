
---

# Day 16. `user_data.sh`
# Author: <Nahid Hasan>
# Date: (01/09/2025)

```bash
#!/bin/bash
# Day 16: Mount EBS Volume to EC2

# Update packages
sudo apt-get update -y

# Install filesystem utilities
sudo apt-get install -y xfsprogs

# Create filesystem on the new EBS volume (assume device = /dev/xvdf)
sudo mkfs -t xfs /dev/xvdf

# Make mount directory
sudo mkdir -p /data

# Mount the volume
sudo mount /dev/xvdf /data

# Persist the mount in fstab so it survives reboot
echo "/dev/xvdf /data xfs defaults,nofail 0 2" | sudo tee -a /etc/fstab
