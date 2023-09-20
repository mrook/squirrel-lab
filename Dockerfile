FROM alpine:latest

ARG USER=default
ENV HOME /home/$USER

RUN apk add bash

# add new user
RUN adduser -D $USER
USER $USER
WORKDIR $HOME

ADD dummy.txt .
