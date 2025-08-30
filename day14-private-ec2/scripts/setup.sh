#!/bin/bash
# Day-14
# Author: <Nahid Hasan>
# Date: $(30/08/2025)

echo "SSH into Bastion:"
echo "ssh -i your-key.pem ec2-user@<bastion-public-ip>"

echo "Then SSH into Private EC2:"
echo "ssh -i your-key.pem ec2-user@<private-private-ip> -o 'ProxyJump ec2-user@<bastion-public-ip>'"
