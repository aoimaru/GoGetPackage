[app/sources/271043567.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5d19cadb7f7365599fa132117cb5e1d93deb2854f17823e0c33866afebfff634" [label="/bin/sh -c echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories     && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories     && apk add --no-cache     chromium@edge     harfbuzz@edge     nss@edge     freetype@edge     ttf-freefont@edge     && rm -rf /var/cache/*     && mkdir /var/cache/apk" shape="box"];
  "sha256:18a5a8ac3bd01ed34a6ba9592d4c3085b782417e7c1f99151b30cf807f73128c" [label="/bin/sh -c mkdir -p /usr/src/app     && adduser -D chrome     && chown -R chrome:chrome /usr/src/app" shape="box"];
  "sha256:fadd9e379b6ac2b13fba5954dcaf1bbf5970489f2ce5541d7977f1936550b1e8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7bdc9aebad24d17deee4eff7696b56b92420a59274c53ece312ce08c0da6c4e7" [label="sha256:7bdc9aebad24d17deee4eff7696b56b92420a59274c53ece312ce08c0da6c4e7" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5d19cadb7f7365599fa132117cb5e1d93deb2854f17823e0c33866afebfff634" [label=""];
  "sha256:5d19cadb7f7365599fa132117cb5e1d93deb2854f17823e0c33866afebfff634" -> "sha256:18a5a8ac3bd01ed34a6ba9592d4c3085b782417e7c1f99151b30cf807f73128c" [label=""];
  "sha256:18a5a8ac3bd01ed34a6ba9592d4c3085b782417e7c1f99151b30cf807f73128c" -> "sha256:fadd9e379b6ac2b13fba5954dcaf1bbf5970489f2ce5541d7977f1936550b1e8" [label=""];
  "sha256:fadd9e379b6ac2b13fba5954dcaf1bbf5970489f2ce5541d7977f1936550b1e8" -> "sha256:7bdc9aebad24d17deee4eff7696b56b92420a59274c53ece312ce08c0da6c4e7" [label=""];
}

