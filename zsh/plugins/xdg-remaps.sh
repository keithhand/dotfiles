#!/usr/bin/env bash

export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${ANSIBLE_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

export KUBECONFIG="$XDG_CONFIG_HOME/kube/config"
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"

export MINIKUBE_HOME="$XDG_DATA_HOME"/minikube

export TLDR_CACHE_DIR="$XDG_CACHE_HOME/tldrc"

export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
