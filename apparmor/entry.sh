#!/bin/bash

PROFILE="${1}"

# Load profile
apparmor_parser -r /etc/apparmor.d/"${PROFILE}"
aa-complain /etc/apparmor.d/"${PROFILE}"
if [ "${ENFORCE}" -eq "1" ]; then
	echo "Enforcing apparmor profile in /etc/apparmor.d/${PROFILE}"
	aa-enforce /etc/apparmor.d/"${PROFILE}"
fi
