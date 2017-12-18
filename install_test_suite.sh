#!/bin/bash

testToMove=$1

testSuiteFolder="decode-suite/"

ptsFolder="/var/lib/phoronix-test-suite/test-suites/local/"

cp ${testToMove} ${ptsFolder}${testSuiteFolder}"suite-definition.xml"
