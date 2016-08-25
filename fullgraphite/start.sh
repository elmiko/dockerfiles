#!/bin/sh

carbon-cache --debug --config=/etc/carbon/carbon.conf start &

python3-gunicorn -b 0.0.0.0:8000 -w 2 --log-level debug graphite_api.app:app
