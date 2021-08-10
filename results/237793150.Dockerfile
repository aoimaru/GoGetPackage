[app/sources/237793150.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:ed555f6db03d3e73ebc4c591a5364fa17e53e7f113d15ff3064f45ff2096fa3c" [label="mkdir{path=/data}" shape="note"];
  "sha256:9caab9e4d16e5b634c4b1eecad516068834de19fb3030c920c7a6ac6f15d72e2" [label="local://context" shape="ellipse"];
  "sha256:f5314f320191f58def5f0fdac8c48c63603944ba208946f23631a88d513ec1a9" [label="copy{src=/run, dest=/usr/local/bin/run}" shape="note"];
  "sha256:5e93c227cae24d8a10ce5a0291807a19f0dd442fb0c370034b5e8e769b059485" [label="chmod +x /usr/local/bin/run" shape="box"];
  "sha256:d0fc7caad9cb2943798f4bc567178ec88b0ed361fc61bcc8dd5ae9a158a71724" [label="sha256:d0fc7caad9cb2943798f4bc567178ec88b0ed361fc61bcc8dd5ae9a158a71724" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:ed555f6db03d3e73ebc4c591a5364fa17e53e7f113d15ff3064f45ff2096fa3c" [label=""];
  "sha256:ed555f6db03d3e73ebc4c591a5364fa17e53e7f113d15ff3064f45ff2096fa3c" -> "sha256:f5314f320191f58def5f0fdac8c48c63603944ba208946f23631a88d513ec1a9" [label=""];
  "sha256:9caab9e4d16e5b634c4b1eecad516068834de19fb3030c920c7a6ac6f15d72e2" -> "sha256:f5314f320191f58def5f0fdac8c48c63603944ba208946f23631a88d513ec1a9" [label=""];
  "sha256:f5314f320191f58def5f0fdac8c48c63603944ba208946f23631a88d513ec1a9" -> "sha256:5e93c227cae24d8a10ce5a0291807a19f0dd442fb0c370034b5e8e769b059485" [label=""];
  "sha256:5e93c227cae24d8a10ce5a0291807a19f0dd442fb0c370034b5e8e769b059485" -> "sha256:d0fc7caad9cb2943798f4bc567178ec88b0ed361fc61bcc8dd5ae9a158a71724" [label=""];
}

