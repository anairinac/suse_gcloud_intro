#!/bin/bash

# Created on: 02/07/2018
# Author: anairinac

echo 'Starting Google Cloud SDK installation'

# Variables:
machine_user=anairinac
user_home=/home/$machine_user
sdk_dir=$user_home/google-cloud-sdk
install_dir=/tmp/install_gcloud
$PATH="${sdk_dir}/bin:${PATH}"

echo 'Verifying requirements for installation...'
# Verify requirements
echo 'Verifying Python version...'
if ! echo `python --version 2>&1` | grep "Python 2\.7\..*"; 
then
  echo 'Installing Python 2.7.14...';
  zypper in python=2.7.14
else
  echo 'No installation required.';
fi

# Install gcloud
echo 'Downloading google-cloud-sdk...'
curl -sSL https://sdk.cloud.google.com > $install_dir
echo 'Installing google-cloud-sdk...'
bash $install_dir --install-dir=$user_home --disable-prompts
echo 'Removing temporal directory...'
rm -rf $install_dir
echo 'Changing google-cloud-sdk directory access...'
chmod +x $sdk_dir/bin/* && chown -Rf $machine_user: $user_home
