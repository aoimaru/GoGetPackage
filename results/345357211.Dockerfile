[app/sources/345357211.Dockerfile]
digraph {
  "sha256:38195d832925b82ae6ba5dc356f16ca5bec5ec41189b92d034902bcdf7d232d6" [label="docker-image://docker.io/balenalib/orangepi-plus2-fedora:26-run" shape="ellipse"];
  "sha256:f98605ac0dd9b6d62aa5ac07140f7d699185851c3f737ae6b3b43f2bf83a9f67" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:d2bba9741519a926cce924b23caceee35ab8351d78d5157709c6345369b2d71b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:756e218c3afefc8c0d9c4a65f7007fdac21730d28f4d6203ea2ffe48473c2da3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2b05bd06a99b9e17c3db3e7d195b4a7836a77c5ce0e86f43017ecab6b75c276a" [label="mkdir{path=/go}" shape="note"];
  "sha256:d91d48ea6d07cb38b3464cdad6abc31db9582cd0475365ef6f8835e1a5636c19" [label="sha256:d91d48ea6d07cb38b3464cdad6abc31db9582cd0475365ef6f8835e1a5636c19" shape="plaintext"];
  "sha256:38195d832925b82ae6ba5dc356f16ca5bec5ec41189b92d034902bcdf7d232d6" -> "sha256:f98605ac0dd9b6d62aa5ac07140f7d699185851c3f737ae6b3b43f2bf83a9f67" [label=""];
  "sha256:f98605ac0dd9b6d62aa5ac07140f7d699185851c3f737ae6b3b43f2bf83a9f67" -> "sha256:d2bba9741519a926cce924b23caceee35ab8351d78d5157709c6345369b2d71b" [label=""];
  "sha256:d2bba9741519a926cce924b23caceee35ab8351d78d5157709c6345369b2d71b" -> "sha256:756e218c3afefc8c0d9c4a65f7007fdac21730d28f4d6203ea2ffe48473c2da3" [label=""];
  "sha256:756e218c3afefc8c0d9c4a65f7007fdac21730d28f4d6203ea2ffe48473c2da3" -> "sha256:2b05bd06a99b9e17c3db3e7d195b4a7836a77c5ce0e86f43017ecab6b75c276a" [label=""];
  "sha256:2b05bd06a99b9e17c3db3e7d195b4a7836a77c5ce0e86f43017ecab6b75c276a" -> "sha256:d91d48ea6d07cb38b3464cdad6abc31db9582cd0475365ef6f8835e1a5636c19" [label=""];
}

