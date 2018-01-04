#!/bin/bash

testList=(pts/compress-gzip pts/sqlite pts/apache pts/pgbench pts/compilebench pts/iozone pts/dbench pts/fs-mark pts/fio pts/tiobench pts/postmark pts/aio-stress pts/unpack-linux pts/network-loopback pts/botan pts/gnupg pts/openssl pts/gcrypt pts/john-the-ripper pts/memory pts/t-test1)

filePrefix=$1

initialString="<?xml version=\"1.0\"?>
<!--Phoronix Test Suite v3.0.0a3 (Iveland) [ http://www.phoronix-test-suite.com/ ]-->
<PhoronixTestSuite>
  <SuiteInformation>
    <Title>Decode Test Suite</Title>
    <Version>0.0.1</Version>
    <TestType>DECODE OS</TestType>
    <Description>Testing the performance of an embedded board running the DECODE OS</Description>
    <Maintainer>D. Cuartielles at Arduino</Maintainer>
  </SuiteInformation>
"

finalString="</PhoronixTestSuite>"

contentString=""

contentIntroString="<Execute>
  <Test>"

contentFinalString="</Test>
  <Arguments></Arguments>
  <Description></Description>
</Execute>
"

## installation of tests
for data in ${testList[@]}; do
	contentString="${contentString}${contentIntroString}${data}${contentFinalString}"
done

fileContent="${initialString}${contentString}${finalString}"

echo "${fileContent}" > ${filePrefix}"-suite-definition.xml"
