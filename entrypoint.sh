#!/bin/bash
set -eu

#/usr/bin/code-server --install-extension golang.go &

whoami

sudo useradd -m angoo

sudo echo "angoo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/angoo

code-server --bind-addr 0.0.0.0:8080 "/home/angoo"