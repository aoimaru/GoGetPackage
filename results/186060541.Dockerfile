[app/sources/186060541.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:89c69eeb68cffb3ccba47d2edcd516cce8f7b4337928f63eae82723fa7c44040" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install jruby 1.3.1 &&  PATH=/opt/rubies/jruby-1.3.1/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:ca71f3254e6df8418e2bcb1d50721d017286a837474d87e46905ac55eb63e720" [label="local://context" shape="ellipse"];
  "sha256:635c54ec7a131977514a04f85111282b91d3f0dd9bc3c56f18809c7fbb50bd8c" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:e0270c40a54360ecc96b2310bc1e6d62f7237fae670bcac67885c09466e02a08" [label="sha256:e0270c40a54360ecc96b2310bc1e6d62f7237fae670bcac67885c09466e02a08" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:89c69eeb68cffb3ccba47d2edcd516cce8f7b4337928f63eae82723fa7c44040" [label=""];
  "sha256:89c69eeb68cffb3ccba47d2edcd516cce8f7b4337928f63eae82723fa7c44040" -> "sha256:635c54ec7a131977514a04f85111282b91d3f0dd9bc3c56f18809c7fbb50bd8c" [label=""];
  "sha256:ca71f3254e6df8418e2bcb1d50721d017286a837474d87e46905ac55eb63e720" -> "sha256:635c54ec7a131977514a04f85111282b91d3f0dd9bc3c56f18809c7fbb50bd8c" [label=""];
  "sha256:635c54ec7a131977514a04f85111282b91d3f0dd9bc3c56f18809c7fbb50bd8c" -> "sha256:e0270c40a54360ecc96b2310bc1e6d62f7237fae670bcac67885c09466e02a08" [label=""];
}

