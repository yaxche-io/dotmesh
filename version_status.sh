#!/bin/bash

# script to tell bazel what version to set on the client
VERSION=$(cd cmd/versioner && go run versioner.go)
echo VERSION ${VERSION}
echo DOCKERTAG ${ARTEFACT_CONTAINER}
echo CI_REGISTRY ${CI_DOCKER_REGISTRY:-$(hostname).local:80}