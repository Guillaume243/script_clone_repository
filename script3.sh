#!/bin/bash

config_dir="/home/ec2-user/configs"
config_file="server.conf"
github_repo="https://gist.github.com/9aed8e73aca50fadafbc322934d80158.git"

  if [ ! -f "$config_dir/$config_file" ]; then
    echo "$(date) - Le fichier $config_file n'existe pas, téléchargement depuis GitHub." >> /home/ec2-user/servConfLog.log
    mkdir -p "$config_dir"
    git clone "$github_repo" "$config_dir"
  else
    echo "$(date) - Le fichier $config_file existe déjà dans $config_dir." >> /home/ec2-user/servConfLog.log
  fi

