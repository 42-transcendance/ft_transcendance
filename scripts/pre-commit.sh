#!/bin/bash

if [ ! -f srcs/.env ]; then
    if [ -f env_file ]; then
        scripts/decrypt_env.sh env_file srcs/.env 2>/dev/null 1>/dev/null
    else
        echo "Cannot find any env file..."
        exit
    fi
fi

scripts/decrypt_env.sh env_file .NOTenv_file 2>/dev/null 1>/dev/null
diff --color=always srcs/.env .NOTenv_file
DIF=$?
rm .NOTenv_file
if [ ! $DIF -eq 0 ];then
	scripts/encrypt_env.sh srcs/.env env_file
    echo "env_file has been updated. Please run"
    echo "   git add env_file"
    echo "and commit again to save it or run"
    echo "   git restore srcs/.env env_file"
    echo "to discard all changes."
    exit 1
fi
