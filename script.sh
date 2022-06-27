#!/bin/bash

#python manage.py collectstatic --noinput &&
python manage.py makemigrations app
python manage.py migrate app &&
python manage.py runserver 0.0.0.0:8000"