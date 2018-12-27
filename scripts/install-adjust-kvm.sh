#!/bin/bash

sudo apt install qemu-kvm -y

sudo adduser $USER kvm

echo 'kvm installed and user added'
