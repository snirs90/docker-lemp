#!/bin/bash

chown -R www-data:www-data /var/log/php

exec /usr/bin/supervisord --nodaemon -c /etc/supervisor/supervisord.conf