[app/sources/351396245.Dockerfile]
digraph {
  "sha256:c4604b71e23833da9114b72affab25d5fe041f7ec5dbf802b30ed26038ac676b" [label="docker-image://docker.io/jenkins/jenkins:2.103@sha256:15e0a20cec93b7530391697a9c171461353db2969f7cc202ea880b64ef7dc9e2" shape="ellipse"];
  "sha256:f9e9a9ca3da219a65e745d40f03c701c2d61bda38336bc0e2466bcc872d82047" [label="/bin/sh -c apt-get update && \tapt-get install -y build-essential ant zip python doxygen curl vim git unzip zip && \tapt-get clean;" shape="box"];
  "sha256:7e483891f97762e835164b766274ec77bf295513b3ef07f81f19d4d02506e65e" [label="sha256:7e483891f97762e835164b766274ec77bf295513b3ef07f81f19d4d02506e65e" shape="plaintext"];
  "sha256:c4604b71e23833da9114b72affab25d5fe041f7ec5dbf802b30ed26038ac676b" -> "sha256:f9e9a9ca3da219a65e745d40f03c701c2d61bda38336bc0e2466bcc872d82047" [label=""];
  "sha256:f9e9a9ca3da219a65e745d40f03c701c2d61bda38336bc0e2466bcc872d82047" -> "sha256:7e483891f97762e835164b766274ec77bf295513b3ef07f81f19d4d02506e65e" [label=""];
}

