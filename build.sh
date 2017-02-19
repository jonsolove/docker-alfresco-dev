#!/bin/bash

# render a template configuration file
# expand variables + preserve formatting
render_template() {
      eval "echo \"$(cat $1)\""
}

mkdir "docker-${ALF_VERSION}"
render_template Dockerfile.template > "docker-${ALF_VERSION}/Dockerfile"

docker build --tag "alfresco:${ALF_VERSION}" "docker-${ALF_VERSION}"

rm -rf "docker-${ALF_VERSION}"
