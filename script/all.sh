#!/bin/bash

set -eux

./script/build.sh idris2 0.3.0

./script/login.sh

./script/push.sh idris2 0.3.0
