[app/sources/216588146.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:b557aef592cc514c90fb786f0cb4aa116f911557f925af1e845db15b15ba52b0" [label="/bin/sh -c apk add --no-cache openjdk8-jre tini su-exec" shape="box"];
  "sha256:efb3a9d5cd32fe8f3135651bb0f4284d2c622cec59b7083cc19708163c400254" [label="/bin/sh -c apk add --no-cache libzmq bash" shape="box"];
  "sha256:fa914ca821301939502868a6903367a44ba1806f638850e79ecc8b878b36bf82" [label="/bin/sh -c apk add --no-cache -t .build-deps wget ca-certificates gnupg openssl   && cd /tmp   && wget -O logstash.tar.gz \"$LOGSTASH_TARBALL\";   if [ \"$LOGSTASH_TARBALL_SHA1\" ]; then \t\techo \"$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz\" | sha1sum -c -; \tfi; \t\tif [ \"$LOGSTASH_TARBALL_ASC\" ]; then \t\twget -O logstash.tar.gz.asc \"$LOGSTASH_TARBALL_ASC\"; \t\texport GNUPGHOME=\"$(mktemp -d)\"; \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$GPG_KEY\"; \t\tgpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; \t\trm -r \"$GNUPGHOME\" logstash.tar.gz.asc; \tfi;   tar -xzf logstash.tar.gz   && mv logstash-$LS_VERSION /usr/share/logstash   && adduser -DH -s /sbin/nologin logstash   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:9dea5dd62f434e9edbefdef47402f48cb687e028502b11045c63d86e000b3cc7" [label="/bin/sh -c set -ex;   if [ -f \"$LS_SETTINGS_DIR/log4j2.properties\" ]; then     cp \"$LS_SETTINGS_DIR/log4j2.properties\" \"$LS_SETTINGS_DIR/log4j2.properties.dist\";     truncate -s 0 \"$LS_SETTINGS_DIR/log4j2.properties\";   fi" shape="box"];
  "sha256:377344a12b50de5a260c4449ffde5deb1058916de7ef4ec1ec71866efdedb8b5" [label="local://context" shape="ellipse"];
  "sha256:fd20e5ee091fd706806edd9021726bb1ee864f664bc57cc34114be6a9fc92483" [label="copy{src=/logstash-entrypoint.sh, dest=/}" shape="note"];
  "sha256:f75e216db0ae02d395a606ea9f17e5aa4ed06c9be6aa566fb0769beeb1fb4709" [label="sha256:f75e216db0ae02d395a606ea9f17e5aa4ed06c9be6aa566fb0769beeb1fb4709" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:b557aef592cc514c90fb786f0cb4aa116f911557f925af1e845db15b15ba52b0" [label=""];
  "sha256:b557aef592cc514c90fb786f0cb4aa116f911557f925af1e845db15b15ba52b0" -> "sha256:efb3a9d5cd32fe8f3135651bb0f4284d2c622cec59b7083cc19708163c400254" [label=""];
  "sha256:efb3a9d5cd32fe8f3135651bb0f4284d2c622cec59b7083cc19708163c400254" -> "sha256:fa914ca821301939502868a6903367a44ba1806f638850e79ecc8b878b36bf82" [label=""];
  "sha256:fa914ca821301939502868a6903367a44ba1806f638850e79ecc8b878b36bf82" -> "sha256:9dea5dd62f434e9edbefdef47402f48cb687e028502b11045c63d86e000b3cc7" [label=""];
  "sha256:9dea5dd62f434e9edbefdef47402f48cb687e028502b11045c63d86e000b3cc7" -> "sha256:fd20e5ee091fd706806edd9021726bb1ee864f664bc57cc34114be6a9fc92483" [label=""];
  "sha256:377344a12b50de5a260c4449ffde5deb1058916de7ef4ec1ec71866efdedb8b5" -> "sha256:fd20e5ee091fd706806edd9021726bb1ee864f664bc57cc34114be6a9fc92483" [label=""];
  "sha256:fd20e5ee091fd706806edd9021726bb1ee864f664bc57cc34114be6a9fc92483" -> "sha256:f75e216db0ae02d395a606ea9f17e5aa4ed06c9be6aa566fb0769beeb1fb4709" [label=""];
}

