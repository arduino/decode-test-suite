#!/bin/bash

testToMove=$1

boardName=$2

testSuiteFolder="decode-suite/"

#old version ptsFolder="/var/lib/phoronix-test-suite/test-suites/local/"
ptsFolder="~/.phoronix-test-suite/test-suites/local/"

if [ ! -d ${ptsFolder}${testSuiteFolder} ] ; then
        mkdir ${ptsFolder}${testSuiteFolder}
fi

cp ${testToMove} ${ptsFolder}${testSuiteFolder}"suite-definition.xml"

# patch the configuration file
# note: in non system installation, the file to substitute is not the one
#       under /etc/ but the one named user-config.xml under /home/XXX/.phoronics-test-suite

cp /etc/phoronix-test-suite.xml ./phoronix-test-suite.xml.old

cp phoronix-test-suite.xml /etc/phoronix-test-suite.xml

sed -i "s/BOARD_NAME/${boardName}/g" /etc/phoronix-test-suite.xml
