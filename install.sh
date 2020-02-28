#!/bin/bash
echo "This script will create following links:"
echo " - to  k8s-plugin in /usr/local/bin/ which is scanned by KREW plugin"
echo " - to /opt/k8s/tools/lib and /opt/k8s/tools/bin"

if [ -f "/usr/local/bin/kubectl-krew" ]
	then
		echo "krew is installed"
	else
		echo "**************************************************************************"
		echo "Before you will use this script you have to install kubectl KREW plugin"
		echo "**************************************************************************"
		exit 1
		
fi		


current_folder=$(pwd)
ln -s $current_folder/k8s-plugin/kubectl-tools_on /usr/local/bin/kubectl-tools_on
mkdir -p /opt/k8s/tools
ln -s $current_folder/bin /opt/k8s/tools/bin
ln -s $current_folder/lib /opt/k8s/tools/lib
