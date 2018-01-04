# decode-test-suite

Test Suite configuration for the DECODE project as created by the Arduino Development Team. The goal of this set of tests is performing a benchmark of a series of ARM processors running the Devuan operating system and - by extension - the DECODE OS

Once the test suite has been installed, you can run the test suite as root by issuing the command:

phoronix-test-suite run local/decode-suite

This installation will take several hours on an embedded board. Leave it working and go out for dinner with friends or something.

# instructions on installation of everything

* install the dependencies for the Phoronix Test Suite: sudo apt-get install bzip2 sqlite3 curl php5-cli bc
* install the Phoronix Test Suite in your environment
* in order to perform the network loopback test, you need to overwrite the netcat coming by default with Devuan, run sudo apt-get install netcat-openbsd
* download this repository and execute: chmod 777 test_suite_generator.sh ; to make the suite generator executable
* run the test generator: ./test_suite_generator.sh decode ; this will generate teh xml file "decode-suite-definition.xml"
* make the installation script executable: chmod 777 install_test_suite.sh
* install the test definition: ./install_test_suite.sh decode-suite-definition.xml

XXX: more in depth instructions will follow

(c) 2017 D. Cuartielles for Arduino.cc / credits to K. Engdahl and E. Lopez for the first version of this testing environment

# acknowledgements

* Phoronix Test Suite and the Open Benchmark
* Devuan OS & DECODE OS
