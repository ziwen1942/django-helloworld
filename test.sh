#! /bin/bash

apt-get update
apt-get install python
apt-get install python-pip
apt-get install git
pip install Django==1.11.18

git clone https://github.com/ziwen1942/django-helloworld.git
python django-helloworld/manage.py runserver 0.0.0.0:8000 

