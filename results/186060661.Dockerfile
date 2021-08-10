[app/sources/186060661.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:238c393e08b5668aa0f5a4d520b1e254e86194130737f8a79bf042386340be1b" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install ruby 1.9.1-p0 &&  PATH=/opt/rubies/ruby-1.9.1-p0/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:b44f729b2c18ebed67ad351ed48d393d8363982cd90311c923eb5be1f6ed26b4" [label="local://context" shape="ellipse"];
  "sha256:2e59651db53d064d37546f7bf95e908689531f716e33b40182d74585809f06f6" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:92e25f128c7a4fc12b0a59f1bec1878cf8c7d19f6fa7e736a189101dabae3104" [label="sha256:92e25f128c7a4fc12b0a59f1bec1878cf8c7d19f6fa7e736a189101dabae3104" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:238c393e08b5668aa0f5a4d520b1e254e86194130737f8a79bf042386340be1b" [label=""];
  "sha256:238c393e08b5668aa0f5a4d520b1e254e86194130737f8a79bf042386340be1b" -> "sha256:2e59651db53d064d37546f7bf95e908689531f716e33b40182d74585809f06f6" [label=""];
  "sha256:b44f729b2c18ebed67ad351ed48d393d8363982cd90311c923eb5be1f6ed26b4" -> "sha256:2e59651db53d064d37546f7bf95e908689531f716e33b40182d74585809f06f6" [label=""];
  "sha256:2e59651db53d064d37546f7bf95e908689531f716e33b40182d74585809f06f6" -> "sha256:92e25f128c7a4fc12b0a59f1bec1878cf8c7d19f6fa7e736a189101dabae3104" [label=""];
}

