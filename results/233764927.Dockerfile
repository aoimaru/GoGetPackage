[app/sources/233764927.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:2dc14eb92682771b17d76bb9c0c65f69b2b817e036ac596d87e8358398e82a65" [label="/bin/sh -c addgroup nomad &&     adduser -S -G nomad nomad" shape="box"];
  "sha256:6b66b01f906bf921271bd88dc53a73ea76b0b8e064a3365d87ddc8e3affedd44" [label="/bin/sh -c apk add --no-cache ca-certificates curl dumb-init libcap su-exec" shape="box"];
  "sha256:2b5dea23526a0084e0df4a566a5d4af23b36e10589e9d81556a299bacc4d1105" [label="local://context" shape="ellipse"];
  "sha256:e0d5ea18cafafa8b682e192e0f112df1d96d7eaa60618cc9e196c4ae98d518e4" [label="copy{src=/pkg/nomad, dest=/bin/nomad}" shape="note"];
  "sha256:8ffee6912b982e58bb54ea1302b842c453d9759b2296210bcde3f5e6a03551ea" [label="/bin/sh -c mkdir -p /nomad/data &&     mkdir -p /nomad/config &&     chown -R nomad:nomad /nomad" shape="box"];
  "sha256:b8aeb0b7040180cc1ecb81d940f149f89d439dcac73dca67b099e67102622f6a" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:5552194f914747444f7f8a4ac6aeee241f5c3c1eab2f9a964e722fd6e2766372" [label="sha256:5552194f914747444f7f8a4ac6aeee241f5c3c1eab2f9a964e722fd6e2766372" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:2dc14eb92682771b17d76bb9c0c65f69b2b817e036ac596d87e8358398e82a65" [label=""];
  "sha256:2dc14eb92682771b17d76bb9c0c65f69b2b817e036ac596d87e8358398e82a65" -> "sha256:6b66b01f906bf921271bd88dc53a73ea76b0b8e064a3365d87ddc8e3affedd44" [label=""];
  "sha256:6b66b01f906bf921271bd88dc53a73ea76b0b8e064a3365d87ddc8e3affedd44" -> "sha256:e0d5ea18cafafa8b682e192e0f112df1d96d7eaa60618cc9e196c4ae98d518e4" [label=""];
  "sha256:2b5dea23526a0084e0df4a566a5d4af23b36e10589e9d81556a299bacc4d1105" -> "sha256:e0d5ea18cafafa8b682e192e0f112df1d96d7eaa60618cc9e196c4ae98d518e4" [label=""];
  "sha256:e0d5ea18cafafa8b682e192e0f112df1d96d7eaa60618cc9e196c4ae98d518e4" -> "sha256:8ffee6912b982e58bb54ea1302b842c453d9759b2296210bcde3f5e6a03551ea" [label=""];
  "sha256:8ffee6912b982e58bb54ea1302b842c453d9759b2296210bcde3f5e6a03551ea" -> "sha256:b8aeb0b7040180cc1ecb81d940f149f89d439dcac73dca67b099e67102622f6a" [label=""];
  "sha256:2b5dea23526a0084e0df4a566a5d4af23b36e10589e9d81556a299bacc4d1105" -> "sha256:b8aeb0b7040180cc1ecb81d940f149f89d439dcac73dca67b099e67102622f6a" [label=""];
  "sha256:b8aeb0b7040180cc1ecb81d940f149f89d439dcac73dca67b099e67102622f6a" -> "sha256:5552194f914747444f7f8a4ac6aeee241f5c3c1eab2f9a964e722fd6e2766372" [label=""];
}

