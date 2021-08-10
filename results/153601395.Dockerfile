[app/sources/153601395.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -yq     build-essential     zlib1g-dev     libssl-dev     libreadline6-dev     libyaml-dev     libffi-dev" shape="box"];
  "sha256:f6a2bce1e8b553f602453745c4fd2d2dea980205dcdf1568e42adc21a08473bf" [label="http://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.2.tar.gz" shape="ellipse"];
  "sha256:c1121339b319cc838bac1c2751f4ae6e0d24d8d301b5780db2a521436c5b43b5" [label="copy{src=/ruby-2.4.2.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:d0b10445c1e5f968b238f8383dbe70a676948a40296672b777e0923943b8b4e4" [label="/bin/sh -c tar -zxf /tmp/ruby-${RUBY_VERSION}.tar.gz &&     (cd ruby-${RUBY_VERSION} && ./configure --disable-install-doc && make install) &&     rm -rf /tmp/ruby-${RUBY_VERSION}.tar.gz && rm -rf ruby-${RUBY_VERSION}" shape="box"];
  "sha256:b63b13e8a61a6e96ae502ce8d8925abb3af10430651b1db5d5d443b10f72a5b3" [label="/bin/sh -c gem install bundler --no-rdoc --no-ri" shape="box"];
  "sha256:00942f7fa29fb1fed5e7394a8ce371e254d09f1859327ed51d46a82d26206af7" [label="sha256:00942f7fa29fb1fed5e7394a8ce371e254d09f1859327ed51d46a82d26206af7" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" [label=""];
  "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" -> "sha256:c1121339b319cc838bac1c2751f4ae6e0d24d8d301b5780db2a521436c5b43b5" [label=""];
  "sha256:f6a2bce1e8b553f602453745c4fd2d2dea980205dcdf1568e42adc21a08473bf" -> "sha256:c1121339b319cc838bac1c2751f4ae6e0d24d8d301b5780db2a521436c5b43b5" [label=""];
  "sha256:c1121339b319cc838bac1c2751f4ae6e0d24d8d301b5780db2a521436c5b43b5" -> "sha256:d0b10445c1e5f968b238f8383dbe70a676948a40296672b777e0923943b8b4e4" [label=""];
  "sha256:d0b10445c1e5f968b238f8383dbe70a676948a40296672b777e0923943b8b4e4" -> "sha256:b63b13e8a61a6e96ae502ce8d8925abb3af10430651b1db5d5d443b10f72a5b3" [label=""];
  "sha256:b63b13e8a61a6e96ae502ce8d8925abb3af10430651b1db5d5d443b10f72a5b3" -> "sha256:00942f7fa29fb1fed5e7394a8ce371e254d09f1859327ed51d46a82d26206af7" [label=""];
}

