[app/sub_sources/128535619.Dockerfile]
digraph {
  "sha256:cfd023a49208ad056bcabd364e338fda7cbe8bce4256619cb8da68d92af8d435" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:cf210f550145654f4ab9524ecac6b4dc6b77fd99f1d22261fdac898b56a40122" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   bzip2   xz-utils   wget   libssl-dev   bsdtar   pkg-config" shape="box"];
  "sha256:f4a9e9350338bb22f0d1b754b40e4100800fdef38106b83a795588e6e4f67cf5" [label="copy{src=/dist-x86_64-dragonfly/build-toolchain.sh, dest=/tmp/}" shape="note"];
  "sha256:5f1c913d8b86deb70b926440a2abb2c080f3c4ac02c6ad38885a2d829f7a0f9b" [label="copy{src=/dist-x86_64-dragonfly/patch-toolchain, dest=/tmp/}" shape="note"];
  "sha256:ca86c11da566631c78947335c7fe1cd202d66a185a61114a3d91985732ef369c" [label="/bin/sh -c /tmp/build-toolchain.sh /tmp/patch-toolchain" shape="box"];
  "sha256:b30541af205ed7264687fd82f90b6c2ae5596bfbbd78c6dc73fb02e5056cc345" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:2ae4e499d81f4bc088fe37dfb0bd368036668afca917b267a4605af1cb834423" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:48023617c4186e2b77ce500dedb92503ed9c92d9768b77f1a06194fd7e27168f" [label="sha256:48023617c4186e2b77ce500dedb92503ed9c92d9768b77f1a06194fd7e27168f" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:cf210f550145654f4ab9524ecac6b4dc6b77fd99f1d22261fdac898b56a40122" [label=""];
  "sha256:cf210f550145654f4ab9524ecac6b4dc6b77fd99f1d22261fdac898b56a40122" -> "sha256:f4a9e9350338bb22f0d1b754b40e4100800fdef38106b83a795588e6e4f67cf5" [label=""];
  "sha256:cfd023a49208ad056bcabd364e338fda7cbe8bce4256619cb8da68d92af8d435" -> "sha256:f4a9e9350338bb22f0d1b754b40e4100800fdef38106b83a795588e6e4f67cf5" [label=""];
  "sha256:f4a9e9350338bb22f0d1b754b40e4100800fdef38106b83a795588e6e4f67cf5" -> "sha256:5f1c913d8b86deb70b926440a2abb2c080f3c4ac02c6ad38885a2d829f7a0f9b" [label=""];
  "sha256:cfd023a49208ad056bcabd364e338fda7cbe8bce4256619cb8da68d92af8d435" -> "sha256:5f1c913d8b86deb70b926440a2abb2c080f3c4ac02c6ad38885a2d829f7a0f9b" [label=""];
  "sha256:5f1c913d8b86deb70b926440a2abb2c080f3c4ac02c6ad38885a2d829f7a0f9b" -> "sha256:ca86c11da566631c78947335c7fe1cd202d66a185a61114a3d91985732ef369c" [label=""];
  "sha256:ca86c11da566631c78947335c7fe1cd202d66a185a61114a3d91985732ef369c" -> "sha256:b30541af205ed7264687fd82f90b6c2ae5596bfbbd78c6dc73fb02e5056cc345" [label=""];
  "sha256:cfd023a49208ad056bcabd364e338fda7cbe8bce4256619cb8da68d92af8d435" -> "sha256:b30541af205ed7264687fd82f90b6c2ae5596bfbbd78c6dc73fb02e5056cc345" [label=""];
  "sha256:b30541af205ed7264687fd82f90b6c2ae5596bfbbd78c6dc73fb02e5056cc345" -> "sha256:2ae4e499d81f4bc088fe37dfb0bd368036668afca917b267a4605af1cb834423" [label=""];
  "sha256:2ae4e499d81f4bc088fe37dfb0bd368036668afca917b267a4605af1cb834423" -> "sha256:48023617c4186e2b77ce500dedb92503ed9c92d9768b77f1a06194fd7e27168f" [label=""];
}

