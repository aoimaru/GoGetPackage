[app/sources/252777626.Dockerfile]
digraph {
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:4af48651150af4fd86d52436cfd97124f6b29e07cf94306eaeb5bc3c08c32bc8" [label="/bin/sh -c apk --update add duplicity" shape="box"];
  "sha256:dc00a5ec88fc626be979e4cbce13a3ecad94a4c84090a27905614c0d9c8ac9c1" [label="sha256:dc00a5ec88fc626be979e4cbce13a3ecad94a4c84090a27905614c0d9c8ac9c1" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:4af48651150af4fd86d52436cfd97124f6b29e07cf94306eaeb5bc3c08c32bc8" [label=""];
  "sha256:4af48651150af4fd86d52436cfd97124f6b29e07cf94306eaeb5bc3c08c32bc8" -> "sha256:dc00a5ec88fc626be979e4cbce13a3ecad94a4c84090a27905614c0d9c8ac9c1" [label=""];
}

