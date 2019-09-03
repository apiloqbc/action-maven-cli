#!/bin/bash

set -e

REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
echo "Registering the ip"



set -o xtrace

NEW_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:3.1.0:evaluate -Dexpression=project.version -q -DforceStdout | sed -e "s/-SNAPSHOT//g")

mvn versions:set -DnewVersion=$NEW_VERSION 
cat  .github.settings.xml
mvn deploy -s .github.settings.xml


