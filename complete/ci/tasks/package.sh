#!/bin/bash

set -e -x

pushd source-code/complete
	mvn -Dmaven.repo.local=.m2 clean package
	
	cp manifest.yml  ../../build-output/.
	cp target/gs-rest-service-0.1.0.jar  ../../build-output/.
popd

