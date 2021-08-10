[app/sources/319197302.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:cd04f28b8d17086b830b0b8f7e1f6484b4d51651e8d06432795ec598a710983d" [label="/bin/sh -c apk add --no-cache build-base ruby python3 chicken" shape="box"];
  "sha256:506e5277d42c7508b0616756d74a3902d5120dca6bd7edc76a46a954ec506e7c" [label="/bin/sh -c gem install rake --no-doc" shape="box"];
  "sha256:94f40acc3bf24e58c8da9b7965bdfc4c2f1028434084fd4992cf892a7921776b" [label="/bin/sh -c apk add --no-cache zsh gdb" shape="box"];
  "sha256:66a352c6a5754b64220e0523f89a6b01c00b50e689c5c342ccfffeeba757fb57" [label="/bin/sh -c gem install pry --no-doc" shape="box"];
  "sha256:148cde7ffd24b1b530c6ae949213183d7456406c59cd5330d12db37dab322fa7" [label="sha256:148cde7ffd24b1b530c6ae949213183d7456406c59cd5330d12db37dab322fa7" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:cd04f28b8d17086b830b0b8f7e1f6484b4d51651e8d06432795ec598a710983d" [label=""];
  "sha256:cd04f28b8d17086b830b0b8f7e1f6484b4d51651e8d06432795ec598a710983d" -> "sha256:506e5277d42c7508b0616756d74a3902d5120dca6bd7edc76a46a954ec506e7c" [label=""];
  "sha256:506e5277d42c7508b0616756d74a3902d5120dca6bd7edc76a46a954ec506e7c" -> "sha256:94f40acc3bf24e58c8da9b7965bdfc4c2f1028434084fd4992cf892a7921776b" [label=""];
  "sha256:94f40acc3bf24e58c8da9b7965bdfc4c2f1028434084fd4992cf892a7921776b" -> "sha256:66a352c6a5754b64220e0523f89a6b01c00b50e689c5c342ccfffeeba757fb57" [label=""];
  "sha256:66a352c6a5754b64220e0523f89a6b01c00b50e689c5c342ccfffeeba757fb57" -> "sha256:148cde7ffd24b1b530c6ae949213183d7456406c59cd5330d12db37dab322fa7" [label=""];
}

