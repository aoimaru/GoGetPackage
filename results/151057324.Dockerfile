[app/sources/151057324.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:db6214de03ba5da21dfef7df501d1ee34488ed55b37476f5d4f783b78ccc4ffd" [label="/bin/sh -c apt-get install dnsmasq -y" shape="box"];
  "sha256:eb7b2a182c5bf82db50a446a267f772af5b52437e04169354502ac30279ffff8" [label="/bin/sh -c mkdir -p /var/lib/tftpboot" shape="box"];
  "sha256:5c3f16797752d7d9854c0300d6355db0df22309194f3a58feada11a6f418364c" [label="sha256:5c3f16797752d7d9854c0300d6355db0df22309194f3a58feada11a6f418364c" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:db6214de03ba5da21dfef7df501d1ee34488ed55b37476f5d4f783b78ccc4ffd" [label=""];
  "sha256:db6214de03ba5da21dfef7df501d1ee34488ed55b37476f5d4f783b78ccc4ffd" -> "sha256:eb7b2a182c5bf82db50a446a267f772af5b52437e04169354502ac30279ffff8" [label=""];
  "sha256:eb7b2a182c5bf82db50a446a267f772af5b52437e04169354502ac30279ffff8" -> "sha256:5c3f16797752d7d9854c0300d6355db0df22309194f3a58feada11a6f418364c" [label=""];
}

