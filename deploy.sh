#!/bin/bash
#
# Hostme.gh-actions (https://hostme.space/)
# Requirements :
# - zip
# - curl
# - unzip
#
# Features :
# - zip the project
# - post it on hostme to be deployed
# - delete it after the deployment
#
# by d4rk3r


deploy_me(){
    # We create our zip filename
    zip_file=$1_hostme.zip

    echo "[-] Zipping of the project in progress..."
    # We zip the project
    zip -r $zip_file .

    echo "[-] Deployment in progress..."
    # We post/deploy the zip on hostme
    curl -v -X POST \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $2" \
    -F "file=@./$zip_file" \
    https://hostme.space/api/websites/$1/deploy_on_push


    echo "[-] Cleaning in progress..."
    # We delete the zip we just created
    rm -rf $zip_file
}

# Where $1 is the project name
# and $2 is the API-TOKEN
deploy_me $1 $2

