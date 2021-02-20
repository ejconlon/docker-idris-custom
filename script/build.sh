#!/bin/bash

set -eux

IDRIS="$1"
VER="$2"
shift
shift

NAMESPACE="${NAMESPACE:-ejconlon}"
TAG="${NAMESPACE}/${IDRIS}-custom:${VER}"

pushd "images/${IDRIS}/${VER}"
  docker build -t ${TAG} .
popd
