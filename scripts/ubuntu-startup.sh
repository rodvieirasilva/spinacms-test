#!/bin/bash
sudo apt-get update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
source ~/.bashrc
mise use --global ruby@3.2.6
gem install rails -v 6.1.4.4
mise use --global node@22.11.0
gem update --system
sudo apt install libpq-dev
rails db:create
rails active_storage:install
rails spina:install
