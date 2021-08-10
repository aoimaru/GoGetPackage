[app/sources/145801058.Dockerfile]
digraph {
  "sha256:90e804c100d5de0f9a981882d3a18210ed9b02616a9e81d9bb80bebfcde09399" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1cf7ca53947be9321751fac50c74194bb5beda59c132f88e00d98aff2306aadd" [label="/bin/sh -c echo \"http://dl-cdn.alpinelinux.org/alpine/edge/main\" > /etc/apk/repositories && echo \"http://dl-cdn.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories && echo \"http://dl-cdn.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories" shape="box"];
  "sha256:6229fc6aacca2127c6441e380ffd206a563ce77432c928940b43df369f7faeb2" [label="/bin/sh -c apk update && apk upgrade && apk add firefox xvfb bash dbus ttf-freefont fontconfig && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:da9b327a76a13b117a9c201c1ef67b5e3b6f25645a56ede1e5566db8202d0b71" [label="/bin/sh -c mv /usr/bin/firefox /usr/bin/firefox-origin && echo $'#!/usr/bin/env sh\\nXvfb :0 -screen 0 1920x1080x24 -ac +extension GLX +render -noreset & \\nDISPLAY=:0.0 firefox-origin $@ \\nkillall Xvfb' > /usr/bin/firefox && chmod +x /usr/bin/firefox" shape="box"];
  "sha256:1bf5f1f9af3b0e88d78ee50c442373a31b05cd12544cf22d648f236fd22f3bca" [label="copy{src=/, dest=/usr/local/slimerjs}" shape="note"];
  "sha256:46c9ee40dff12733feb45ec8857fce597e64249fedb6422714647312482843eb" [label="mkdir{path=/usr/local/slimerjs}" shape="note"];
  "sha256:b0add9da023ac39f7edb2641404fc0ba89f80dc4e5c39259f882a6e31ae2d64f" [label="sha256:b0add9da023ac39f7edb2641404fc0ba89f80dc4e5c39259f882a6e31ae2d64f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1cf7ca53947be9321751fac50c74194bb5beda59c132f88e00d98aff2306aadd" [label=""];
  "sha256:1cf7ca53947be9321751fac50c74194bb5beda59c132f88e00d98aff2306aadd" -> "sha256:6229fc6aacca2127c6441e380ffd206a563ce77432c928940b43df369f7faeb2" [label=""];
  "sha256:6229fc6aacca2127c6441e380ffd206a563ce77432c928940b43df369f7faeb2" -> "sha256:da9b327a76a13b117a9c201c1ef67b5e3b6f25645a56ede1e5566db8202d0b71" [label=""];
  "sha256:da9b327a76a13b117a9c201c1ef67b5e3b6f25645a56ede1e5566db8202d0b71" -> "sha256:1bf5f1f9af3b0e88d78ee50c442373a31b05cd12544cf22d648f236fd22f3bca" [label=""];
  "sha256:90e804c100d5de0f9a981882d3a18210ed9b02616a9e81d9bb80bebfcde09399" -> "sha256:1bf5f1f9af3b0e88d78ee50c442373a31b05cd12544cf22d648f236fd22f3bca" [label=""];
  "sha256:1bf5f1f9af3b0e88d78ee50c442373a31b05cd12544cf22d648f236fd22f3bca" -> "sha256:46c9ee40dff12733feb45ec8857fce597e64249fedb6422714647312482843eb" [label=""];
  "sha256:46c9ee40dff12733feb45ec8857fce597e64249fedb6422714647312482843eb" -> "sha256:b0add9da023ac39f7edb2641404fc0ba89f80dc4e5c39259f882a6e31ae2d64f" [label=""];
}

