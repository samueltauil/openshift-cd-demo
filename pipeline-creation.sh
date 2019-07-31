#!/bin/bash

oc create serviceaccount pipeline
oc adm policy add-scc-to-user privileged -z pipeline
oc adm policy add-role-to-user edit -z pipeline

oc create -f pipelineresource-git.yaml
oc create -f pipelineresource-image.yaml
oc create -f task-mvn-archive.yaml
oc create -f task-mvn-codeanalysis.yaml
oc create -f task-mvn-install-skiptest.yaml
oc create -f task-mvn-test.yaml
oc create -f pipeline-deploy.yaml
oc create -f pipeline-deploy-run.yaml
