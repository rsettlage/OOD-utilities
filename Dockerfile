FROM golang:1.16.4

MAINTAINER Robert Settlage  <rsettlag@vt.edu>
LABEL this image will contain misc tools I want available and dont need/want to install everywhere as modules
LABEL cheating a little by using the GO image ;)

ARG GOTTYVER=1.0.1
ENV PATH=/apps:$PATH

## keep this to bare minimum
RUN mkdir /apps && \
  apt update && \
  apt install bash \
  wget

################ gotty
RUN cd /apps && \
  wget https://github.com/yudai/gotty/releases/download/v${GOTTYVER}/gotty_linux_amd64.tar.gz && \
  tar xvf gotty_linux_amd64.tar.gz && \
  rm gotty_linux_amd64.tar.gz && \
  chmod  +x gotty 


