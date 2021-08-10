[app/sources/259715997.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:68a1dc5808092064fccb72e6f0c963c6d2194f57bae85a04a0d1856bc3e66e73" [label="/bin/sh -c mkdir -p \"/usr/src/app\"" shape="box"];
  "sha256:c474e61dbb6d890c2629b31087e71b3735c5ef8ed77e8f03cbeedc371f90f8f9" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:98dfe306947613fc73900a31a3f5ee6cc134b218445ff6b95e766443137db29b" [label="sha256:98dfe306947613fc73900a31a3f5ee6cc134b218445ff6b95e766443137db29b" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:68a1dc5808092064fccb72e6f0c963c6d2194f57bae85a04a0d1856bc3e66e73" [label=""];
  "sha256:68a1dc5808092064fccb72e6f0c963c6d2194f57bae85a04a0d1856bc3e66e73" -> "sha256:c474e61dbb6d890c2629b31087e71b3735c5ef8ed77e8f03cbeedc371f90f8f9" [label=""];
  "sha256:c474e61dbb6d890c2629b31087e71b3735c5ef8ed77e8f03cbeedc371f90f8f9" -> "sha256:98dfe306947613fc73900a31a3f5ee6cc134b218445ff6b95e766443137db29b" [label=""];
}

