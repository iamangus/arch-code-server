FROM archlinux:latest

ENV TZ="America/Chicago"

ENV CSVER=4.4.0

RUN pacman -Sy git

USER angoo
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/yay-git.git \
    && cd yay-git \
    && makepkg -si
    
USER root
RUN yay -Syu code-server

COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN sudo chmod +x /usr/bin/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080"]