#!/bin/bash

flask/bin/gunicorn -w 8 -b 0.0.0.0:5000 --timeout 240 --limit-request-line 0 --log-level debug -k gevent  prod:app
