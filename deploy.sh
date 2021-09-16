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
    # We get the zip filename
    zip_file=$1

    # We get the hostme project name 
    # (because the github repo name can be different to hostme project name)
    hostme_project_name=$2

    # We get the api token generated on your hostme.space dashboard
    api_token=$3

    # We post/deploy the zip on hostme
    curl -s \
    -v -X POST \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $api_token" \
    -F "file=@$zip_file" \
    https://hostme.space/api/websites/$hostme_project_name/deploy_on_push
}

# Where $1 is the project zip file name
# the $2 is the name of that project on hostme.space
# and $3 is the API-TOKEN created on hstme.spaces
deploy_me $1 $2 $3
