#!/bin/bash
set -e

echo "172.16.5.129    linux-suma.suse.com" >> /etc/hosts

zypper --non-interactive --gpg-auto-import-keys ref

zypper --non-interactive in aaa_base aaa_base-extras net-tools timezone vim less sudo tar python python-xml apache2 apache2-prefork
