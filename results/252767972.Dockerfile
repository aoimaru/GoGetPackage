[app/sources/252767972.Dockerfile]
digraph {
  "sha256:6063f7b2f43c7e82bde39c03012e0bcd6db68179a61ddc9e689155b4e14cfac0" [label="docker-image://docker.io/miksago/ubuntu-go:latest" shape="ellipse"];
  "sha256:695b102d4618ca350f00f3452236d767b2b8faf43a79c70d248a8a47e56d9275" [label="/bin/sh -c cd /root && git clone https://github.com/coreos/fleet.git && cd fleet && ./build" shape="box"];
  "sha256:2f4e9a51b8f2f00238f55ec16c84f66efa99b2f9c8200f6e54fda0167f0aaa54" [label="sha256:2f4e9a51b8f2f00238f55ec16c84f66efa99b2f9c8200f6e54fda0167f0aaa54" shape="plaintext"];
  "sha256:6063f7b2f43c7e82bde39c03012e0bcd6db68179a61ddc9e689155b4e14cfac0" -> "sha256:695b102d4618ca350f00f3452236d767b2b8faf43a79c70d248a8a47e56d9275" [label=""];
  "sha256:695b102d4618ca350f00f3452236d767b2b8faf43a79c70d248a8a47e56d9275" -> "sha256:2f4e9a51b8f2f00238f55ec16c84f66efa99b2f9c8200f6e54fda0167f0aaa54" [label=""];
}

