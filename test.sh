#!/bin/bash

mv /etc/apt/sources.list /etc/apt/sources.list.bak
touch /etc/apt/sources.list
echo -e "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main multiverse restricted universe
\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main multiverse restricted universe
\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-proposed main multiverse restricted universe
\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main multiverse restricted universe
\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main multiverse restricted universe
\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main multiverse restricted universe
\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main multiverse restricted universe
\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-proposed main multiverse restricted universe
\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main multiverse restricted universe
\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main multiverse restricted universe" >> /etc/apt/sources.list
apt-get update
apt-get -y install python
apt-get -y install python-pip
apt-get -y install git
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple Django==1.11.18
pip install supervisor -i https://pypi.tuna.tsinghua.edu.cn/simple

rm -rf django-helloworld/
git clone https://github.com/ziwen1942/django-helloworld.git
# python django-helloworld/manage.py runserver 0.0.0.0:8000 

