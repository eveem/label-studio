#!/usr/bin/env bash
# see deploy/uwsgi.ini for details
# /usr/local/bin/uwsgi --ini /label-studio/deploy/uwsgi.ini
echo "Make simple Label Studio launch..."

export LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true
label-studio --username arm@arm.com --password 123456