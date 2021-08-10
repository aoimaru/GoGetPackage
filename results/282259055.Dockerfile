[app/sources/282259055.Dockerfile]
digraph {
  "sha256:cbbda7756416e5e44073c70fb230bc5513a05026046afed45bfb0dc399f6b813" [label="docker-image://docker.io/aarch64/alpine:3.5" shape="ellipse"];
  "sha256:a481ad95f60308b9af5a06a7f216ceef2480e34a58ac45b4fa184ebc0a32a276" [label="https://github.com/tianon/gosu/releases/download/1.9/gosu-arm64" shape="ellipse"];
  "sha256:5786a4ed5813f14890be2ef94e090c6ab1157d593d6fa08924b2d0d78fcddfc4" [label="copy{src=/gosu-arm64, dest=/usr/sbin/gosu}" shape="note"];
  "sha256:cadd6823be3bb41967c93f59704e6200d23a3c752e910b1a499db2800edc6e0d" [label="/bin/sh -c chmod +x /usr/sbin/gosu   && echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories   && apk --no-cache --no-progress add     bash     ca-certificates     curl     git     linux-pam     openssh     s6     shadow     socat     tzdata" shape="box"];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" [label="local://context" shape="ellipse"];
  "sha256:1d0b854b0d08bd76eaf7f9c114bb191e5c6a1eac24d6ccd40971f3b39261dc23" [label="copy{src=/docker/nsswitch.conf, dest=/etc/nsswitch.conf}" shape="note"];
  "sha256:84a3eda87b38bd0340f107365c5cad9acf137b9908d364b62dc36c8c397066bb" [label="copy{src=/docker, dest=/app/gogs/docker}" shape="note"];
  "sha256:449e088ad7ce5dbf4d0c9d0bd8ba8deb67308979c69bab9fa7c6f68c256a87ec" [label="copy{src=/templates, dest=/app/gogs/templates}" shape="note"];
  "sha256:27074ca01f61b695340fca7d6d9e3caee2cb76ed191eb4b67caeae5d6dddb11e" [label="copy{src=/public, dest=/app/gogs/public}" shape="note"];
  "sha256:8fdd9981e57815d6e5a9c4fd535478e99d83eb4efc730fed41e397c190465142" [label="mkdir{path=/app/gogs/build}" shape="note"];
  "sha256:8180eb646be4d31aab1a6d957b09aec35e428e15e9a54be7a8b05ead40ceb449" [label="copy{src=/, dest=/app/gogs/build/}" shape="note"];
  "sha256:96852cbd11d5da6f7517204bac6ca15e215a3a7af84bf66664b7fbd7c25c80ee" [label="/bin/sh -c ./docker/build-go.sh     && ./docker/build.sh     && ./docker/finalize.sh" shape="box"];
  "sha256:059541a8c14f29c9051f98158c63e937d6d74f1d0a3c559a4a60555148e574ec" [label="sha256:059541a8c14f29c9051f98158c63e937d6d74f1d0a3c559a4a60555148e574ec" shape="plaintext"];
  "sha256:cbbda7756416e5e44073c70fb230bc5513a05026046afed45bfb0dc399f6b813" -> "sha256:5786a4ed5813f14890be2ef94e090c6ab1157d593d6fa08924b2d0d78fcddfc4" [label=""];
  "sha256:a481ad95f60308b9af5a06a7f216ceef2480e34a58ac45b4fa184ebc0a32a276" -> "sha256:5786a4ed5813f14890be2ef94e090c6ab1157d593d6fa08924b2d0d78fcddfc4" [label=""];
  "sha256:5786a4ed5813f14890be2ef94e090c6ab1157d593d6fa08924b2d0d78fcddfc4" -> "sha256:cadd6823be3bb41967c93f59704e6200d23a3c752e910b1a499db2800edc6e0d" [label=""];
  "sha256:cadd6823be3bb41967c93f59704e6200d23a3c752e910b1a499db2800edc6e0d" -> "sha256:1d0b854b0d08bd76eaf7f9c114bb191e5c6a1eac24d6ccd40971f3b39261dc23" [label=""];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" -> "sha256:1d0b854b0d08bd76eaf7f9c114bb191e5c6a1eac24d6ccd40971f3b39261dc23" [label=""];
  "sha256:1d0b854b0d08bd76eaf7f9c114bb191e5c6a1eac24d6ccd40971f3b39261dc23" -> "sha256:84a3eda87b38bd0340f107365c5cad9acf137b9908d364b62dc36c8c397066bb" [label=""];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" -> "sha256:84a3eda87b38bd0340f107365c5cad9acf137b9908d364b62dc36c8c397066bb" [label=""];
  "sha256:84a3eda87b38bd0340f107365c5cad9acf137b9908d364b62dc36c8c397066bb" -> "sha256:449e088ad7ce5dbf4d0c9d0bd8ba8deb67308979c69bab9fa7c6f68c256a87ec" [label=""];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" -> "sha256:449e088ad7ce5dbf4d0c9d0bd8ba8deb67308979c69bab9fa7c6f68c256a87ec" [label=""];
  "sha256:449e088ad7ce5dbf4d0c9d0bd8ba8deb67308979c69bab9fa7c6f68c256a87ec" -> "sha256:27074ca01f61b695340fca7d6d9e3caee2cb76ed191eb4b67caeae5d6dddb11e" [label=""];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" -> "sha256:27074ca01f61b695340fca7d6d9e3caee2cb76ed191eb4b67caeae5d6dddb11e" [label=""];
  "sha256:27074ca01f61b695340fca7d6d9e3caee2cb76ed191eb4b67caeae5d6dddb11e" -> "sha256:8fdd9981e57815d6e5a9c4fd535478e99d83eb4efc730fed41e397c190465142" [label=""];
  "sha256:8fdd9981e57815d6e5a9c4fd535478e99d83eb4efc730fed41e397c190465142" -> "sha256:8180eb646be4d31aab1a6d957b09aec35e428e15e9a54be7a8b05ead40ceb449" [label=""];
  "sha256:ba9c72cf05f14499e030a6de63430930b4f3e7d73f225200b5c177def7a64d79" -> "sha256:8180eb646be4d31aab1a6d957b09aec35e428e15e9a54be7a8b05ead40ceb449" [label=""];
  "sha256:8180eb646be4d31aab1a6d957b09aec35e428e15e9a54be7a8b05ead40ceb449" -> "sha256:96852cbd11d5da6f7517204bac6ca15e215a3a7af84bf66664b7fbd7c25c80ee" [label=""];
  "sha256:96852cbd11d5da6f7517204bac6ca15e215a3a7af84bf66664b7fbd7c25c80ee" -> "sha256:059541a8c14f29c9051f98158c63e937d6d74f1d0a3c559a4a60555148e574ec" [label=""];
}

