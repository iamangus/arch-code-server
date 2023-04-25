#!/bin/bash
set -eu

code-server --install-extension golang.go &

code-server --install-extension python &

whoami

sudo useradd -m angoo

sudo echo "angoo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/angoo

code-server --auth none --bind-addr 0.0.0.0:8080 "/home/angoo"