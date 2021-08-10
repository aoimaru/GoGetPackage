[app/sources/320094801.Dockerfile]
digraph {
  "sha256:0326b7178a775ac842c45349bc44c27dde93ad734dc9fe7df033a92668836dfd" [label="docker-image://docker.io/webdevops/php:centos-7-php7@sha256:455e7155ca67bee857835e3a379d293b98ea8ddbe0765f929942557dc05eaca1" shape="ellipse"];
  "sha256:d41938afbb4c649e1871417a2a030184a25fff436cbb3f1b9f1951e3a234de17" [label="local://context" shape="ellipse"];
  "sha256:b7dc86defeb2847c45152aa7ed4e75fda23cd903f974d6e3645c3645eafafe62" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:0056808fc6fd4a34594f405ec1e2463ae047ebe0a79fce1245928ffc6fee861b" [label="/bin/sh -c set -x     && yum-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:f0fedf58ebb03093c08e05593b4e66a017b3e4e3ab174d939d3371d1899efd3d" [label="sha256:f0fedf58ebb03093c08e05593b4e66a017b3e4e3ab174d939d3371d1899efd3d" shape="plaintext"];
  "sha256:0326b7178a775ac842c45349bc44c27dde93ad734dc9fe7df033a92668836dfd" -> "sha256:b7dc86defeb2847c45152aa7ed4e75fda23cd903f974d6e3645c3645eafafe62" [label=""];
  "sha256:d41938afbb4c649e1871417a2a030184a25fff436cbb3f1b9f1951e3a234de17" -> "sha256:b7dc86defeb2847c45152aa7ed4e75fda23cd903f974d6e3645c3645eafafe62" [label=""];
  "sha256:b7dc86defeb2847c45152aa7ed4e75fda23cd903f974d6e3645c3645eafafe62" -> "sha256:0056808fc6fd4a34594f405ec1e2463ae047ebe0a79fce1245928ffc6fee861b" [label=""];
  "sha256:0056808fc6fd4a34594f405ec1e2463ae047ebe0a79fce1245928ffc6fee861b" -> "sha256:f0fedf58ebb03093c08e05593b4e66a017b3e4e3ab174d939d3371d1899efd3d" [label=""];
}

