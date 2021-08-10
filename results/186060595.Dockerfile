[app/sources/186060595.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:33517fa3d100879aeb64b2e34c4f4dc2e562a6a34c6786d47efccb37952b9010" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install jruby 1.7.14 &&  PATH=/opt/rubies/jruby-1.7.14/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:0a1b464bf9ff88f67172c582c557d2aa917f272d69c50ca5791ba9e71a17d3dc" [label="local://context" shape="ellipse"];
  "sha256:dca3e9203f38b91565e2569fd1aae05ae31e2b53ff789ea8ce4026de4011fcaa" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:0f1c4d431488e860d1b0d27a95882eb16f76a2a5fc90d9b5c54919f88b954ad0" [label="sha256:0f1c4d431488e860d1b0d27a95882eb16f76a2a5fc90d9b5c54919f88b954ad0" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:33517fa3d100879aeb64b2e34c4f4dc2e562a6a34c6786d47efccb37952b9010" [label=""];
  "sha256:33517fa3d100879aeb64b2e34c4f4dc2e562a6a34c6786d47efccb37952b9010" -> "sha256:dca3e9203f38b91565e2569fd1aae05ae31e2b53ff789ea8ce4026de4011fcaa" [label=""];
  "sha256:0a1b464bf9ff88f67172c582c557d2aa917f272d69c50ca5791ba9e71a17d3dc" -> "sha256:dca3e9203f38b91565e2569fd1aae05ae31e2b53ff789ea8ce4026de4011fcaa" [label=""];
  "sha256:dca3e9203f38b91565e2569fd1aae05ae31e2b53ff789ea8ce4026de4011fcaa" -> "sha256:0f1c4d431488e860d1b0d27a95882eb16f76a2a5fc90d9b5c54919f88b954ad0" [label=""];
}

