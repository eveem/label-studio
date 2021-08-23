#!/usr/bin/env bash
# see deploy/uwsgi.ini for details
# /usr/local/bin/uwsgi --ini /label-studio/deploy/uwsgi.ini
echo "Make simple Label Studio launch..."

pip install -U label-studio
label-studio init $PROJECT_NAME -db postgresql --username $USER_EMAIL --password $USER_PASSWORD --user-token $USER_TOKEN -l ./ws_ner_config.xml
label-studio