[app/sources/326149519.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:ee21b2bfc11343e6865121e3062df6c77a7615ef783893294c24e3c801254763" [label="/bin/sh -c apk add --update --no-cache     g++ bash make zlib-dev libpng-dev \tnodejs \tyarn \tgit" shape="box"];
  "sha256:75470894ba44113391bc770194646e6029ac56067451b092cd3c606e53c83c4a" [label="/bin/sh -c addgroup -g $uid node     && adduser -u $uid -G node -s /bin/sh -D node" shape="box"];
  "sha256:e7befe1427e8be1c6c00dd157b52e9e7c293e91f2c96d1d14f5210d484bca690" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:f93aad41f1758abd17152248a1344220dedec04ecd6d58dad1516caf14a94660" [label="sha256:f93aad41f1758abd17152248a1344220dedec04ecd6d58dad1516caf14a94660" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:ee21b2bfc11343e6865121e3062df6c77a7615ef783893294c24e3c801254763" [label=""];
  "sha256:ee21b2bfc11343e6865121e3062df6c77a7615ef783893294c24e3c801254763" -> "sha256:75470894ba44113391bc770194646e6029ac56067451b092cd3c606e53c83c4a" [label=""];
  "sha256:75470894ba44113391bc770194646e6029ac56067451b092cd3c606e53c83c4a" -> "sha256:e7befe1427e8be1c6c00dd157b52e9e7c293e91f2c96d1d14f5210d484bca690" [label=""];
  "sha256:e7befe1427e8be1c6c00dd157b52e9e7c293e91f2c96d1d14f5210d484bca690" -> "sha256:f93aad41f1758abd17152248a1344220dedec04ecd6d58dad1516caf14a94660" [label=""];
}

