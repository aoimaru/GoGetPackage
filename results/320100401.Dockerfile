[app/sources/320100401.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3bfc3ec32afbdea969a43bb9874c04742d4540d8ccf967a7c8284a55ea34e67a" [label="/bin/sh -c apk add --no-cache \tca-certificates \tglib \tperl \tperl-datetime \tperl-libwww" shape="box"];
  "sha256:c1cccbf584d9cba457e5df314855b7757ba968cc90974196b95caed197565add" [label="/bin/sh -c adduser -u 1001 -D user \t&& chown -R user:user $HOME" shape="box"];
  "sha256:2dbb019904110686b3d8b7556a998b171e5c3e163bfe7ceb7a02f5d7c9874dad" [label="/bin/sh -c set -x \t&& apk add --no-cache --virtual .build-deps \t\tbuild-base \t\tcurl \t\tlibressl-dev \t\tperl-dev \t\ttar \t&& curl -sSL \"http://znc.in/releases/znc-${ZNC_VERSION}.tar.gz\" -o /tmp/znc.tar.gz \t&& mkdir -p /usr/src/znc \t&& tar -xzf /tmp/znc.tar.gz -C /usr/src/znc --strip-components 1 \t&& rm /tmp/znc.tar.gz* \t&& ( \t\tcd /usr/src/znc \t\t&& ./configure \t\t&& make -j8 \t\t&& make install \t) \t&& rm -rf /usr/src/znc \t&& runDeps=\"$( \t\tscanelf --needed --nobanner --recursive /usr \t\t\t| awk '{ gsub(/,/, \"\\nso:\", $2); print \"so:\" $2 }' \t\t\t| sort -u \t\t\t| xargs -r apk info --installed \t\t\t| sort -u \t)\" \t&& apk add --no-cache --virtual .irssi-rundeps $runDeps \t&& apk del .build-deps" shape="box"];
  "sha256:c807bb83894b9ee4396dfb0566f359ed905c0b3972c024118e1266bbbd9c3489" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:f34942e2d9f6875036d2bfbc93d11d00315fb0adc61096c7d0ccc5478de4d04e" [label="sha256:f34942e2d9f6875036d2bfbc93d11d00315fb0adc61096c7d0ccc5478de4d04e" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3bfc3ec32afbdea969a43bb9874c04742d4540d8ccf967a7c8284a55ea34e67a" [label=""];
  "sha256:3bfc3ec32afbdea969a43bb9874c04742d4540d8ccf967a7c8284a55ea34e67a" -> "sha256:c1cccbf584d9cba457e5df314855b7757ba968cc90974196b95caed197565add" [label=""];
  "sha256:c1cccbf584d9cba457e5df314855b7757ba968cc90974196b95caed197565add" -> "sha256:2dbb019904110686b3d8b7556a998b171e5c3e163bfe7ceb7a02f5d7c9874dad" [label=""];
  "sha256:2dbb019904110686b3d8b7556a998b171e5c3e163bfe7ceb7a02f5d7c9874dad" -> "sha256:c807bb83894b9ee4396dfb0566f359ed905c0b3972c024118e1266bbbd9c3489" [label=""];
  "sha256:c807bb83894b9ee4396dfb0566f359ed905c0b3972c024118e1266bbbd9c3489" -> "sha256:f34942e2d9f6875036d2bfbc93d11d00315fb0adc61096c7d0ccc5478de4d04e" [label=""];
}

