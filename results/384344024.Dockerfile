[app/sources/384344024.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:05ff929674c899e2e9ce06c4d93e57cbae2567ffe06edc6de3c8c950e3b60280" [label="/bin/sh -c apt-get -y install software-properties-common     && add-apt-repository ppa:freeradius/stable     && apt-get update     && apt-get -y install freeradius freeradius-mysql" shape="box"];
  "sha256:09e303729e0b64e2c56b0508ca3f1425dd27085db7190149ac2a26ec4ac87a81" [label="local://context" shape="ellipse"];
  "sha256:351481fe5d1ca2158ed33ad283c439efc2971dceafd74d74b5818c6c277d3eb3" [label="copy{src=/install.sh, dest=/opt/install.sh}" shape="note"];
  "sha256:b2a6558630e5f63d4bfa37fe4b55ac786bf46ca60d09cc3153e1211572063b8f" [label="sha256:b2a6558630e5f63d4bfa37fe4b55ac786bf46ca60d09cc3153e1211572063b8f" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" [label=""];
  "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" -> "sha256:05ff929674c899e2e9ce06c4d93e57cbae2567ffe06edc6de3c8c950e3b60280" [label=""];
  "sha256:05ff929674c899e2e9ce06c4d93e57cbae2567ffe06edc6de3c8c950e3b60280" -> "sha256:351481fe5d1ca2158ed33ad283c439efc2971dceafd74d74b5818c6c277d3eb3" [label=""];
  "sha256:09e303729e0b64e2c56b0508ca3f1425dd27085db7190149ac2a26ec4ac87a81" -> "sha256:351481fe5d1ca2158ed33ad283c439efc2971dceafd74d74b5818c6c277d3eb3" [label=""];
  "sha256:351481fe5d1ca2158ed33ad283c439efc2971dceafd74d74b5818c6c277d3eb3" -> "sha256:b2a6558630e5f63d4bfa37fe4b55ac786bf46ca60d09cc3153e1211572063b8f" [label=""];
}

