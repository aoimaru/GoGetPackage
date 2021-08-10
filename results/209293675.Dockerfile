[app/sources/209293675.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:197e4274d9f89518a97922285829c3a93e1c086ebf257facadeb6c2562424c3a" [label="/bin/sh -c apk add --no-cache openssh-client git tar curl" shape="box"];
  "sha256:9818085f911188daa1c47f0602b5ce327a1443bda398789ad391d0e5f187a082" [label="/bin/sh -c curl --silent --show-error --fail --location       --header \"Accept: application/tar+gzip, application/x-gzip, application/octet-stream\" -o -       \"https://caddyserver.com/download/linux/amd64?plugins=${plugins}\"     | tar --no-same-owner -C /usr/bin/ -xz caddy  && chmod 0755 /usr/bin/caddy  && /usr/bin/caddy -version" shape="box"];
  "sha256:1a07e0ea7a4120b93d21617eebfbecaad31bbd1f10ca1cbcbc701046f4ebde66" [label="/bin/sh -c mkdir /opt/" shape="box"];
  "sha256:9665844bd4b32f78de9987223b7502f7dbb3a0f8ceeef045fde719ed3983b76c" [label="/bin/sh -c mkdir /opt/workspace" shape="box"];
  "sha256:b5bf84811e3245ca6ff0c7508032f8a3500329e032d53b2d0c31954582f6db39" [label="mkdir{path=/opt/workspace}" shape="note"];
  "sha256:d3784b71166a52de52ce8a1f5ebed470ebe43f5f03f816f06431211ac6e8636c" [label="local://context" shape="ellipse"];
  "sha256:2639a604f220581062065c5ea48db9ec8ef53aacb8baa0b2d48a8dfde2fb716f" [label="copy{src=/run.sh, dest=/opt/workspace}" shape="note"];
  "sha256:6bea0f4def5f907ed048304797030c390c7223955311b0dbe91067e3608a5987" [label="/bin/sh -c chmod +x /opt/workspace/run.sh" shape="box"];
  "sha256:5fe8c9ceb137784706069cd542c841a205d7e63139ea2f456a0c4ecec3d52d97" [label="copy{src=/Caddyfile, dest=/etc/}" shape="note"];
  "sha256:9dcd687a27456774d93366e131362b778fa03629b81f524dbc24bad8cef639fe" [label="sha256:9dcd687a27456774d93366e131362b778fa03629b81f524dbc24bad8cef639fe" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:197e4274d9f89518a97922285829c3a93e1c086ebf257facadeb6c2562424c3a" [label=""];
  "sha256:197e4274d9f89518a97922285829c3a93e1c086ebf257facadeb6c2562424c3a" -> "sha256:9818085f911188daa1c47f0602b5ce327a1443bda398789ad391d0e5f187a082" [label=""];
  "sha256:9818085f911188daa1c47f0602b5ce327a1443bda398789ad391d0e5f187a082" -> "sha256:1a07e0ea7a4120b93d21617eebfbecaad31bbd1f10ca1cbcbc701046f4ebde66" [label=""];
  "sha256:1a07e0ea7a4120b93d21617eebfbecaad31bbd1f10ca1cbcbc701046f4ebde66" -> "sha256:9665844bd4b32f78de9987223b7502f7dbb3a0f8ceeef045fde719ed3983b76c" [label=""];
  "sha256:9665844bd4b32f78de9987223b7502f7dbb3a0f8ceeef045fde719ed3983b76c" -> "sha256:b5bf84811e3245ca6ff0c7508032f8a3500329e032d53b2d0c31954582f6db39" [label=""];
  "sha256:b5bf84811e3245ca6ff0c7508032f8a3500329e032d53b2d0c31954582f6db39" -> "sha256:2639a604f220581062065c5ea48db9ec8ef53aacb8baa0b2d48a8dfde2fb716f" [label=""];
  "sha256:d3784b71166a52de52ce8a1f5ebed470ebe43f5f03f816f06431211ac6e8636c" -> "sha256:2639a604f220581062065c5ea48db9ec8ef53aacb8baa0b2d48a8dfde2fb716f" [label=""];
  "sha256:2639a604f220581062065c5ea48db9ec8ef53aacb8baa0b2d48a8dfde2fb716f" -> "sha256:6bea0f4def5f907ed048304797030c390c7223955311b0dbe91067e3608a5987" [label=""];
  "sha256:6bea0f4def5f907ed048304797030c390c7223955311b0dbe91067e3608a5987" -> "sha256:5fe8c9ceb137784706069cd542c841a205d7e63139ea2f456a0c4ecec3d52d97" [label=""];
  "sha256:d3784b71166a52de52ce8a1f5ebed470ebe43f5f03f816f06431211ac6e8636c" -> "sha256:5fe8c9ceb137784706069cd542c841a205d7e63139ea2f456a0c4ecec3d52d97" [label=""];
  "sha256:5fe8c9ceb137784706069cd542c841a205d7e63139ea2f456a0c4ecec3d52d97" -> "sha256:9dcd687a27456774d93366e131362b778fa03629b81f524dbc24bad8cef639fe" [label=""];
}

