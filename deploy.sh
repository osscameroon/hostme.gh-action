#!/bin/bash
#
# Hostme.gh-actions (https://hostme.space/)
# Requirements :
# - curl
#
# Features :
# - post your zip project on hostme to be deployed
#
# by d4rk3r


deploy_me(){
    # We get the hostme project name
    # (because the github repo name can be different to hostme project name)
    project_name=$1

    # We get the api token generated on your hostme.space dashboard
    api_token=$2

    # We post/deploy the zip on hostme
    curl -s \
    -v -X POST \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $api_token" \
    -F "file=@$1.zip" \
    https://hostme.space/api/websites/$project_name/deploy_on_push
}

# Where $1 is the project name and it will be used to zip
# and $2 is the API-TOKEN created on hstme.spaces
deploy_me $1 $2
