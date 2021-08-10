[app/sources/231572091.Dockerfile]
digraph {
  "sha256:d0133e02297299318e48348f4deb857a075d9cfb1045a856a2191fcb8f1d93a0" [label="docker-image://docker.io/mhart/alpine-node:7.10.1" shape="ellipse"];
  "sha256:5dd3db7eff3cd0a0424049cb84c2ca7e91f49ed45188518726a3687a10430274" [label="/bin/sh -c apk update && \tapk upgrade && \tapk add --no-cache build-base && \tapk add --no-cache python" shape="box"];
  "sha256:2e34461b4a4549d658bc39e6cfa88ee3eba7e5ffd1787b9d7091f4719f02a557" [label="/bin/sh -c addgroup -S openhabcloud && \tadduser -H -S -g openhabcloud openhabcloud" shape="box"];
  "sha256:877df3652453b7fc42c369ba727c3c247bf38f243b3133baceaeac0d1027d417" [label="/bin/sh -c apk add --no-cache tzdata && \tcp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \techo \"Europe/Berlin\" >  /etc/timezone" shape="box"];
  "sha256:fa0bd9285c9bca3fffefac2d1bdea914db336c555b51136b5f12374a606b55d5" [label="/bin/sh -c rm -rf     /usr/share/man     /tmp/* /var/cache/apk/*     /root/.npm     /root/.node-gyp     /root/.gnupg     /usr/lib/node_modules/npm/man     /usr/lib/node_modules/npm/doc     /usr/lib/node_modules/npm/html     /usr/lib/node_modules/npm/scripts" shape="box"];
  "sha256:4059af2ac6ad62120a886e5e17e41d10c59ed1092d4925218fd4c1dbb887fa0c" [label="/bin/sh -c mkdir -p /opt/openhabcloud" shape="box"];
  "sha256:0f2eb0ec4662d1fd434cea056ea63e106cf7520ea616940e8f4b8f2097510f79" [label="local://context" shape="ellipse"];
  "sha256:af5090bc309818ba5e699aa6c7b3704284fb8d1c694816a0b76695344370c694" [label="copy{src=/package.json, dest=/opt/openhabcloud/},copy{src=/config.json, dest=/opt/openhabcloud/}" shape="note"];
  "sha256:a37f0946d7fe2222dff87a9c1014d5fe82b3bfbb07d47c14e43ed3d0de2bafb5" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:7ba14ed4dd5ff312bced98f44aaec05de9a7f77be61ac9ba279b07e3d14c3c38" [label="/bin/sh -c ln -s /opt/openhabcloud/package.json /data" shape="box"];
  "sha256:fa4d203a5bdf25350692881486f37fc0c4276368e6f64cb89dd2014114a5de3b" [label="mkdir{path=/data}" shape="note"];
  "sha256:e74864a422b53d8157acaeb16b461b9d06b3390a2f1277810b8bf734a89db026" [label="/bin/sh -c npm install && npm rebuild bcrypt --build-from-source" shape="box"];
  "sha256:70d1948d5dcb6ff8338a61ef1f2acecb74dc8e68fcd59cb96ebe2bc19295d91e" [label="mkdir{path=/opt/openhabcloud}" shape="note"];
  "sha256:6c9ef7a3f60c3f4b673c9ded15061134088a56d4cfd4f2c40934bc163bebee90" [label="copy{src=/, dest=/opt/openhabcloud}" shape="note"];
  "sha256:f672ccd983fc3f7780f9c6b595382bac44e0082b85040c166f2a3adc55a39361" [label="sha256:f672ccd983fc3f7780f9c6b595382bac44e0082b85040c166f2a3adc55a39361" shape="plaintext"];
  "sha256:d0133e02297299318e48348f4deb857a075d9cfb1045a856a2191fcb8f1d93a0" -> "sha256:5dd3db7eff3cd0a0424049cb84c2ca7e91f49ed45188518726a3687a10430274" [label=""];
  "sha256:5dd3db7eff3cd0a0424049cb84c2ca7e91f49ed45188518726a3687a10430274" -> "sha256:2e34461b4a4549d658bc39e6cfa88ee3eba7e5ffd1787b9d7091f4719f02a557" [label=""];
  "sha256:2e34461b4a4549d658bc39e6cfa88ee3eba7e5ffd1787b9d7091f4719f02a557" -> "sha256:877df3652453b7fc42c369ba727c3c247bf38f243b3133baceaeac0d1027d417" [label=""];
  "sha256:877df3652453b7fc42c369ba727c3c247bf38f243b3133baceaeac0d1027d417" -> "sha256:fa0bd9285c9bca3fffefac2d1bdea914db336c555b51136b5f12374a606b55d5" [label=""];
  "sha256:fa0bd9285c9bca3fffefac2d1bdea914db336c555b51136b5f12374a606b55d5" -> "sha256:4059af2ac6ad62120a886e5e17e41d10c59ed1092d4925218fd4c1dbb887fa0c" [label=""];
  "sha256:4059af2ac6ad62120a886e5e17e41d10c59ed1092d4925218fd4c1dbb887fa0c" -> "sha256:af5090bc309818ba5e699aa6c7b3704284fb8d1c694816a0b76695344370c694" [label=""];
  "sha256:0f2eb0ec4662d1fd434cea056ea63e106cf7520ea616940e8f4b8f2097510f79" -> "sha256:af5090bc309818ba5e699aa6c7b3704284fb8d1c694816a0b76695344370c694" [label=""];
  "sha256:af5090bc309818ba5e699aa6c7b3704284fb8d1c694816a0b76695344370c694" -> "sha256:a37f0946d7fe2222dff87a9c1014d5fe82b3bfbb07d47c14e43ed3d0de2bafb5" [label=""];
  "sha256:a37f0946d7fe2222dff87a9c1014d5fe82b3bfbb07d47c14e43ed3d0de2bafb5" -> "sha256:7ba14ed4dd5ff312bced98f44aaec05de9a7f77be61ac9ba279b07e3d14c3c38" [label=""];
  "sha256:7ba14ed4dd5ff312bced98f44aaec05de9a7f77be61ac9ba279b07e3d14c3c38" -> "sha256:fa4d203a5bdf25350692881486f37fc0c4276368e6f64cb89dd2014114a5de3b" [label=""];
  "sha256:fa4d203a5bdf25350692881486f37fc0c4276368e6f64cb89dd2014114a5de3b" -> "sha256:e74864a422b53d8157acaeb16b461b9d06b3390a2f1277810b8bf734a89db026" [label=""];
  "sha256:e74864a422b53d8157acaeb16b461b9d06b3390a2f1277810b8bf734a89db026" -> "sha256:70d1948d5dcb6ff8338a61ef1f2acecb74dc8e68fcd59cb96ebe2bc19295d91e" [label=""];
  "sha256:70d1948d5dcb6ff8338a61ef1f2acecb74dc8e68fcd59cb96ebe2bc19295d91e" -> "sha256:6c9ef7a3f60c3f4b673c9ded15061134088a56d4cfd4f2c40934bc163bebee90" [label=""];
  "sha256:0f2eb0ec4662d1fd434cea056ea63e106cf7520ea616940e8f4b8f2097510f79" -> "sha256:6c9ef7a3f60c3f4b673c9ded15061134088a56d4cfd4f2c40934bc163bebee90" [label=""];
  "sha256:6c9ef7a3f60c3f4b673c9ded15061134088a56d4cfd4f2c40934bc163bebee90" -> "sha256:f672ccd983fc3f7780f9c6b595382bac44e0082b85040c166f2a3adc55a39361" [label=""];
}

