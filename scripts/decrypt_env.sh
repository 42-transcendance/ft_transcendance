#!/bin/bash
if [ -f env_file ]; then rm -f $2 ; fi
gpg --output $2 --decrypt --batch --passphrase-file=.passwd $1
echo ".env file has been written to " $2
