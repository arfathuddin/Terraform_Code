#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible

if [ $? -eq 0 ]; then
    sudo apt install ansible
fi

if [ $? -eq 0 ]; then
    echo " The ansible installation is done"
fi