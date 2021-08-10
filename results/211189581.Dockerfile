[app/sources/211189581.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:7e156a35d7fc7b3dda0df18d8ca26ecfa4e326e65d339aba41d193f9b20b75db" [label="/bin/sh -c apk add --no-cache figlet" shape="box"];
  "sha256:dbcd5e816ff13687559841475bd7a248c5d48acd3dab404034c812e0099ea42f" [label="sha256:dbcd5e816ff13687559841475bd7a248c5d48acd3dab404034c812e0099ea42f" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:7e156a35d7fc7b3dda0df18d8ca26ecfa4e326e65d339aba41d193f9b20b75db" [label=""];
  "sha256:7e156a35d7fc7b3dda0df18d8ca26ecfa4e326e65d339aba41d193f9b20b75db" -> "sha256:dbcd5e816ff13687559841475bd7a248c5d48acd3dab404034c812e0099ea42f" [label=""];
}

