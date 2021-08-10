[app/sources/243132962.Dockerfile]
digraph {
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" [label="docker-image://docker.io/ppc64le/ubuntu:16.04" shape="ellipse"];
  "sha256:5ec5495bc1cbff18f45c2e4be11f57c0762a258a4b2b02503f5e95f695350be4" [label="/bin/sh -c apt-get update         && apt-get install -y git build-essential libtool m4 automake linux-headers-$(uname -r)" shape="box"];
  "sha256:22d17c6dd7aeff80b62226ec34214417ce45fb630e8e52aedca786821a4311a0" [label="/bin/sh -c git clone git://git.hpdd.intel.com/fs/lustre-release.git && cd lustre-release && sh autogen.sh && ./configure --with-linux=/lib/modules/$(uname -r)/build/ && make && make install" shape="box"];
  "sha256:5062ceefe963598da53cdc304d07b085d16697aabc57f88f6f9edcdb0eecad01" [label="sha256:5062ceefe963598da53cdc304d07b085d16697aabc57f88f6f9edcdb0eecad01" shape="plaintext"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" -> "sha256:5ec5495bc1cbff18f45c2e4be11f57c0762a258a4b2b02503f5e95f695350be4" [label=""];
  "sha256:5ec5495bc1cbff18f45c2e4be11f57c0762a258a4b2b02503f5e95f695350be4" -> "sha256:22d17c6dd7aeff80b62226ec34214417ce45fb630e8e52aedca786821a4311a0" [label=""];
  "sha256:22d17c6dd7aeff80b62226ec34214417ce45fb630e8e52aedca786821a4311a0" -> "sha256:5062ceefe963598da53cdc304d07b085d16697aabc57f88f6f9edcdb0eecad01" [label=""];
}

