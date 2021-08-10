[app/sources/186564493.Dockerfile]
digraph {
  "sha256:b0b818bbc07e8a9d110b1a50d3ce0cf3153ecdfa79448f9125a7a0896d0315f2" [label="docker-image://docker.io/library/ubuntu_javabridge:latest" shape="ellipse"];
  "sha256:d4341ef18f9de351d9c61c8b011aea80d6538bf43a7237651e032bc87443842d" [label="/bin/sh -c apt-get install -y cython git" shape="box"];
  "sha256:1647e2a2421badc1c27087c3b59d00661031acda0bf185e23ae3f0199d4a47fa" [label="sha256:1647e2a2421badc1c27087c3b59d00661031acda0bf185e23ae3f0199d4a47fa" shape="plaintext"];
  "sha256:b0b818bbc07e8a9d110b1a50d3ce0cf3153ecdfa79448f9125a7a0896d0315f2" -> "sha256:d4341ef18f9de351d9c61c8b011aea80d6538bf43a7237651e032bc87443842d" [label=""];
  "sha256:d4341ef18f9de351d9c61c8b011aea80d6538bf43a7237651e032bc87443842d" -> "sha256:1647e2a2421badc1c27087c3b59d00661031acda0bf185e23ae3f0199d4a47fa" [label=""];
}

