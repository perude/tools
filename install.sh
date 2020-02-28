#!/bin/bash
echo "**************************************************************************"
echo "Before you will use this script you have to install kubectl KREW plugin"
echo "**************************************************************************"
echo "This script will copy k8s-plugin to /usr/local/bin/ which is scanned by KREW plugin"

cp ./k8s-plugin/kubectl-tools_on /usr/local/bin/
echo "modify .bashrc and .bash_profile"
tools_location=$(pwd)
echo "export tools_folder=$tools_location" >> $HOME/.bashrc
echo "export tools_folder=$tools_location" >> $HOME/.bash_profile
