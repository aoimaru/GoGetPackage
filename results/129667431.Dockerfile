[app/sources/129667431.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:205f850e723cbfb7855d50fc48ce59c10a75c4eef441426847724e8393de6d76" [label="/bin/sh -c dnf install -y dnf-plugins-core &&     dnf copr enable -y ttomecek/xmind &&     dnf install -y xmind &&     dnf clean all" shape="box"];
  "sha256:7a316abe256d859a1b6c3bdb3f913d3822503cfc1b3d82c9faa7ff8415c53004" [label="/bin/sh -c useradd -o -u ${USER_ID} -G video xmind" shape="box"];
  "sha256:587e5677120ca9d660b81ef3797b6f0a59676cbba9c9320402731167d1c3dc5c" [label="sha256:587e5677120ca9d660b81ef3797b6f0a59676cbba9c9320402731167d1c3dc5c" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:205f850e723cbfb7855d50fc48ce59c10a75c4eef441426847724e8393de6d76" [label=""];
  "sha256:205f850e723cbfb7855d50fc48ce59c10a75c4eef441426847724e8393de6d76" -> "sha256:7a316abe256d859a1b6c3bdb3f913d3822503cfc1b3d82c9faa7ff8415c53004" [label=""];
  "sha256:7a316abe256d859a1b6c3bdb3f913d3822503cfc1b3d82c9faa7ff8415c53004" -> "sha256:587e5677120ca9d660b81ef3797b6f0a59676cbba9c9320402731167d1c3dc5c" [label=""];
}

