#!/usr/bin/env bash

# NOTE: this files requires to be ran as root.

rm /etc/resolv.conf
ln -s /run/resolvconf/resolv.conf /etc/resolv.conf
resolvconf -u
