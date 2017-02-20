#!/bin/bash

docker run -it \
           --rm \
           -p 5701:5701 \
           -p 8000:8000 \
           -p 8080:8080 \
           -p 8443:8443 \
           -v $(pwd)/host:/host \
           alfresco:$ALF_VERSION "$@"
