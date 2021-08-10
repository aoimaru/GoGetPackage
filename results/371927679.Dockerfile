[app/sources/371927679.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6b7307e9bead146a0ae0805f1c9f2a504f96c0310b53d30bd2db8124a647b007" [label="/bin/sh -c apt-get update && apt-get install -y socat" shape="box"];
  "sha256:9fed01d0aa53d700db07a2493efffe628b11bac3bd577a9548ca6289f5b4c00a" [label="sha256:9fed01d0aa53d700db07a2493efffe628b11bac3bd577a9548ca6289f5b4c00a" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6b7307e9bead146a0ae0805f1c9f2a504f96c0310b53d30bd2db8124a647b007" [label=""];
  "sha256:6b7307e9bead146a0ae0805f1c9f2a504f96c0310b53d30bd2db8124a647b007" -> "sha256:9fed01d0aa53d700db07a2493efffe628b11bac3bd577a9548ca6289f5b4c00a" [label=""];
}

