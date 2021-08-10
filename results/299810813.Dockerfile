[app/sources/299810813.Dockerfile]
digraph {
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" [label="docker-image://docker.io/library/ubuntu:wily" shape="ellipse"];
  "sha256:c78d08c8545a724643d23649e1eb1bb38a35f17e2ac3f6690b51590747fb209e" [label="/bin/sh -c apt-get update &&     apt-get upgrade -q -y &&     apt-get dist-upgrade -q -y &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 923F6CA9 &&     echo \"deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu wily main\" | tee -a /etc/apt/sources.list.d/ethereum.list &&     apt-get update &&     apt-get install -q -y gdbix" shape="box"];
  "sha256:e6cd4b3b1d45601b2d1cf24db057243bf7e27c14a7e1d5ea6c0882dc2ffea8d0" [label="sha256:e6cd4b3b1d45601b2d1cf24db057243bf7e27c14a7e1d5ea6c0882dc2ffea8d0" shape="plaintext"];
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" -> "sha256:c78d08c8545a724643d23649e1eb1bb38a35f17e2ac3f6690b51590747fb209e" [label=""];
  "sha256:c78d08c8545a724643d23649e1eb1bb38a35f17e2ac3f6690b51590747fb209e" -> "sha256:e6cd4b3b1d45601b2d1cf24db057243bf7e27c14a7e1d5ea6c0882dc2ffea8d0" [label=""];
}

