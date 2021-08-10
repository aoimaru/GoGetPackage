[app/sources/205248489.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:2ab6b79b8932561434745cd7e50a0692fe2b7a047d3ade38bd223c9a6ae3156a" [label="/bin/sh -c set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         openssl     && wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\"     && wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\"     && export GNUPGHOME=\"$(mktemp -d)\"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps" shape="box"];
  "sha256:97ed58c91040665c161962651215bc610661785e72b0edff4ac777099a376d95" [label="local://context" shape="ellipse"];
  "sha256:a2445cc677ec4a562e972eb1fb9e49af89dcea7af4cf61d751ae707b02ba7cbd" [label="copy{src=/gosu-entrypoint.sh, dest=/}" shape="note"];
  "sha256:92d7d7ef73cd2c664316c3f2be3a0e2fbde0a1b3798141b9cb4030b36e60b306" [label="/bin/sh -c chmod +x /gosu-entrypoint.sh" shape="box"];
  "sha256:6906899b8c6922ca7e41d7a5d3b93881db6c879130b3db9fcd9b34b9f30c185d" [label="sha256:6906899b8c6922ca7e41d7a5d3b93881db6c879130b3db9fcd9b34b9f30c185d" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:2ab6b79b8932561434745cd7e50a0692fe2b7a047d3ade38bd223c9a6ae3156a" [label=""];
  "sha256:2ab6b79b8932561434745cd7e50a0692fe2b7a047d3ade38bd223c9a6ae3156a" -> "sha256:a2445cc677ec4a562e972eb1fb9e49af89dcea7af4cf61d751ae707b02ba7cbd" [label=""];
  "sha256:97ed58c91040665c161962651215bc610661785e72b0edff4ac777099a376d95" -> "sha256:a2445cc677ec4a562e972eb1fb9e49af89dcea7af4cf61d751ae707b02ba7cbd" [label=""];
  "sha256:a2445cc677ec4a562e972eb1fb9e49af89dcea7af4cf61d751ae707b02ba7cbd" -> "sha256:92d7d7ef73cd2c664316c3f2be3a0e2fbde0a1b3798141b9cb4030b36e60b306" [label=""];
  "sha256:92d7d7ef73cd2c664316c3f2be3a0e2fbde0a1b3798141b9cb4030b36e60b306" -> "sha256:6906899b8c6922ca7e41d7a5d3b93881db6c879130b3db9fcd9b34b9f30c185d" [label=""];
}

