[app/sources/253007092.Dockerfile]
digraph {
  "sha256:4588182c8f22df8a46ce3e4e6c080537baa51d7903fe9add99129e7caef84ed6" [label="docker-image://docker.io/library/node:10.15.3-alpine@sha256:aa28f3b6b4087b3f289bebaca8d3fb82b93137ae739aa67df3a04892d521958e" shape="ellipse"];
  "sha256:f1bf69096cfbd53c88422f33975992de58b0bc98f9748e6f85a9870dac8bae1f" [label="/bin/sh -c apk add --no-cache tini git" shape="box"];
  "sha256:c87e5d4dece13644dd027f92ecb09467bcbea7e681ce3c927148a373bf0e23b4" [label="/bin/sh -c mkdir -p ${APP_DIR}/build &&     mkdir -p ${APP_DIR}/node_modules &&     mkdir -p /home/node/.cache/yarn &&     chown node:node -R ${APP_DIR} /home/node" shape="box"];
  "sha256:78e8c402a68d096a4f91c4a1af61450e9b53a4170804ed065350ff992d402bf4" [label="sha256:78e8c402a68d096a4f91c4a1af61450e9b53a4170804ed065350ff992d402bf4" shape="plaintext"];
  "sha256:4588182c8f22df8a46ce3e4e6c080537baa51d7903fe9add99129e7caef84ed6" -> "sha256:f1bf69096cfbd53c88422f33975992de58b0bc98f9748e6f85a9870dac8bae1f" [label=""];
  "sha256:f1bf69096cfbd53c88422f33975992de58b0bc98f9748e6f85a9870dac8bae1f" -> "sha256:c87e5d4dece13644dd027f92ecb09467bcbea7e681ce3c927148a373bf0e23b4" [label=""];
  "sha256:c87e5d4dece13644dd027f92ecb09467bcbea7e681ce3c927148a373bf0e23b4" -> "sha256:78e8c402a68d096a4f91c4a1af61450e9b53a4170804ed065350ff992d402bf4" [label=""];
}

