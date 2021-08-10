[app/sources/430929020.Dockerfile]
digraph {
  "sha256:dd685a5d24a35521c56ff55e6132e9c23c348f08d913aace689f67df11d60b79" [label="local://context" shape="ellipse"];
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" [label="docker-image://docker.io/library/alpine:3.10" shape="ellipse"];
  "sha256:baadbb8742917cb331a68f0773e77034243e915a19ffbe49443cb27f8a9c472d" [label="/bin/sh -c addgroup -S redis && adduser -S -G redis redis" shape="box"];
  "sha256:d9075cf20387bab0031c7a48d504c37882fb79de53534ba5e87d2f59156a19ae" [label="/bin/sh -c apk add --no-cache \t\t'su-exec>=0.2' \t\ttzdata" shape="box"];
  "sha256:37e466f4f771a19f5f534e92099a918823ff3250bae458b78c3dcecdd18e86e7" [label="/bin/sh -c set -ex; \t\tapk add --no-cache --virtual .build-deps \t\tcoreutils \t\tgcc \t\tlinux-headers \t\tmake \t\tmusl-dev \t; \t\twget -O redis.tar.gz \"$REDIS_DOWNLOAD_URL\"; \techo \"$REDIS_DOWNLOAD_SHA *redis.tar.gz\" | sha256sum -c -; \tmkdir -p /usr/src/redis; \ttar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; \trm redis.tar.gz; \t\tgrep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; \tsed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\\1 0!' /usr/src/redis/src/server.h; \tgrep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; \t\tmake -C /usr/src/redis -j \"$(nproc)\"; \tmake -C /usr/src/redis install; \t\trm -r /usr/src/redis; \t\trunDeps=\"$( \t\tscanelf --needed --nobanner --format '%n#p' --recursive /usr/local \t\t\t| tr ',' '\\n' \t\t\t| sort -u \t\t\t| awk 'system(\"[ -e /usr/local/lib/\" $1 \" ]\") == 0 { next } { print \"so:\" $1 }' \t)\"; \tapk add --virtual .redis-rundeps $runDeps; \tapk del .build-deps; \t\tredis-server --version" shape="box"];
  "sha256:fe18382b33152a5edbb5e16fc75194e05bde5aa202cf791a88e98456af7bbb77" [label="/bin/sh -c mkdir /data && chown redis:redis /data" shape="box"];
  "sha256:a96baa1ab10ddc2ae0ef0aadde81c5f4f5eb8d16187fd396cca03268127e9114" [label="mkdir{path=/data}" shape="note"];
  "sha256:1dc66d18636cb41c50d13aae3ef73d5cc627113248b378278796b2a11d020c2c" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9619dbf0975d5dada2170f9cdd184a703d0c927aa4ce0640c91b37c247bc1aed" [label="sha256:9619dbf0975d5dada2170f9cdd184a703d0c927aa4ce0640c91b37c247bc1aed" shape="plaintext"];
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" -> "sha256:baadbb8742917cb331a68f0773e77034243e915a19ffbe49443cb27f8a9c472d" [label=""];
  "sha256:baadbb8742917cb331a68f0773e77034243e915a19ffbe49443cb27f8a9c472d" -> "sha256:d9075cf20387bab0031c7a48d504c37882fb79de53534ba5e87d2f59156a19ae" [label=""];
  "sha256:d9075cf20387bab0031c7a48d504c37882fb79de53534ba5e87d2f59156a19ae" -> "sha256:37e466f4f771a19f5f534e92099a918823ff3250bae458b78c3dcecdd18e86e7" [label=""];
  "sha256:37e466f4f771a19f5f534e92099a918823ff3250bae458b78c3dcecdd18e86e7" -> "sha256:fe18382b33152a5edbb5e16fc75194e05bde5aa202cf791a88e98456af7bbb77" [label=""];
  "sha256:fe18382b33152a5edbb5e16fc75194e05bde5aa202cf791a88e98456af7bbb77" -> "sha256:a96baa1ab10ddc2ae0ef0aadde81c5f4f5eb8d16187fd396cca03268127e9114" [label=""];
  "sha256:a96baa1ab10ddc2ae0ef0aadde81c5f4f5eb8d16187fd396cca03268127e9114" -> "sha256:1dc66d18636cb41c50d13aae3ef73d5cc627113248b378278796b2a11d020c2c" [label=""];
  "sha256:dd685a5d24a35521c56ff55e6132e9c23c348f08d913aace689f67df11d60b79" -> "sha256:1dc66d18636cb41c50d13aae3ef73d5cc627113248b378278796b2a11d020c2c" [label=""];
  "sha256:1dc66d18636cb41c50d13aae3ef73d5cc627113248b378278796b2a11d020c2c" -> "sha256:9619dbf0975d5dada2170f9cdd184a703d0c927aa4ce0640c91b37c247bc1aed" [label=""];
}

