[app/sources/186060523.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:5c5145d57816a94c58081ef0f3146207471e83f160898da458b33b29564df12c" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install jruby 1.1.1 &&  PATH=/opt/rubies/jruby-1.1.1/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:dd71da03278615d5d9db4b65fee5116f30c148b7c27196249f42d958a0675a44" [label="local://context" shape="ellipse"];
  "sha256:4a509a99bd79d6deb4bbfc6ec74cae3a6d2592f6ca22f786481ee83b295364f6" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:6d50289af75af6f982a1a2da3f070c91d4787be063649023335fa22a01a3f628" [label="sha256:6d50289af75af6f982a1a2da3f070c91d4787be063649023335fa22a01a3f628" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:5c5145d57816a94c58081ef0f3146207471e83f160898da458b33b29564df12c" [label=""];
  "sha256:5c5145d57816a94c58081ef0f3146207471e83f160898da458b33b29564df12c" -> "sha256:4a509a99bd79d6deb4bbfc6ec74cae3a6d2592f6ca22f786481ee83b295364f6" [label=""];
  "sha256:dd71da03278615d5d9db4b65fee5116f30c148b7c27196249f42d958a0675a44" -> "sha256:4a509a99bd79d6deb4bbfc6ec74cae3a6d2592f6ca22f786481ee83b295364f6" [label=""];
  "sha256:4a509a99bd79d6deb4bbfc6ec74cae3a6d2592f6ca22f786481ee83b295364f6" -> "sha256:6d50289af75af6f982a1a2da3f070c91d4787be063649023335fa22a01a3f628" [label=""];
}

