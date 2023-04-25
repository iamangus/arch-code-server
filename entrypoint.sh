#!/bin/bash
set -eu

#/usr/bin/code-server --install-extension golang.go &

#wait

dumb-init code-server --bind-addr 0.0.0.0:8080 "/home/angoo"