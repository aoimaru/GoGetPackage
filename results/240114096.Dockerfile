[app/sources/240114096.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:0d816efdc5bf1d9baad034ae7e977168633e321e48f5c6d3fab5d8dc0918ae5f" [label="/bin/sh -c apk update &&  apk add --no-cache --virtual=build-deps curl tar &&  apk add --no-cache bash ca-certificates coreutils shadow tzdata &&  curl -o /tmp/s6-overlay.tar.gz -L \t\"https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-amd64.tar.gz\" &&  tar xfz /tmp/s6-overlay.tar.gz -C / &&  groupmod -g 1000 users &&  useradd -u 911 -U -d /config -s /bin/false swerp &&  usermod -G users swerp &&  mkdir -p \t/app \t/config \t/data \t/media   /logs \t/defaults &&  apk del --purge build-deps &&  rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:0b981381b3cfb040ab2c9c47817f9ad2e567eccdf658a0e8a27844558c884cab" [label="local://context" shape="ellipse"];
  "sha256:339fd1ea335761c3246f14c1f0c267017b319282f430147fa23c588d3a2c1c34" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:613c467fc0a1763539690215c397b2463477e081caf237331310eca01e64abeb" [label="sha256:613c467fc0a1763539690215c397b2463477e081caf237331310eca01e64abeb" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:0d816efdc5bf1d9baad034ae7e977168633e321e48f5c6d3fab5d8dc0918ae5f" [label=""];
  "sha256:0d816efdc5bf1d9baad034ae7e977168633e321e48f5c6d3fab5d8dc0918ae5f" -> "sha256:339fd1ea335761c3246f14c1f0c267017b319282f430147fa23c588d3a2c1c34" [label=""];
  "sha256:0b981381b3cfb040ab2c9c47817f9ad2e567eccdf658a0e8a27844558c884cab" -> "sha256:339fd1ea335761c3246f14c1f0c267017b319282f430147fa23c588d3a2c1c34" [label=""];
  "sha256:339fd1ea335761c3246f14c1f0c267017b319282f430147fa23c588d3a2c1c34" -> "sha256:613c467fc0a1763539690215c397b2463477e081caf237331310eca01e64abeb" [label=""];
}

