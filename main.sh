#!/bin/bash
nohup python cron.py --env test --crontab ('*', '3', '0') &
uwsgi --ini uwsgi/uwsgi.ini
