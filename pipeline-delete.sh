#!/bin/bash

oc delete task buildah mvn-archive mvn-build-skip-tests mvn-code-analysis mvn-test openshift-client
oc delete serviceaccount pipeline 
oc delete pipelineresources tasks-git
oc delete pipelineresources tasks-image
oc delete pipeline deploy-pipeline

