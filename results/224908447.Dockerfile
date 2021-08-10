[app/sources/224908447.Dockerfile]
digraph {
  "sha256:8eb0ab832fd02979a958e9520ce8b719a6db693d418df66ccd59aee7a5d891ba" [label="docker-image://docker.io/janeczku/alpine-kubernetes:3.3" shape="ellipse"];
  "sha256:9ea4573abeb70353bf93b1f21fcc61aef3d3cf41bdc0064211ce9c6279c5d60c" [label="/bin/sh -c apk --update add ${BUILD_PACKAGES} ${RUNTIME_PACKAGES} &&   cd /tmp &&   wget http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz &&   tar xzf redis-${REDIS_VERSION}.tar.gz &&   cd /tmp/redis-${REDIS_VERSION} &&   make &&   make install &&   mv /usr/local/bin/redis-server /usr/local/bin/redis-server-wrapped &&   cp redis.conf /etc/redis.conf &&   adduser -D redis &&   mkdir /data &&   chown redis:redis /data &&   rm -rf /tmp/* &&   apk del ${BUILD_PACKAGES} &&   rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f65f6f430fab96ed229d83449f4c64df70e1553c21c62cfd877c6a55cd416679" [label="mkdir{path=/data}" shape="note"];
  "sha256:a17d40dd7254f86a49d578015a072672ed279f9d79253f616a7d343147293d61" [label="local://context" shape="ellipse"];
  "sha256:beae8a562088be985a991e73de96a68c066a8a0759ab01315656607c60176eec" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:9060e0221ceb8568c1dc346fa95fce1ede6b743b5ead1f004b7a9347f8912cf9" [label="sha256:9060e0221ceb8568c1dc346fa95fce1ede6b743b5ead1f004b7a9347f8912cf9" shape="plaintext"];
  "sha256:8eb0ab832fd02979a958e9520ce8b719a6db693d418df66ccd59aee7a5d891ba" -> "sha256:9ea4573abeb70353bf93b1f21fcc61aef3d3cf41bdc0064211ce9c6279c5d60c" [label=""];
  "sha256:9ea4573abeb70353bf93b1f21fcc61aef3d3cf41bdc0064211ce9c6279c5d60c" -> "sha256:f65f6f430fab96ed229d83449f4c64df70e1553c21c62cfd877c6a55cd416679" [label=""];
  "sha256:f65f6f430fab96ed229d83449f4c64df70e1553c21c62cfd877c6a55cd416679" -> "sha256:beae8a562088be985a991e73de96a68c066a8a0759ab01315656607c60176eec" [label=""];
  "sha256:a17d40dd7254f86a49d578015a072672ed279f9d79253f616a7d343147293d61" -> "sha256:beae8a562088be985a991e73de96a68c066a8a0759ab01315656607c60176eec" [label=""];
  "sha256:beae8a562088be985a991e73de96a68c066a8a0759ab01315656607c60176eec" -> "sha256:9060e0221ceb8568c1dc346fa95fce1ede6b743b5ead1f004b7a9347f8912cf9" [label=""];
}

