#!/bin/bash
nohup python sched.py --env test --crontab ('*', '3', '0') &
uwsgi --ini uwsgi/uwsgi.ini