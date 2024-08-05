mkdir ~/setup
# move setup yaml to ~/setup
cd setup
git clone https://github.com/johncui0505/hands-on_lab_setup

cd hands-on_lab_setup

# ACI ansible module installation
ansible-galaxy collection install cisco.aci

ansible-galaxy collection install cisco.nd

#initial setup ACI fabric
# Leaf1 NodeID: 101 Serial: TEP-1-101
# Leaf2 NodeID: 102 Serial: TEP-1-102
# Spine1 NodeID: 201 Serial: TEP-1-103
# Spine2 NodeID: 202 Serial: TEP-1-104
# NTP 198.18.128.1

ansible-playbook aci_fabric_setup.yml