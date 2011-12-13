#!/bin/bash

TOMCATZIP=`basename $BASEDIR/data/tomcat/apache-tomcat-*.zip`
JBOSSZIP=`basename $BASEDIR/data/tomcat/embedded-jboss-*.zip`
FEDORAJAR=`basename $BASEDIR/data/fedora/*.jar`
INGESTERZIP=`basename $BASEDIR/ingester/*.zip`

#
# Check for install-folder and potentially create it.
#
TESTBED_DIR=$@
if [ -z "$TESTBED_DIR" ]; then
    echo "install-dir not specified. Bailing out." 1>&2
    usage
fi
if [ -d $TESTBED_DIR ]; then
    echo ""
else
    mkdir -p $TESTBED_DIR
fi
pushd $@ > /dev/null
TESTBED_DIR=$(pwd)
popd > /dev/null

# The normal config values
PORTRANGE=79
GUISERVERNAME=alhena

FEDORAPORTRANGE=78
FEDORASERVERNAME=alhena

CASSERVERLOGINURL=https://samling.statsbiblioteket.dk/casinternal/

# The folders
TOMCAT_DIR=$TESTBED_DIR/tomcat

LOG_DIR=$TOMCAT_DIR/logs

SERVICES_DIR=$TESTBED_DIR/services

TOMCAT_CONFIG_DIR=$SERVICES_DIR/conf

WEBAPPS_DIR=$SERVICES_DIR/webapps


DOCS_DIR=$TESTBED_DIR/docs

