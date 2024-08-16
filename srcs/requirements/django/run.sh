#!/bin/bash

if [ ! -f manage.py ]; then
    echo manage.py not found, creating project
    django-admin startproject $NAME .
fi
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:$INTERNAL_DJANGO_PORT
