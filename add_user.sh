#!/bin/sh

htpasswd -b -c /etc/apache2/.htpasswd $AUTH_USERNAME $AUTH_PASSWORD
