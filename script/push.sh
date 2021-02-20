#!/bin/bash

set -eux

IDRIS="$1"
VER="$2"
shift
shift

NAMESPACE="${NAMESPACE:-ejconlon}"

docker push ${NAMESPACE}/${IDRIS}-custom:${VER}
