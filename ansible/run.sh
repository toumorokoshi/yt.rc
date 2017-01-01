#!/usr/bin/env sh
# needs to be run as sudo.
ansible-playbook -i ./hosts -c local playbooks/all.yml
