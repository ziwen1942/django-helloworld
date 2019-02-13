mkdir -p /opt/django/log/
touch /opt/django/log/django.txt

touch /etc/supervisor/conf.d/django.conf

echo -e "[program:django] \ncommand=python /root/django-helloworld/manage.py runserver 0.0.0.0:8000\nautorestart=true\nstartsecs=5\nstartretries=10\nredirect_stderr=true\nstdout_logfile=/opt/django/log/django.txt\nstderr_logfile=/opt/django/log/django.txt" >> /etc/supervisor/conf.d/django.conf

supervisorctl update
# supervisord -c /etc/supervisor/supervisord.conf
