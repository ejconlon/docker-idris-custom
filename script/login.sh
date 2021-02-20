#/bin/bash

set -eux

USERNAME="${USERNAME:-ejconlon}"

cat ~/.dockerhub | docker login --username=${USERNAME} --password-stdin
