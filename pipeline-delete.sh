#!/bin/bash

oc delete task buildah mvn-archive mvn-build-skip-tests mvn-code-analysis mvn-test openshift-client
oc delete serviceaccount pipeline
oc delete pipelineresources source
oc delete pipelineresources image
oc delete pipeline deploy-pipeline
