#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Peter G. Williams <petergwilliams at hotmail.com>' -s ${MY_SHELL} -m peterw
cat >/etc/sudoers.d/peterw-ALL <<EOF
peterw     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/peterw-ALL
mkdir ~peterw/.ssh
chmod 700 ~peterw/.ssh
curl https://raw.githubusercontent.com/pgwilliams/ssh_access/master/petergwilliams_rsa.pub >~peterw/.ssh/authorized_keys
chmod 400 ~peterw/.ssh/authorized_keys
chown -R peterw ~peterw/.ssh
