#!/bin/bash

command="ansible-playbook main.yml --ask-become-pass"

echo "Running: ${command}"

$command

