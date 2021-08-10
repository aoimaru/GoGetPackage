[app/sources/428463298.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:0143636b070f2bd7fa5f7c70ea7d203e72598dec6eb31c1fc231b1785aff1bb1" [label="/bin/sh -c apt-get update &&     apt-get -y install --no-install-recommends curl ca-certificates python2.7-dev python3 python-setuptools python3-setuptools libcurl4-gnutls-dev curl git libattr1-dev libfuse-dev libpq-dev python-pip unzip binutils build-essential ca-certificates" shape="box"];
  "sha256:da3d6d75314d5256916f50d31d85d6c0c42fe85186dd888214a9fb10d218fba8" [label="local://context" shape="ellipse"];
  "sha256:62e535262270f2cebaca427f8df3de72062ebcbe5c6c691ed31068d5c1430f6e" [label="copy{src=/generated/mpapis.asc, dest=/tmp/}" shape="note"];
  "sha256:30f549d6767e6b19a33a8a5ec31dbdb54d7884e1f225ff13c1ad017697ae3af1" [label="copy{src=/generated/pkuczynski.asc, dest=/tmp/}" shape="note"];
  "sha256:6e1131aed75abf851499baf2d1711eb56e21f67ac451b361ecb9a5a99d05fcd0" [label="/bin/sh -c gpg --import --no-tty /tmp/mpapis.asc &&     gpg --import --no-tty /tmp/pkuczynski.asc &&     curl -L https://get.rvm.io | bash -s stable &&     /usr/local/rvm/bin/rvm install 2.3 &&     /usr/local/rvm/bin/rvm alias create default ruby-2.3" shape="box"];
  "sha256:cdf3f6acf613196485cac517e77cd589b54ad0acd168620d85753f2b1b82b900" [label="/bin/sh -c mkdir -p /etc/udev/disabled" shape="box"];
  "sha256:aefd56d6b8b2e528d91fa6483d7fa7582f0bc8daf85f64b12e390d25f73438ea" [label="/bin/sh -c echo \"deb file:///arvados/packages/ubuntu1404/ /\" >>/etc/apt/sources.list" shape="box"];
  "sha256:3094b9579d7f22858d0c6c06d9ba5a584881aeedba3c1947ef6d4d9e50953942" [label="sha256:3094b9579d7f22858d0c6c06d9ba5a584881aeedba3c1947ef6d4d9e50953942" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:0143636b070f2bd7fa5f7c70ea7d203e72598dec6eb31c1fc231b1785aff1bb1" [label=""];
  "sha256:0143636b070f2bd7fa5f7c70ea7d203e72598dec6eb31c1fc231b1785aff1bb1" -> "sha256:62e535262270f2cebaca427f8df3de72062ebcbe5c6c691ed31068d5c1430f6e" [label=""];
  "sha256:da3d6d75314d5256916f50d31d85d6c0c42fe85186dd888214a9fb10d218fba8" -> "sha256:62e535262270f2cebaca427f8df3de72062ebcbe5c6c691ed31068d5c1430f6e" [label=""];
  "sha256:62e535262270f2cebaca427f8df3de72062ebcbe5c6c691ed31068d5c1430f6e" -> "sha256:30f549d6767e6b19a33a8a5ec31dbdb54d7884e1f225ff13c1ad017697ae3af1" [label=""];
  "sha256:da3d6d75314d5256916f50d31d85d6c0c42fe85186dd888214a9fb10d218fba8" -> "sha256:30f549d6767e6b19a33a8a5ec31dbdb54d7884e1f225ff13c1ad017697ae3af1" [label=""];
  "sha256:30f549d6767e6b19a33a8a5ec31dbdb54d7884e1f225ff13c1ad017697ae3af1" -> "sha256:6e1131aed75abf851499baf2d1711eb56e21f67ac451b361ecb9a5a99d05fcd0" [label=""];
  "sha256:6e1131aed75abf851499baf2d1711eb56e21f67ac451b361ecb9a5a99d05fcd0" -> "sha256:cdf3f6acf613196485cac517e77cd589b54ad0acd168620d85753f2b1b82b900" [label=""];
  "sha256:cdf3f6acf613196485cac517e77cd589b54ad0acd168620d85753f2b1b82b900" -> "sha256:aefd56d6b8b2e528d91fa6483d7fa7582f0bc8daf85f64b12e390d25f73438ea" [label=""];
  "sha256:aefd56d6b8b2e528d91fa6483d7fa7582f0bc8daf85f64b12e390d25f73438ea" -> "sha256:3094b9579d7f22858d0c6c06d9ba5a584881aeedba3c1947ef6d4d9e50953942" [label=""];
}

