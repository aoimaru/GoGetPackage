[app/sources/445121594.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:834e32e3a8e5d43541e142aa13c41f68e14cca10134df141170a25714b0604c4" [label="local://context" shape="ellipse"];
  "sha256:10d024aaa73bc3f6fbb8f1bbe5fd6ca1170b3c1183345d062e83a4c730b27a93" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:ac35849c62c32b56c5842892aef200b4d8b7d0a411bc4e76a725c56c3edfa433" [label="mkdir{path=/app}" shape="note"];
  "sha256:29664294c5c4eb6edc209fb9711bc3098c5eb07cd7526394b6fe1e74dcdfcd87" [label="/bin/sh -c cd /app ; go install goapi" shape="box"];
  "sha256:988790e9cbd2303c3cd1138c7befcd682f22343d3c4e452048522b11c5aaed51" [label="sha256:988790e9cbd2303c3cd1138c7befcd682f22343d3c4e452048522b11c5aaed51" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label=""];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" -> "sha256:10d024aaa73bc3f6fbb8f1bbe5fd6ca1170b3c1183345d062e83a4c730b27a93" [label=""];
  "sha256:834e32e3a8e5d43541e142aa13c41f68e14cca10134df141170a25714b0604c4" -> "sha256:10d024aaa73bc3f6fbb8f1bbe5fd6ca1170b3c1183345d062e83a4c730b27a93" [label=""];
  "sha256:10d024aaa73bc3f6fbb8f1bbe5fd6ca1170b3c1183345d062e83a4c730b27a93" -> "sha256:ac35849c62c32b56c5842892aef200b4d8b7d0a411bc4e76a725c56c3edfa433" [label=""];
  "sha256:ac35849c62c32b56c5842892aef200b4d8b7d0a411bc4e76a725c56c3edfa433" -> "sha256:29664294c5c4eb6edc209fb9711bc3098c5eb07cd7526394b6fe1e74dcdfcd87" [label=""];
  "sha256:29664294c5c4eb6edc209fb9711bc3098c5eb07cd7526394b6fe1e74dcdfcd87" -> "sha256:988790e9cbd2303c3cd1138c7befcd682f22343d3c4e452048522b11c5aaed51" [label=""];
}

