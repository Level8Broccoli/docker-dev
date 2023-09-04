FROM debian:12

RUN apt update && \
  apt install -y \
  curl \
  unzip \
  sudo \
  vim \
  && \
  apt-get clean && \ 
  rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://bun.sh/install | bash

WORKDIR /home/src/

CMD ["/bin/bash"]
