#!/bin/bash

# Create setup directory and move setup yaml
mkdir -p ~/setup
cd ~/setup

# Clone the hands-on lab setup repository
git clone https://github.com/johncui0505/hands-on_lab_setup

cd hands-on_lab_setup

# Install ACI Ansible modules
ansible-galaxy collection install cisco.aci
ansible-galaxy collection install cisco.nd
ansible-galaxy collection install community.general

# Initial setup of ACI fabric
# Leaf1 NodeID: 101 Serial: TEP-1-101
# Leaf2 NodeID: 102 Serial: TEP-1-102
# Spine1 NodeID: 201 Serial: TEP-1-103
# Spine2 NodeID: 202 Serial: TEP-1-104
# NTP 198.18.128.1
ansible-playbook aci_fabric_setup.yml

# ACI fabric initial setup done

# Create work folder and clone ansible terraform demo repository
mkdir -p ~/labs
cd ~/labs
git clone https://github.com/johncui0505/ansible_terraform_demo


