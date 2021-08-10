[app/sources/192537692.Dockerfile]
digraph {
  "sha256:00da0bb282f4ce281cda48b81b2fb89081db24cf520d3f5ee4f9ffa221ed22b5" [label="local://context" shape="ellipse"];
  "sha256:dedae1819594b9c3d25a13f7bde5ccc55b5eebdb9109e74879ec5d6e3d6725d8" [label="docker-image://docker.io/resin/rpi-raspbian:wheezy" shape="ellipse"];
  "sha256:a34f1744f0201cbb93ed107bf995e025ee70858b1c13d5cb469cd43b69390767" [label="/bin/sh -c groupadd -r redis && useradd -r -g redis redis" shape="box"];
  "sha256:f93ea5881caa5090c4c58d8f01aa4992ec033788e967ee9c785a11b6c6df7a4d" [label="/bin/sh -c apt-get update \t&& apt-get install -y curl \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:01f9577bef37ec36efbe3ddf1236af064603bc598253ce94c18bca580e772102" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:7fc0310894fbf7935eb8447caf690028954c75301e1bf52ca537a11cdee8d797" [label="/bin/sh -c curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)\" \t&& curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:d5bfd66f32858344e0c831280f72d49c977eb5e5a2a5c9902a5af40bf6aa6a44" [label="/bin/sh -c buildDeps='gcc libc6-dev make'; \tset -x \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/src/redis \t&& curl -sSL \"$REDIS_DOWNLOAD_URL\" -o redis.tar.gz \t&& echo \"$REDIS_DOWNLOAD_SHA1 *redis.tar.gz\" | sha1sum -c - \t&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 \t&& rm redis.tar.gz \t&& make -C /usr/src/redis \t&& make -C /usr/src/redis install \t&& rm -r /usr/src/redis \t&& apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:002a626e3639fc62b76df6671a0369158679fa6ec896fbc1f1613f011bcafcbc" [label="/bin/sh -c mkdir /data && chown redis:redis /data" shape="box"];
  "sha256:a55f56018f6eb51e15ab73bd268349a5f81c2073e0308f89fa5de2af38561dbb" [label="mkdir{path=/data}" shape="note"];
  "sha256:d11b102a82b6cecc2153a47dae71e5e0aba384f8436b8e7b5673bcbe8d2ce589" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:926f1d1ec203e0ab91eb0c6deae88f7c065470be231013eab62048147dcd8db3" [label="sha256:926f1d1ec203e0ab91eb0c6deae88f7c065470be231013eab62048147dcd8db3" shape="plaintext"];
  "sha256:dedae1819594b9c3d25a13f7bde5ccc55b5eebdb9109e74879ec5d6e3d6725d8" -> "sha256:a34f1744f0201cbb93ed107bf995e025ee70858b1c13d5cb469cd43b69390767" [label=""];
  "sha256:a34f1744f0201cbb93ed107bf995e025ee70858b1c13d5cb469cd43b69390767" -> "sha256:f93ea5881caa5090c4c58d8f01aa4992ec033788e967ee9c785a11b6c6df7a4d" [label=""];
  "sha256:f93ea5881caa5090c4c58d8f01aa4992ec033788e967ee9c785a11b6c6df7a4d" -> "sha256:01f9577bef37ec36efbe3ddf1236af064603bc598253ce94c18bca580e772102" [label=""];
  "sha256:01f9577bef37ec36efbe3ddf1236af064603bc598253ce94c18bca580e772102" -> "sha256:7fc0310894fbf7935eb8447caf690028954c75301e1bf52ca537a11cdee8d797" [label=""];
  "sha256:7fc0310894fbf7935eb8447caf690028954c75301e1bf52ca537a11cdee8d797" -> "sha256:d5bfd66f32858344e0c831280f72d49c977eb5e5a2a5c9902a5af40bf6aa6a44" [label=""];
  "sha256:d5bfd66f32858344e0c831280f72d49c977eb5e5a2a5c9902a5af40bf6aa6a44" -> "sha256:002a626e3639fc62b76df6671a0369158679fa6ec896fbc1f1613f011bcafcbc" [label=""];
  "sha256:002a626e3639fc62b76df6671a0369158679fa6ec896fbc1f1613f011bcafcbc" -> "sha256:a55f56018f6eb51e15ab73bd268349a5f81c2073e0308f89fa5de2af38561dbb" [label=""];
  "sha256:a55f56018f6eb51e15ab73bd268349a5f81c2073e0308f89fa5de2af38561dbb" -> "sha256:d11b102a82b6cecc2153a47dae71e5e0aba384f8436b8e7b5673bcbe8d2ce589" [label=""];
  "sha256:00da0bb282f4ce281cda48b81b2fb89081db24cf520d3f5ee4f9ffa221ed22b5" -> "sha256:d11b102a82b6cecc2153a47dae71e5e0aba384f8436b8e7b5673bcbe8d2ce589" [label=""];
  "sha256:d11b102a82b6cecc2153a47dae71e5e0aba384f8436b8e7b5673bcbe8d2ce589" -> "sha256:926f1d1ec203e0ab91eb0c6deae88f7c065470be231013eab62048147dcd8db3" [label=""];
}

