[app/sources/153601389.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -yq     build-essential     zlib1g-dev     libssl-dev     libreadline6-dev     libyaml-dev     libffi-dev" shape="box"];
  "sha256:416a899d4d2bda0e81e24765a45e2a0ad70c7728d667f374788e19754fa482bb" [label="http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.2.tar.gz" shape="ellipse"];
  "sha256:dfa1cf4147c6720076948020341cc6770a56a6d8ec9e92cf9f9789adf62a9035" [label="copy{src=/ruby-2.2.2.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:efd73649027c744e23dfdbfd3a9c1c7a80a451b51253e8b869cd906f243e1af5" [label="/bin/sh -c tar -zxf /tmp/ruby-${RUBY_VERSION}.tar.gz &&     (cd ruby-${RUBY_VERSION} && ./configure --disable-install-doc && make install) &&     rm -rf /tmp/ruby-${RUBY_VERSION}.tar.gz && rm -rf ruby-${RUBY_VERSION}" shape="box"];
  "sha256:8b86305bcfc1066d10c69d075983504e2b2f70459f4b6e9fb80e788810945776" [label="/bin/sh -c gem install bundler --no-rdoc --no-ri" shape="box"];
  "sha256:67a70a860ce791c84d82b4599dee17a1814b4730a31f4f103b0127202dbec9ce" [label="sha256:67a70a860ce791c84d82b4599dee17a1814b4730a31f4f103b0127202dbec9ce" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" [label=""];
  "sha256:66c3a90ade6a3c040a41880f7bddff2ac60bc37549863ef4d525856efb3b3ad3" -> "sha256:dfa1cf4147c6720076948020341cc6770a56a6d8ec9e92cf9f9789adf62a9035" [label=""];
  "sha256:416a899d4d2bda0e81e24765a45e2a0ad70c7728d667f374788e19754fa482bb" -> "sha256:dfa1cf4147c6720076948020341cc6770a56a6d8ec9e92cf9f9789adf62a9035" [label=""];
  "sha256:dfa1cf4147c6720076948020341cc6770a56a6d8ec9e92cf9f9789adf62a9035" -> "sha256:efd73649027c744e23dfdbfd3a9c1c7a80a451b51253e8b869cd906f243e1af5" [label=""];
  "sha256:efd73649027c744e23dfdbfd3a9c1c7a80a451b51253e8b869cd906f243e1af5" -> "sha256:8b86305bcfc1066d10c69d075983504e2b2f70459f4b6e9fb80e788810945776" [label=""];
  "sha256:8b86305bcfc1066d10c69d075983504e2b2f70459f4b6e9fb80e788810945776" -> "sha256:67a70a860ce791c84d82b4599dee17a1814b4730a31f4f103b0127202dbec9ce" [label=""];
}

