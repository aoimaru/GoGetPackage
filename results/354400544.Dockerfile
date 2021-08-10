[app/sources/354400544.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:1dc47be9eaabe6fc220cbad2f28666f946a841fe1875da69c324200e4e8c4463" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update" shape="box"];
  "sha256:d790fc3c68711c0a9149a9bfe34b286c7015bc857f8d918a8c6fd3575ada5fb8" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y tftpd-hpa" shape="box"];
  "sha256:e43d788f6942a99c948338364a89f335af07843f5d74680b872df97b8771da21" [label="sha256:e43d788f6942a99c948338364a89f335af07843f5d74680b872df97b8771da21" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:1dc47be9eaabe6fc220cbad2f28666f946a841fe1875da69c324200e4e8c4463" [label=""];
  "sha256:1dc47be9eaabe6fc220cbad2f28666f946a841fe1875da69c324200e4e8c4463" -> "sha256:d790fc3c68711c0a9149a9bfe34b286c7015bc857f8d918a8c6fd3575ada5fb8" [label=""];
  "sha256:d790fc3c68711c0a9149a9bfe34b286c7015bc857f8d918a8c6fd3575ada5fb8" -> "sha256:e43d788f6942a99c948338364a89f335af07843f5d74680b872df97b8771da21" [label=""];
}

