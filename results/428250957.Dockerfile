[app/sources/428250957.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:f130b2816a4c1cc904bf961af2cc906a4ea7828f38b20f3eebd96018fc1912e3" [label="/bin/sh -c apt-get -q update &&     DEBIAN_FRONTEND=noninteractive apt-get -q install -y --no-install-recommends         coffeescript         debhelper         devscripts         dh-virtualenv         dpkg-dev         gcc         gdebi-core         git         help2man         libffi-dev         libgpgme11         libssl-dev         libdb5.3-dev         libyaml-dev         libssl-dev         libffi-dev         python3.6-dev         python-pip         python-tox         wget     && apt-get -q clean" shape="box"];
  "sha256:efa351f1c3209507928f53dfbfa1550d6e81b21d31ed72741aa028e74835e06f" [label="mkdir{path=/work}" shape="note"];
  "sha256:a9f57421afd96079902a3422fd1fb38324f87896c24d6d0911ace22c8bfffbcf" [label="sha256:a9f57421afd96079902a3422fd1fb38324f87896c24d6d0911ace22c8bfffbcf" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:f130b2816a4c1cc904bf961af2cc906a4ea7828f38b20f3eebd96018fc1912e3" [label=""];
  "sha256:f130b2816a4c1cc904bf961af2cc906a4ea7828f38b20f3eebd96018fc1912e3" -> "sha256:efa351f1c3209507928f53dfbfa1550d6e81b21d31ed72741aa028e74835e06f" [label=""];
  "sha256:efa351f1c3209507928f53dfbfa1550d6e81b21d31ed72741aa028e74835e06f" -> "sha256:a9f57421afd96079902a3422fd1fb38324f87896c24d6d0911ace22c8bfffbcf" [label=""];
}

