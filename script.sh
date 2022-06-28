#!/bin/bash

python3 manage.py collectstatic --noinput &&
python3 manage.py makemigrations app
python3 manage.py migrate app &&
python3 manage.py runserver 0.0.0.0:8000"