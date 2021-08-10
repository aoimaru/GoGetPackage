[app/sources/320100629.Dockerfile]
digraph {
  "sha256:3a15577ceeeb1f01ac8f3b4d8ca2d73b91425a42ff61eb0ce0321f6b88e8e2b0" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:4ce8d4175b19f327f5b236a56fef8140e4c76233289b9c83a03ab3c6f390686a" [label="copy{src=/s6.d, dest=/etc/s6.d}" shape="note"];
  "sha256:998b63fb1fe65b6f851f7700febe287f8ad0b5fdc6b98d7479e276058ff11746" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:df3ce110664d090834d8afda93aafb2dbe0b07397eb8269a519626c0af198d0e" [label="copy{src=/index.html, dest=/www/index.html}" shape="note"];
  "sha256:9c95512de884827724d0a80ce42d2320302e63e0157a4b4305b1c92788a6a674" [label="copy{src=/prosody.cfg.lua, dest=/etc/prosody/prosody.cfg.lua}" shape="note"];
  "sha256:dcfcf3237c78df4f7d2265c10f982cc52e30f50fdecde0dc1814e006c4590283" [label="/bin/sh -c set -xe     && apk add --no-cache -U prosody su-exec s6 ca-certificates openssl     && apk add --no-cache --virtual .build-deps nodejs nodejs-npm make ruby ruby-bundler ruby-rdoc ruby-irb git mercurial bash     && hg clone https://hg.prosody.im/prosody-modules/ /prosody_modules     && mkdir -p /converse /www/dist     && cd /converse     && wget -qO- https://github.com/jcbrand/converse.js/archive/${CONVERSE_VERSION}.tar.gz | tar xz --strip 1     && make build     && cp -r /converse/dist/converse.min.js /www/dist/converse.min.js     && cp -r /converse/locale /www/     && cp -r /converse/css /www/     && cp -r /converse/fonticons /www/     && rm -rf /converse     && rm -rf /root/.bundle /root/.npm /root/.gem     && apk del .build-deps     && chmod -R +x /usr/local/bin/run.sh /etc/s6.d /prosody_modules" shape="box"];
  "sha256:e77daf944d0c6b8d15c49fd3d8b20c6bb855e13245699399a19296c5b6bf8c47" [label="sha256:e77daf944d0c6b8d15c49fd3d8b20c6bb855e13245699399a19296c5b6bf8c47" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4ce8d4175b19f327f5b236a56fef8140e4c76233289b9c83a03ab3c6f390686a" [label=""];
  "sha256:3a15577ceeeb1f01ac8f3b4d8ca2d73b91425a42ff61eb0ce0321f6b88e8e2b0" -> "sha256:4ce8d4175b19f327f5b236a56fef8140e4c76233289b9c83a03ab3c6f390686a" [label=""];
  "sha256:4ce8d4175b19f327f5b236a56fef8140e4c76233289b9c83a03ab3c6f390686a" -> "sha256:998b63fb1fe65b6f851f7700febe287f8ad0b5fdc6b98d7479e276058ff11746" [label=""];
  "sha256:3a15577ceeeb1f01ac8f3b4d8ca2d73b91425a42ff61eb0ce0321f6b88e8e2b0" -> "sha256:998b63fb1fe65b6f851f7700febe287f8ad0b5fdc6b98d7479e276058ff11746" [label=""];
  "sha256:998b63fb1fe65b6f851f7700febe287f8ad0b5fdc6b98d7479e276058ff11746" -> "sha256:df3ce110664d090834d8afda93aafb2dbe0b07397eb8269a519626c0af198d0e" [label=""];
  "sha256:3a15577ceeeb1f01ac8f3b4d8ca2d73b91425a42ff61eb0ce0321f6b88e8e2b0" -> "sha256:df3ce110664d090834d8afda93aafb2dbe0b07397eb8269a519626c0af198d0e" [label=""];
  "sha256:df3ce110664d090834d8afda93aafb2dbe0b07397eb8269a519626c0af198d0e" -> "sha256:9c95512de884827724d0a80ce42d2320302e63e0157a4b4305b1c92788a6a674" [label=""];
  "sha256:3a15577ceeeb1f01ac8f3b4d8ca2d73b91425a42ff61eb0ce0321f6b88e8e2b0" -> "sha256:9c95512de884827724d0a80ce42d2320302e63e0157a4b4305b1c92788a6a674" [label=""];
  "sha256:9c95512de884827724d0a80ce42d2320302e63e0157a4b4305b1c92788a6a674" -> "sha256:dcfcf3237c78df4f7d2265c10f982cc52e30f50fdecde0dc1814e006c4590283" [label=""];
  "sha256:dcfcf3237c78df4f7d2265c10f982cc52e30f50fdecde0dc1814e006c4590283" -> "sha256:e77daf944d0c6b8d15c49fd3d8b20c6bb855e13245699399a19296c5b6bf8c47" [label=""];
}

