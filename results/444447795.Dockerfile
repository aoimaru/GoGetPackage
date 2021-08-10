[app/sources/444447795.Dockerfile]
digraph {
  "sha256:463b43f595b47035e177424c1cbf6e7dd6f225607474a795992f32dc82f3ce76" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:7a014c02d1ef29424087f1986ac7e0b31b7dfbf670cc7c83b67b9532165b4252" [label="copy{src=/start.sh, dest=/app/}" shape="note"];
  "sha256:f29d41c543c731d4bc246b095a941d943a6f63243865219021e959d4b1d15720" [label="/bin/sh -c echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories &&    apk add --no-cache g++ make cmake lcov musl-dev libgcc libstdc++ boost-dev boost-static qt5-qtbase-dev &&    tr -d '\\015' < /app/start.sh > /app/start-lf.sh &&    mv -f /app/start-lf.sh /app/start.sh &&    chmod u+x /app/start.sh &&    mkdir /project &&    mkdir /build" shape="box"];
  "sha256:3cf9e8a68a476bdc64775b83fd735b1a20439e6168f1348ee426e94710763054" [label="mkdir{path=/build}" shape="note"];
  "sha256:e9deb87c3aee55fe4f5b31843513a0b1183e7d1338905753cab787160b6d2a5c" [label="sha256:e9deb87c3aee55fe4f5b31843513a0b1183e7d1338905753cab787160b6d2a5c" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:7a014c02d1ef29424087f1986ac7e0b31b7dfbf670cc7c83b67b9532165b4252" [label=""];
  "sha256:463b43f595b47035e177424c1cbf6e7dd6f225607474a795992f32dc82f3ce76" -> "sha256:7a014c02d1ef29424087f1986ac7e0b31b7dfbf670cc7c83b67b9532165b4252" [label=""];
  "sha256:7a014c02d1ef29424087f1986ac7e0b31b7dfbf670cc7c83b67b9532165b4252" -> "sha256:f29d41c543c731d4bc246b095a941d943a6f63243865219021e959d4b1d15720" [label=""];
  "sha256:f29d41c543c731d4bc246b095a941d943a6f63243865219021e959d4b1d15720" -> "sha256:3cf9e8a68a476bdc64775b83fd735b1a20439e6168f1348ee426e94710763054" [label=""];
  "sha256:3cf9e8a68a476bdc64775b83fd735b1a20439e6168f1348ee426e94710763054" -> "sha256:e9deb87c3aee55fe4f5b31843513a0b1183e7d1338905753cab787160b6d2a5c" [label=""];
}

