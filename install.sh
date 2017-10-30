#!/usr/bin/env bash

oc new-app https://github.com/michalszynkiewicz/keycloak-openshift.git
oc create -f route.yaml

oc policy add-role-to-user view -n $(oc project -q) -z default