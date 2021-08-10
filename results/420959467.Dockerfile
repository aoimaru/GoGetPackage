[app/sources/420959467.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:91e267842db0a4631ff489a0eb0a31060b937e9caeedbf90d06ccaba2b42338a" [label="/bin/sh -c apk add --no-cache curl bash sudo" shape="box"];
  "sha256:adf5ccaf6bdd6db97ef0903cc3df77cb506f247b7cccc8741db6951932838e2b" [label="mkdir{path=/app}" shape="note"];
  "sha256:342280acd0ce40f7a696803ccf16c03cd01ca8a04b6c7df5a018f38a2b737240" [label="local://context" shape="ellipse"];
  "sha256:962032a86f286d5d44093048f6084307949782b681e14dd5476cbee75ccf448f" [label="copy{src=/bin/boot, dest=/app/bin/boot}" shape="note"];
  "sha256:cc238e0d69ce9f2dd912579bba73a81dae89fd50bf647f117d529d670a8f657a" [label="copy{src=/mock-s3-patch.diff, dest=/tmp/mock-s3-patch.diff}" shape="note"];
  "sha256:85e7842f0e133b260a4b112f66def8e1fe29f9901e40f82db64ab34420427a22" [label="copy{src=/build.sh, dest=/tmp/build.sh}" shape="note"];
  "sha256:f81f1f3e6ce92a2cba3c461d8a16d13d99a31bb0bcb429cc3d572854542e4b75" [label="/bin/sh -c DOCKER_BUILD=true /tmp/build.sh" shape="box"];
  "sha256:65d4104d255ada610f9f6fa05ff7be6248fcc73c3fafef74e38dadd699f18f91" [label="sha256:65d4104d255ada610f9f6fa05ff7be6248fcc73c3fafef74e38dadd699f18f91" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:91e267842db0a4631ff489a0eb0a31060b937e9caeedbf90d06ccaba2b42338a" [label=""];
  "sha256:91e267842db0a4631ff489a0eb0a31060b937e9caeedbf90d06ccaba2b42338a" -> "sha256:adf5ccaf6bdd6db97ef0903cc3df77cb506f247b7cccc8741db6951932838e2b" [label=""];
  "sha256:adf5ccaf6bdd6db97ef0903cc3df77cb506f247b7cccc8741db6951932838e2b" -> "sha256:962032a86f286d5d44093048f6084307949782b681e14dd5476cbee75ccf448f" [label=""];
  "sha256:342280acd0ce40f7a696803ccf16c03cd01ca8a04b6c7df5a018f38a2b737240" -> "sha256:962032a86f286d5d44093048f6084307949782b681e14dd5476cbee75ccf448f" [label=""];
  "sha256:962032a86f286d5d44093048f6084307949782b681e14dd5476cbee75ccf448f" -> "sha256:cc238e0d69ce9f2dd912579bba73a81dae89fd50bf647f117d529d670a8f657a" [label=""];
  "sha256:342280acd0ce40f7a696803ccf16c03cd01ca8a04b6c7df5a018f38a2b737240" -> "sha256:cc238e0d69ce9f2dd912579bba73a81dae89fd50bf647f117d529d670a8f657a" [label=""];
  "sha256:cc238e0d69ce9f2dd912579bba73a81dae89fd50bf647f117d529d670a8f657a" -> "sha256:85e7842f0e133b260a4b112f66def8e1fe29f9901e40f82db64ab34420427a22" [label=""];
  "sha256:342280acd0ce40f7a696803ccf16c03cd01ca8a04b6c7df5a018f38a2b737240" -> "sha256:85e7842f0e133b260a4b112f66def8e1fe29f9901e40f82db64ab34420427a22" [label=""];
  "sha256:85e7842f0e133b260a4b112f66def8e1fe29f9901e40f82db64ab34420427a22" -> "sha256:f81f1f3e6ce92a2cba3c461d8a16d13d99a31bb0bcb429cc3d572854542e4b75" [label=""];
  "sha256:f81f1f3e6ce92a2cba3c461d8a16d13d99a31bb0bcb429cc3d572854542e4b75" -> "sha256:65d4104d255ada610f9f6fa05ff7be6248fcc73c3fafef74e38dadd699f18f91" [label=""];
}

