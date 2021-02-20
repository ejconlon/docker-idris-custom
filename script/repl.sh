#!/bin/bash

set -eux

IDRIS="$1"
VER="$2"
shift
shift

NAMESPACE="${NAMESPACE:-ejconlon}"
TAG="${NAMESPACE}/${IDRIS}-custom:${VER}"

docker run -it ${TAG} /bin/bash
