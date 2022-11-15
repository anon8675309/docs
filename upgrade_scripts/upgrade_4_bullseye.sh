#!/usr/bin/env bash
set -e
if [[ "$(id -u)" != "0" ]]; then
   echo "Please run me as root!"
   exit 1
fi
cp sources.list.bullseye /etc/apt/sources.list
apt update
apt-get -y -oAPT::Force-LoopBreak=1 dist-upgrade
