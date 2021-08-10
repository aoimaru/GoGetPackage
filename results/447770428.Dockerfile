[app/sources/447770428.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:037e4c718a0b18fe1cf0b04ee7c12fcee3b868d410ef6fc49896e81b5d57cf6d" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     fakeroot" shape="box"];
  "sha256:e0c7dc92b0ea946e9b9155656395d40dd43c28fc82625e43fae26cb9bcc5641d" [label="sha256:e0c7dc92b0ea946e9b9155656395d40dd43c28fc82625e43fae26cb9bcc5641d" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:037e4c718a0b18fe1cf0b04ee7c12fcee3b868d410ef6fc49896e81b5d57cf6d" [label=""];
  "sha256:037e4c718a0b18fe1cf0b04ee7c12fcee3b868d410ef6fc49896e81b5d57cf6d" -> "sha256:e0c7dc92b0ea946e9b9155656395d40dd43c28fc82625e43fae26cb9bcc5641d" [label=""];
}

