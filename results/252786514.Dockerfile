[app/sources/252786514.Dockerfile]
digraph {
  "sha256:5f0b4f456ce53717135ccbd663cffee88b0df841fcc628342048b6e0d271ae75" [label="docker-image://docker.io/dockerizedrupal/base-debian-jessie:2.0.0" shape="ellipse"];
  "sha256:3821112c1dde2390f31d47bb721486c5077139884a6745793b96caececa1a2e4" [label="local://context" shape="ellipse"];
  "sha256:620687a1b97b6ff421827a0e5f42d620fb9454600b31c64c183c62637e0637fa" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:19118961ee4223f067b9177e351edfed4acd77c79f4089d3b7a1b6c04bea3634" [label="/bin/sh -c /src/entrypoint.sh build" shape="box"];
  "sha256:73bae860b9acf41cd11b8ed1334db9d076c4a3e580c3aac1e6e8b7d0c4ef7e4e" [label="sha256:73bae860b9acf41cd11b8ed1334db9d076c4a3e580c3aac1e6e8b7d0c4ef7e4e" shape="plaintext"];
  "sha256:5f0b4f456ce53717135ccbd663cffee88b0df841fcc628342048b6e0d271ae75" -> "sha256:620687a1b97b6ff421827a0e5f42d620fb9454600b31c64c183c62637e0637fa" [label=""];
  "sha256:3821112c1dde2390f31d47bb721486c5077139884a6745793b96caececa1a2e4" -> "sha256:620687a1b97b6ff421827a0e5f42d620fb9454600b31c64c183c62637e0637fa" [label=""];
  "sha256:620687a1b97b6ff421827a0e5f42d620fb9454600b31c64c183c62637e0637fa" -> "sha256:19118961ee4223f067b9177e351edfed4acd77c79f4089d3b7a1b6c04bea3634" [label=""];
  "sha256:19118961ee4223f067b9177e351edfed4acd77c79f4089d3b7a1b6c04bea3634" -> "sha256:73bae860b9acf41cd11b8ed1334db9d076c4a3e580c3aac1e6e8b7d0c4ef7e4e" [label=""];
}

