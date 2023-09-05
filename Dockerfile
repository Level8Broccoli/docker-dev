FROM debian:12

RUN apt update && \
  apt install -y \
  curl \
  sudo \
  unzip \
  gpg

RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN curl -fsSL https://bun.sh/install | bash
RUN curl -fsSL https://get.pnpm.io/install.sh | bash

RUN apt update && \
  apt install -y \
  vim \
  tmux \
  nodejs \
  yarn \
  && \
  apt-get clean && \ 
  rm -rf /var/lib/apt/lists/*

WORKDIR /home/src/

CMD ["/bin/bash"]
