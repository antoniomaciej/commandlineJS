#!/usr/bin/env bash

docker tag commandline-js eu.gcr.io/desarrollar-180407/commandline-js
gcloud docker -- push eu.gcr.io/desarrollar-180407/commandline-js