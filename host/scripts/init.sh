#!/bin/bash

/opt/alfresco/alfresco.sh start postgresql
/opt/alfresco/tomcat/scripts/ctl.sh daemon
