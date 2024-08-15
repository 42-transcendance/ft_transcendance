#!/bin/bash
if [ -f srcs/.env ]; then rm -f $2 ; fi
gpg --output $2 --symmetric --batch --yes --passphrase-file=.passwd $1
echo "$1 file has been saved as $2"
