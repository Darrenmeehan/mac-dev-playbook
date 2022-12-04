#!/bin/bash

[[ $OSTYPE == 'darwin'* ]] && xcode-select --install

echo "Install playbook requirements"
ansible-galaxy install -r requirements.yml

command="ansible-playbook main.yml --ask-become-pass"
echo "Running: ${command}"
$command
