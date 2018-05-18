#!/usr/bin/env bash

# NOTE: this files requires to be ran as root.

readonly logfiles=(
  "/var/log/syslog"
  "/var/log/lastlog"
  "/var/log/dpkg.log"
  "/var/log/auth.log"
  "/var/log/kern.log"
  "/var/log/vbox-install.log"
)

rm -vf /var/log/*.gz
for file in "${logfiles[@]}"; do
  echo "cleaning $file";
  > $file;
done
