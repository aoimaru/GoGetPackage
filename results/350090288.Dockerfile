[app/sources/350090288.Dockerfile]
digraph {
  "sha256:a4febb8cbd948a1f3feb0764f0d232cef8d6f70c8c2a0cfc58c45c5dc0c79411" [label="docker-image://docker.io/google/debian:jessie" shape="ellipse"];
  "sha256:4e97cf8113304824cc7545aa20dc194bae84a2d7208ff66f0fa84b7a6d635a39" [label="local://context" shape="ellipse"];
  "sha256:e2e72d904011711c020e5d8530f891f6e04dce426baf214dfd962b04e2db9720" [label="copy{src=/files, dest=/}" shape="note"];
  "sha256:a726100134eb07ee2a2bf4f95c1d11c0e0023e182fcd6b2459fcccc7b308b715" [label="/bin/sh -c mv /java.list /etc/apt/sources.list.d/java.list   && apt-get update   && apt-get -qq -y install --no-install-recommends procps openjdk-8-jre-headless libjemalloc1 curl     localepurge   && curl -L https://github.com/Yelp/dumb-init/releases/download/v${DI_VERSION}/dumb-init_${DI_VERSION}_amd64 > /sbin/dumb-init   && echo \"$DI_SHA  /sbin/dumb-init\" | sha1sum -c -   && mv /cassandra.list /etc/apt/sources.list.d/cassandra.list   && gpg --keyserver pgp.mit.edu --recv-keys F758CE318D77295D   && gpg --export --armor F758CE318D77295D | apt-key add -   && gpg --keyserver pgp.mit.edu --recv-keys 2B5C1B00   && gpg --export --armor 2B5C1B00 | apt-key add -   && gpg --keyserver pgp.mit.edu --recv-keys 0353B12C   && gpg --export --armor 0353B12C | apt-key add -   && apt-get update   && apt-get -qq -y install --no-install-recommends curl cassandra localepurge   && chmod a+rx /run.sh /sbin/dumb-init /ready-probe.sh   && mkdir -p /cassandra_data/data   && mv /logback.xml /cassandra.yaml /etc/cassandra/   && apt-get -y purge curl localepurge   && apt-get clean   && rm -rf         doc         man         info         locale         /var/lib/apt/lists/*         /var/log/*         /var/cache/debconf/*         common-licenses         ~/.bashrc         /etc/systemd         /lib/lsb         /lib/udev         /usr/share/doc/         /usr/share/doc-base/         /usr/share/man/         /tmp/*" shape="box"];
  "sha256:b534f2f6e5896a0bd10dddebf6a2400942ce0100a1eba41048c6b93562183af0" [label="sha256:b534f2f6e5896a0bd10dddebf6a2400942ce0100a1eba41048c6b93562183af0" shape="plaintext"];
  "sha256:a4febb8cbd948a1f3feb0764f0d232cef8d6f70c8c2a0cfc58c45c5dc0c79411" -> "sha256:e2e72d904011711c020e5d8530f891f6e04dce426baf214dfd962b04e2db9720" [label=""];
  "sha256:4e97cf8113304824cc7545aa20dc194bae84a2d7208ff66f0fa84b7a6d635a39" -> "sha256:e2e72d904011711c020e5d8530f891f6e04dce426baf214dfd962b04e2db9720" [label=""];
  "sha256:e2e72d904011711c020e5d8530f891f6e04dce426baf214dfd962b04e2db9720" -> "sha256:a726100134eb07ee2a2bf4f95c1d11c0e0023e182fcd6b2459fcccc7b308b715" [label=""];
  "sha256:a726100134eb07ee2a2bf4f95c1d11c0e0023e182fcd6b2459fcccc7b308b715" -> "sha256:b534f2f6e5896a0bd10dddebf6a2400942ce0100a1eba41048c6b93562183af0" [label=""];
}

