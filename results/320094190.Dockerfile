[app/sources/320094190.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:aa77c46a4f19fdf699c89dae055f5971f41b086d9280b882244f7ec60d4b6cb5" [label="/bin/sh -c mkdir -v /github" shape="box"];
  "sha256:4fa4b1ab4051ab9c00571ec334358bdf316919a2814e636cf7ab298bb82373aa" [label="mkdir{path=/github}" shape="note"];
  "sha256:251a3fd0b84af346dc6854f8967886712c5c20fc58af15c40c08304932485139" [label="/bin/sh -c bash -c '     set -euxo pipefail &&     x=nagios-plugins &&     apt-get update &&     apt-get install -y git make &&     git clone https://github.com/harisekhon/$x /github/$x &&     cd /github/$x &&     make build zookeeper &&     make apt-packages-remove &&     apt-get autoremove -y &&     apt-get clean &&     make test deep-clean &&     apt-get remove -y make &&     apt-get autoremove -y &&     apt-get clean &&     bash-tools/check_docker_clean.sh &&     tests/help.sh     '" shape="box"];
  "sha256:c19aa3dcfc9e260f096fabfbf7e757bda12bfcb07234d727b5f1fb030ac598be" [label="mkdir{path=/github/nagios-plugins}" shape="note"];
  "sha256:0c2484264b1225b7ecc2a2e98f6fff43882938210b76adf774e84456d2c0a60b" [label="sha256:0c2484264b1225b7ecc2a2e98f6fff43882938210b76adf774e84456d2c0a60b" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:aa77c46a4f19fdf699c89dae055f5971f41b086d9280b882244f7ec60d4b6cb5" [label=""];
  "sha256:aa77c46a4f19fdf699c89dae055f5971f41b086d9280b882244f7ec60d4b6cb5" -> "sha256:4fa4b1ab4051ab9c00571ec334358bdf316919a2814e636cf7ab298bb82373aa" [label=""];
  "sha256:4fa4b1ab4051ab9c00571ec334358bdf316919a2814e636cf7ab298bb82373aa" -> "sha256:251a3fd0b84af346dc6854f8967886712c5c20fc58af15c40c08304932485139" [label=""];
  "sha256:251a3fd0b84af346dc6854f8967886712c5c20fc58af15c40c08304932485139" -> "sha256:c19aa3dcfc9e260f096fabfbf7e757bda12bfcb07234d727b5f1fb030ac598be" [label=""];
  "sha256:c19aa3dcfc9e260f096fabfbf7e757bda12bfcb07234d727b5f1fb030ac598be" -> "sha256:0c2484264b1225b7ecc2a2e98f6fff43882938210b76adf774e84456d2c0a60b" [label=""];
}

