[app/sources/252768371.Dockerfile]
digraph {
  "sha256:e52ebb90a0b6cd044fe22aaaa2917588162977f0f0d23dee292e3f9da45b4e7f" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:0ac620b1f572abe8704e62cb6b8de974a980e1f73c7dc476968ec150694b1a4f" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/},copy{src=/create_cluster.sh.tpl, dest=/usr/local/bin/}" shape="note"];
  "sha256:3f84a05b50c3bfeca90c25e75b18cdee2aacb4a77d219059d0e3d571bacdc5b5" [label="/bin/sh -c apk add --update ruby && gem install redis --no-document && wget -P /tmp $REDIS_DOWNLOAD_URL && tar -xzvf /tmp/$REDIS_BINARY && rm /tmp/$REDIS_BINARY && cp /redis-$REDIS_VERSION/src/redis-trib.rb /usr/local/bin/ && rm -r /redis-$REDIS_VERSION && find /usr/local/bin -name \"*.sh\" -exec chmod +x {} \\;" shape="box"];
  "sha256:1634de86f3de276502fc63b60cff9f3bb41d86b2930bca1459c0295aee115f94" [label="sha256:1634de86f3de276502fc63b60cff9f3bb41d86b2930bca1459c0295aee115f94" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:0ac620b1f572abe8704e62cb6b8de974a980e1f73c7dc476968ec150694b1a4f" [label=""];
  "sha256:e52ebb90a0b6cd044fe22aaaa2917588162977f0f0d23dee292e3f9da45b4e7f" -> "sha256:0ac620b1f572abe8704e62cb6b8de974a980e1f73c7dc476968ec150694b1a4f" [label=""];
  "sha256:0ac620b1f572abe8704e62cb6b8de974a980e1f73c7dc476968ec150694b1a4f" -> "sha256:3f84a05b50c3bfeca90c25e75b18cdee2aacb4a77d219059d0e3d571bacdc5b5" [label=""];
  "sha256:3f84a05b50c3bfeca90c25e75b18cdee2aacb4a77d219059d0e3d571bacdc5b5" -> "sha256:1634de86f3de276502fc63b60cff9f3bb41d86b2930bca1459c0295aee115f94" [label=""];
}

