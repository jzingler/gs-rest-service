#!/bin/bash

set -e -x

pushd source-code
	mvn clean package
popd

cp source-code/manifest.yml  build-output/.
cp source-code/target/gs-rest-service-concourse-0.1.0.jar  build-output/.