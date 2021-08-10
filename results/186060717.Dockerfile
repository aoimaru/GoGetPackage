[app/sources/186060717.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:7415f12434fe9f5ce06b8048669fafdbffad5d3f69a923babbe8e179e5010a34" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install ruby 1.9.3-p484 &&  PATH=/opt/rubies/ruby-1.9.3-p484/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:1372ac5575a9bb91cf90ffe400bea820d52c9527b871ac71ccb38445347af945" [label="local://context" shape="ellipse"];
  "sha256:ae151f33c9c964dc3f76f64914e284eac7eb87bdcc43aa7797d58d29e2bdc36c" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:4029817f114388238f4f55d636d2ccd21a6f47b7dbdd4ad1307563d598274534" [label="sha256:4029817f114388238f4f55d636d2ccd21a6f47b7dbdd4ad1307563d598274534" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:7415f12434fe9f5ce06b8048669fafdbffad5d3f69a923babbe8e179e5010a34" [label=""];
  "sha256:7415f12434fe9f5ce06b8048669fafdbffad5d3f69a923babbe8e179e5010a34" -> "sha256:ae151f33c9c964dc3f76f64914e284eac7eb87bdcc43aa7797d58d29e2bdc36c" [label=""];
  "sha256:1372ac5575a9bb91cf90ffe400bea820d52c9527b871ac71ccb38445347af945" -> "sha256:ae151f33c9c964dc3f76f64914e284eac7eb87bdcc43aa7797d58d29e2bdc36c" [label=""];
  "sha256:ae151f33c9c964dc3f76f64914e284eac7eb87bdcc43aa7797d58d29e2bdc36c" -> "sha256:4029817f114388238f4f55d636d2ccd21a6f47b7dbdd4ad1307563d598274534" [label=""];
}

