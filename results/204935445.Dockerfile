[app/sources/204935445.Dockerfile]
digraph {
  "sha256:7cce4d1d466885a81355dd2670a04984262ca027accd3a1ed3b099831085bb9b" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:615c186c7198d908e470defb7d17af4b0d94e26820f2ce43918fe0a32ccb41eb" [label="/bin/sh -c apk add --update ca-certificates" shape="box"];
  "sha256:50a82d0dc5aafcb172831336272788214082181b92cc669e5f62d0982d5cc88e" [label="/bin/sh -c mkdir -p /infrakit/plugins /infrakit/configs /infrakit/logs" shape="box"];
  "sha256:14843ac570ab52ac9c0948c1e47e98394d48ec5618a07ca63483ad8ee234db7e" [label="copy{src=/build/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:0c7a41e350e8f3e62b787455931bc5a55eeddad33f5986345bc2852f25a92cad" [label="/bin/sh -c ln -s /usr/local/bin/infrakit-instance-aws /usr/bin/instance" shape="box"];
  "sha256:4768b5470ec21db591edb47291640db89b26dd59f813f30623e009e46fc874da" [label="/bin/sh -c ln -s /usr/local/bin/infrakit-metadata-aws /usr/bin/metadata" shape="box"];
  "sha256:c0d1d0edae8cda79ae2e612452e16799ef7de4c40768afef894b12ea58c88733" [label="sha256:c0d1d0edae8cda79ae2e612452e16799ef7de4c40768afef894b12ea58c88733" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:615c186c7198d908e470defb7d17af4b0d94e26820f2ce43918fe0a32ccb41eb" [label=""];
  "sha256:615c186c7198d908e470defb7d17af4b0d94e26820f2ce43918fe0a32ccb41eb" -> "sha256:50a82d0dc5aafcb172831336272788214082181b92cc669e5f62d0982d5cc88e" [label=""];
  "sha256:50a82d0dc5aafcb172831336272788214082181b92cc669e5f62d0982d5cc88e" -> "sha256:14843ac570ab52ac9c0948c1e47e98394d48ec5618a07ca63483ad8ee234db7e" [label=""];
  "sha256:7cce4d1d466885a81355dd2670a04984262ca027accd3a1ed3b099831085bb9b" -> "sha256:14843ac570ab52ac9c0948c1e47e98394d48ec5618a07ca63483ad8ee234db7e" [label=""];
  "sha256:14843ac570ab52ac9c0948c1e47e98394d48ec5618a07ca63483ad8ee234db7e" -> "sha256:0c7a41e350e8f3e62b787455931bc5a55eeddad33f5986345bc2852f25a92cad" [label=""];
  "sha256:0c7a41e350e8f3e62b787455931bc5a55eeddad33f5986345bc2852f25a92cad" -> "sha256:4768b5470ec21db591edb47291640db89b26dd59f813f30623e009e46fc874da" [label=""];
  "sha256:4768b5470ec21db591edb47291640db89b26dd59f813f30623e009e46fc874da" -> "sha256:c0d1d0edae8cda79ae2e612452e16799ef7de4c40768afef894b12ea58c88733" [label=""];
}

