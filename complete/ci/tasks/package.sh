#!/bin/bash

set -e -x

pushd source-code/complete
	mvn -Dmaven.repo.local=.m2 clean package
popd

cp source-code/complete/manifest.yml  build-output/.
cp source-code/complete/target/gs-rest-service-0.1.0.jar  build-output/.