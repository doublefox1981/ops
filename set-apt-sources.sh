#! /bin/bash

mv /etc/apt/sources.lst /etc/apt/sources.lst.backup
cp sources.lst /etc/apt/sources.lst
apt-get update