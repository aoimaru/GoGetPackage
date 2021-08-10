[app/sources/368128035.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:e83e32353ad0f2b7fa3464d3c65d80486ed216e0e200db1c7094d9fa7e2435a9" [label="/bin/sh -c apk update     && apk add --no-cache git fontconfig" shape="box"];
  "sha256:bc875500d36574832dc46b9e34888ad880ca4c34e321269afeb1b9e79fd79216" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:522e545f4193638f9b42c01e4ddf88e132f0bfcaa036782bc810a27ef2e63dd4" [label="/bin/sh -c set -ex   && apk add --no-cache --virtual .build-deps ca-certificates openssl bzip2   && npm config set user 0   && apk del .build-deps" shape="box"];
  "sha256:4686984cd2c436d5272a9b9607fc276afd7de1e05792d61f07b8c61ea4626cc2" [label="/bin/sh -c apk update && apk upgrade &&     echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories &&     echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories &&     apk add --no-cache       chromium@edge       harfbuzz@edge       nss@edge" shape="box"];
  "sha256:271077d3bec1291ee01efa389aec2342a10dc16af1996c6111d674b30d18b6b9" [label="/bin/sh -c addgroup -S pptruser && adduser -S -g pptruser pptruser     && mkdir -p /home/pptruser/Downloads     && chown -R pptruser:pptruser /home/pptruser     && chown -R pptruser:pptruser /srv/app     && chmod g+w /srv/app" shape="box"];
  "sha256:532b15a7f346400595ca3512699f5cd5fccece966c06a5b83da359c0965d3684" [label="local://context" shape="ellipse"];
  "sha256:5d9789d04722ff3a1cdb0a0a0a6ac71f724f2281e878e042c4bfbe2b2ef2d9b2" [label="copy{src=/docker/node/start.sh, dest=/usr/local/bin/node-app-start}" shape="note"];
  "sha256:6d0a31db4503946cb23588b8f317cef22544f4d034aa2db6d53427673589cedc" [label="/bin/sh -c chmod +x /usr/local/bin/node-app-start" shape="box"];
  "sha256:9b413443de47cd9fb9a9d8f876e4ffca56531b314aa9e2e3274890aa290aaad6" [label="copy{src=/package.json, dest=/srv/app}" shape="note"];
  "sha256:41f8f78b3e54f5f7615950b0205ba3723d824b8dce4934f660727944732b8f15" [label="copy{src=/package-lock.json, dest=/srv/app}" shape="note"];
  "sha256:aa08a0400ffc983e00aa52a377dfb2fbfadd7f34162aec6c366742000c51c691" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3eea1f0e5c6b59f5892f9e9898ba842a55bcc0bfb9b22e4a872fdfa6620bd004" [label="sha256:3eea1f0e5c6b59f5892f9e9898ba842a55bcc0bfb9b22e4a872fdfa6620bd004" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:e83e32353ad0f2b7fa3464d3c65d80486ed216e0e200db1c7094d9fa7e2435a9" [label=""];
  "sha256:e83e32353ad0f2b7fa3464d3c65d80486ed216e0e200db1c7094d9fa7e2435a9" -> "sha256:bc875500d36574832dc46b9e34888ad880ca4c34e321269afeb1b9e79fd79216" [label=""];
  "sha256:bc875500d36574832dc46b9e34888ad880ca4c34e321269afeb1b9e79fd79216" -> "sha256:522e545f4193638f9b42c01e4ddf88e132f0bfcaa036782bc810a27ef2e63dd4" [label=""];
  "sha256:522e545f4193638f9b42c01e4ddf88e132f0bfcaa036782bc810a27ef2e63dd4" -> "sha256:4686984cd2c436d5272a9b9607fc276afd7de1e05792d61f07b8c61ea4626cc2" [label=""];
  "sha256:4686984cd2c436d5272a9b9607fc276afd7de1e05792d61f07b8c61ea4626cc2" -> "sha256:271077d3bec1291ee01efa389aec2342a10dc16af1996c6111d674b30d18b6b9" [label=""];
  "sha256:271077d3bec1291ee01efa389aec2342a10dc16af1996c6111d674b30d18b6b9" -> "sha256:5d9789d04722ff3a1cdb0a0a0a6ac71f724f2281e878e042c4bfbe2b2ef2d9b2" [label=""];
  "sha256:532b15a7f346400595ca3512699f5cd5fccece966c06a5b83da359c0965d3684" -> "sha256:5d9789d04722ff3a1cdb0a0a0a6ac71f724f2281e878e042c4bfbe2b2ef2d9b2" [label=""];
  "sha256:5d9789d04722ff3a1cdb0a0a0a6ac71f724f2281e878e042c4bfbe2b2ef2d9b2" -> "sha256:6d0a31db4503946cb23588b8f317cef22544f4d034aa2db6d53427673589cedc" [label=""];
  "sha256:6d0a31db4503946cb23588b8f317cef22544f4d034aa2db6d53427673589cedc" -> "sha256:9b413443de47cd9fb9a9d8f876e4ffca56531b314aa9e2e3274890aa290aaad6" [label=""];
  "sha256:532b15a7f346400595ca3512699f5cd5fccece966c06a5b83da359c0965d3684" -> "sha256:9b413443de47cd9fb9a9d8f876e4ffca56531b314aa9e2e3274890aa290aaad6" [label=""];
  "sha256:9b413443de47cd9fb9a9d8f876e4ffca56531b314aa9e2e3274890aa290aaad6" -> "sha256:41f8f78b3e54f5f7615950b0205ba3723d824b8dce4934f660727944732b8f15" [label=""];
  "sha256:532b15a7f346400595ca3512699f5cd5fccece966c06a5b83da359c0965d3684" -> "sha256:41f8f78b3e54f5f7615950b0205ba3723d824b8dce4934f660727944732b8f15" [label=""];
  "sha256:41f8f78b3e54f5f7615950b0205ba3723d824b8dce4934f660727944732b8f15" -> "sha256:aa08a0400ffc983e00aa52a377dfb2fbfadd7f34162aec6c366742000c51c691" [label=""];
  "sha256:aa08a0400ffc983e00aa52a377dfb2fbfadd7f34162aec6c366742000c51c691" -> "sha256:3eea1f0e5c6b59f5892f9e9898ba842a55bcc0bfb9b22e4a872fdfa6620bd004" [label=""];
}

