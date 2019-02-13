#!/bin/bash

apt-get update
apt-get -y install python
apt-get -y install python-pip
apt-get -y install git
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple Django==1.11.18
pip install supervisor -i https://pypi.tuna.tsinghua.edu.cn/simple

rm -rf django-helloworld/
git clone https://github.com/ziwen1942/django-helloworld.git
# python django-helloworld/manage.py runserver 0.0.0.0:8000 

