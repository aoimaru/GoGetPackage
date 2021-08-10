[app/sources/469337712.Dockerfile]
digraph {
  "sha256:e3ac910efdc44430f73c1156f40cecb21cc987751887b1b8a09919a57ca60ff4" [label="docker-image://docker.io/cnab/makebase:latest" shape="ellipse"];
  "sha256:68e8d7c80ae3238341660c90bf72b82d6c23efabcddddc8a2c5de9381b67b06f" [label="/bin/sh -c apk update && apk add --no-cache openssl ca-certificates curl libgcc &&     curl -fsSL -o /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub &&     curl -fsSL -o glibc-$GLIBC.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC/glibc-$GLIBC.apk &&     apk add --no-cache glibc-$GLIBC.apk &&     ln -s /lib/libz.so.1 /usr/glibc-compat/lib/ &&     ln -s /lib/libc.musl-x86_64.so.1 /usr/glibc-compat/lib &&     ln -s /usr/lib/libgcc_s.so.1 /usr/glibc-compat/lib &&     curl -fsSL -o dockerbins.tgz \"https://download.docker.com/linux/static/stable/x86_64/docker-17.12.1-ce.tgz\" &&     echo \"${DOCKERBINS_SHA}  dockerbins.tgz\" | sha256sum -c - &&     tar xvf dockerbins.tgz docker/docker --strip-components 1 &&     mv docker /usr/local/bin/docker &&     chmod +x /usr/local/bin/docker &&     curl -fsSL -o docker-compose-bin \"https://github.com/docker/compose/releases/download/$COMPOSE/docker-compose-Linux-x86_64\" &&     mv docker-compose-bin /usr/local/bin/docker-compose &&     chmod +x /usr/local/bin/docker-compose &&     rm dockerbins.tgz /etc/apk/keys/sgerrand.rsa.pub glibc-$GLIBC.apk &&     apk del curl" shape="box"];
  "sha256:405054a1ada125f5ffff108e25d8fb6b671a06dca0e2d11d9b326075b51b2fac" [label="local://context" shape="ellipse"];
  "sha256:1f1a9b872ce78aa8ffa533cadfebcf0c5df948c0887793586bc48a574e2f95e7" [label="copy{src=/app, dest=/cnab/app}" shape="note"];
  "sha256:78e0208bd4fd9b06074f0c57ced4d1cb4c47cf93e61636bb5137a8ffa562326b" [label="copy{src=/Dockerfile, dest=/cnab/Dockerfile}" shape="note"];
  "sha256:1c8e83db58a918c3fb2705d04fd4fbd35540bc23df446c811f943896462dcdb0" [label="sha256:1c8e83db58a918c3fb2705d04fd4fbd35540bc23df446c811f943896462dcdb0" shape="plaintext"];
  "sha256:e3ac910efdc44430f73c1156f40cecb21cc987751887b1b8a09919a57ca60ff4" -> "sha256:68e8d7c80ae3238341660c90bf72b82d6c23efabcddddc8a2c5de9381b67b06f" [label=""];
  "sha256:68e8d7c80ae3238341660c90bf72b82d6c23efabcddddc8a2c5de9381b67b06f" -> "sha256:1f1a9b872ce78aa8ffa533cadfebcf0c5df948c0887793586bc48a574e2f95e7" [label=""];
  "sha256:405054a1ada125f5ffff108e25d8fb6b671a06dca0e2d11d9b326075b51b2fac" -> "sha256:1f1a9b872ce78aa8ffa533cadfebcf0c5df948c0887793586bc48a574e2f95e7" [label=""];
  "sha256:1f1a9b872ce78aa8ffa533cadfebcf0c5df948c0887793586bc48a574e2f95e7" -> "sha256:78e0208bd4fd9b06074f0c57ced4d1cb4c47cf93e61636bb5137a8ffa562326b" [label=""];
  "sha256:405054a1ada125f5ffff108e25d8fb6b671a06dca0e2d11d9b326075b51b2fac" -> "sha256:78e0208bd4fd9b06074f0c57ced4d1cb4c47cf93e61636bb5137a8ffa562326b" [label=""];
  "sha256:78e0208bd4fd9b06074f0c57ced4d1cb4c47cf93e61636bb5137a8ffa562326b" -> "sha256:1c8e83db58a918c3fb2705d04fd4fbd35540bc23df446c811f943896462dcdb0" [label=""];
}

