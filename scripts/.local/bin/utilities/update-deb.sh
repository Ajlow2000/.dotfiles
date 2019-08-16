#!/bin/bash

# This script automates my update/upgrade commands.

echo "sudo apt update -y"
echo ""
sudo apt update -y
echo "####################"
echo "sudo apt upgrade -y"
echo ""
sudo apt upgrade -y
echo "####################"
echo "sudo snap refresh"
echo ""
sudo snap refresh
echo "####################"
echo "sudo apt autoremove -y"
echo ""
sudo apt autoremove -y
