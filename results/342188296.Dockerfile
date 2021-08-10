[app/sources/342188296.Dockerfile]
digraph {
  "sha256:fb5927b462ab4daa32ebfa4435217cd2474d347554fde4d05946b88ac6e524ba" [label="docker-image://docker.io/rocker/rstudio:latest" shape="ellipse"];
  "sha256:f5bce27538ff04cc3a980235aaa9f72c85eba37fce0d77a7525aedf7f3ba80db" [label="local://context" shape="ellipse"];
  "sha256:501b5a93446d80ae3fec642ef7cd3ade46955286367148e03f0ac57d714fd17e" [label="copy{src=/pgdg.list.stretch, dest=/etc/apt/sources.list.d/pgdg.list}" shape="note"];
  "sha256:107622e60bfffda45326cea9b881ad11938b4cf8bab5f3ae2822c41e2f350f91" [label="copy{src=/backports.list.stretch, dest=/etc/apt/sources.list.d/backports.list}" shape="note"];
  "sha256:d7791feb49236eb28590a999835898a2e8349d823c3a678d8dbf18248a6dd2f9" [label="/bin/sh -c apt-get update   && apt-get install -qqy --no-install-recommends   gnupg   && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -   && apt-get update   && apt-get install -qqy --no-install-recommends     awscli     bash-completion     build-essential     command-not-found     curl     emacs-nox     gdebi     git     jags     libcairo2-dev     libgdal-dev     libjq-dev     libmagick++-dev     libpq-dev     libpqxx-dev     libprotobuf-dev     libssh2-1-dev     libudunits2-dev     libv8-3.14-dev     lynx     nano     mdbtools-dev     openssh-client     postgresql-client-9.6     protobuf-compiler     python-dev     python3-dev     python-pip     python3-pip     unixodbc-dev     vim-nox     virtualenvwrapper     wget   && apt-get clean   && apt-file update   && update-command-not-found" shape="box"];
  "sha256:c60a3db8c93f29fe63799d4e10d586c924be480ba3bc8d8335b0016ff165fc25" [label="copy{src=/rstats-root-scripts, dest=/usr/local/src/}" shape="note"];
  "sha256:8f31926b35c08d372def77efa473479ba747eec827a862cd36e620fabfaa4971" [label="/bin/sh -c chmod +x  /usr/local/src/*.bash   && echo \"alias l='ls -ACF --color=auto'\" >> /etc/bash.bashrc   && echo \"alias ll='ls -ltrAF --color=auto'\" >> /etc/bash.bashrc" shape="box"];
  "sha256:c9d17e8d5b93acfb3d6a51d2d352c03f1ddb6dd4e592f010e3d39160ecba1760" [label="copy{src=/home-scripts, dest=/home/rstudio/},copy{src=/rstats-scripts, dest=/home/rstudio/}" shape="note"];
  "sha256:87624c3613d72a06c8b5e40a79a9e6522adb071f6f12aabcd00a485c9c79cb66" [label="/bin/sh -c chmod +x /home/rstudio/*.bash   && mkdir -p /home/rstudio/Projects/   && chown -R rstudio:rstudio /home/rstudio" shape="box"];
  "sha256:4a3f5fff271f993d6a5c1bfb2b3ec5c87937fd9151efaeb609de901d989a788f" [label="sha256:4a3f5fff271f993d6a5c1bfb2b3ec5c87937fd9151efaeb609de901d989a788f" shape="plaintext"];
  "sha256:fb5927b462ab4daa32ebfa4435217cd2474d347554fde4d05946b88ac6e524ba" -> "sha256:501b5a93446d80ae3fec642ef7cd3ade46955286367148e03f0ac57d714fd17e" [label=""];
  "sha256:f5bce27538ff04cc3a980235aaa9f72c85eba37fce0d77a7525aedf7f3ba80db" -> "sha256:501b5a93446d80ae3fec642ef7cd3ade46955286367148e03f0ac57d714fd17e" [label=""];
  "sha256:501b5a93446d80ae3fec642ef7cd3ade46955286367148e03f0ac57d714fd17e" -> "sha256:107622e60bfffda45326cea9b881ad11938b4cf8bab5f3ae2822c41e2f350f91" [label=""];
  "sha256:f5bce27538ff04cc3a980235aaa9f72c85eba37fce0d77a7525aedf7f3ba80db" -> "sha256:107622e60bfffda45326cea9b881ad11938b4cf8bab5f3ae2822c41e2f350f91" [label=""];
  "sha256:107622e60bfffda45326cea9b881ad11938b4cf8bab5f3ae2822c41e2f350f91" -> "sha256:d7791feb49236eb28590a999835898a2e8349d823c3a678d8dbf18248a6dd2f9" [label=""];
  "sha256:d7791feb49236eb28590a999835898a2e8349d823c3a678d8dbf18248a6dd2f9" -> "sha256:c60a3db8c93f29fe63799d4e10d586c924be480ba3bc8d8335b0016ff165fc25" [label=""];
  "sha256:f5bce27538ff04cc3a980235aaa9f72c85eba37fce0d77a7525aedf7f3ba80db" -> "sha256:c60a3db8c93f29fe63799d4e10d586c924be480ba3bc8d8335b0016ff165fc25" [label=""];
  "sha256:c60a3db8c93f29fe63799d4e10d586c924be480ba3bc8d8335b0016ff165fc25" -> "sha256:8f31926b35c08d372def77efa473479ba747eec827a862cd36e620fabfaa4971" [label=""];
  "sha256:8f31926b35c08d372def77efa473479ba747eec827a862cd36e620fabfaa4971" -> "sha256:c9d17e8d5b93acfb3d6a51d2d352c03f1ddb6dd4e592f010e3d39160ecba1760" [label=""];
  "sha256:f5bce27538ff04cc3a980235aaa9f72c85eba37fce0d77a7525aedf7f3ba80db" -> "sha256:c9d17e8d5b93acfb3d6a51d2d352c03f1ddb6dd4e592f010e3d39160ecba1760" [label=""];
  "sha256:c9d17e8d5b93acfb3d6a51d2d352c03f1ddb6dd4e592f010e3d39160ecba1760" -> "sha256:87624c3613d72a06c8b5e40a79a9e6522adb071f6f12aabcd00a485c9c79cb66" [label=""];
  "sha256:87624c3613d72a06c8b5e40a79a9e6522adb071f6f12aabcd00a485c9c79cb66" -> "sha256:4a3f5fff271f993d6a5c1bfb2b3ec5c87937fd9151efaeb609de901d989a788f" [label=""];
}

