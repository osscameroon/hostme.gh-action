# Hostme.gh-action

`Hostme.gh-action` (https://hostme.space/) is a github action to zip and deploy your project directly on Hostme.Space


# Requirements :

All this gh-action need :
 - curl

# Features :

What this ghaction do :
 - Run your custom inputs commands
 - generate the zip folder depending on the project name you gave
 - Post the zip file on hostme.space

# Integration example :

- Example available [here](https://github.com/osscameroon/hostme.gh-action.example).

- Screenshot :
![screenshot](./screen.png)


Some explanations with comments:
```yaml
# Two important parameters are required here
# the h_name.out that will contain the hostme project name
# the h_target.out that will contain the folder name that will be zip
echo "hostme_project_name" > h_name.out
echo "build" > h_target.out
```

