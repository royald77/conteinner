#!/bin/bash
set -e

echo "10.160.66.180 cb-suma.tf.local" >> /etc/hosts

zypper --non-interactive --gpg-auto-import-keys ref

zypper --non-interactive in aaa_base aaa_base-extras net-tools timezone vim less sudo tar python python-xml apache2 apache2-prefork
