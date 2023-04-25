#!/bin/bash
set -eu

${USER_NAME}

code-server --install-extension golang.go &

code-server --install-extension python &

sudo useradd -m ${USER_NAME}

sudo echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER_NAME}

su $USER_NAME --command "code-server --auth none --bind-addr 0.0.0.0:8080 '~/'"

#code-server --auth none --bind-addr 0.0.0.0:8080 "/home/${USER_NAME}"