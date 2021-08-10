[app/sources/320096414.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:a5bd77b77b55c55d1b90f54fad46fb35ce386e18639fbc91f8024f8714c65623" [label="/bin/sh -c addgroup -S redis && adduser -S -G redis redis && mkdir -p /redis/data /redis/modules && chown redis:redis /redis/data /redis/modules" shape="box"];
  "sha256:a1deb1033e718d08b9692a956d3beea5c56f9a2c4428939ceedba599b7e21758" [label="/bin/sh -c set -x && apk add --no-cache --virtual .build-deps  curl  gcc  linux-headers  make  musl-dev  tar && curl -o redis.tar.gz https://codeload.github.com/antirez/redis/tar.gz/\"$REDIS_RELEASE\" && mkdir -p /usr/src/redis && tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 && rm redis.tar.gz && make -C /usr/src/redis && make -C /usr/src/redis install && rm -r /usr/src/redis && apk del .build-deps" shape="box"];
  "sha256:9aaff096e6c493a1a28db785800ffafe6b9e08cc715fbdaf32c0f1cb6fdb32a2" [label="mkdir{path=/redis/data}" shape="note"];
  "sha256:01b9b77b3d822d2f0ab2757d8dc7a13812b596b86c50a5c92559b3fc71f284b8" [label="sha256:01b9b77b3d822d2f0ab2757d8dc7a13812b596b86c50a5c92559b3fc71f284b8" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:a5bd77b77b55c55d1b90f54fad46fb35ce386e18639fbc91f8024f8714c65623" [label=""];
  "sha256:a5bd77b77b55c55d1b90f54fad46fb35ce386e18639fbc91f8024f8714c65623" -> "sha256:a1deb1033e718d08b9692a956d3beea5c56f9a2c4428939ceedba599b7e21758" [label=""];
  "sha256:a1deb1033e718d08b9692a956d3beea5c56f9a2c4428939ceedba599b7e21758" -> "sha256:9aaff096e6c493a1a28db785800ffafe6b9e08cc715fbdaf32c0f1cb6fdb32a2" [label=""];
  "sha256:9aaff096e6c493a1a28db785800ffafe6b9e08cc715fbdaf32c0f1cb6fdb32a2" -> "sha256:01b9b77b3d822d2f0ab2757d8dc7a13812b596b86c50a5c92559b3fc71f284b8" [label=""];
}

