[app/sources/251206971.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:e6c1cee4e3f79f7b395b8573cc04148f0efab3f1d8e3650eff8f2f42aad587a3" [label="/bin/sh -c echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&     apk update && apk upgrade &&     apk add         wget         ca-certificates         php7.1@testing         php7.1-session@testing         php7.1-mysqli@testing         php7.1-pgsql@testing         php7.1-mongodb@testing &&     wget https://github.com/vrana/adminer/releases/download/v$ADMINER_EDITOR_VERSION/editor-$ADMINER_EDITOR_VERSION.php -O /srv/index.php &&     apk del wget ca-certificates &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:81c9ece16a804e2abaa0e6c436f1875f6a00b81ff360587666940d173a7379c9" [label="mkdir{path=/srv}" shape="note"];
  "sha256:7e1e5a10fc0ef13497f8329656d85df4576ba90eb1196b15636c8ca158285896" [label="sha256:7e1e5a10fc0ef13497f8329656d85df4576ba90eb1196b15636c8ca158285896" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:e6c1cee4e3f79f7b395b8573cc04148f0efab3f1d8e3650eff8f2f42aad587a3" [label=""];
  "sha256:e6c1cee4e3f79f7b395b8573cc04148f0efab3f1d8e3650eff8f2f42aad587a3" -> "sha256:81c9ece16a804e2abaa0e6c436f1875f6a00b81ff360587666940d173a7379c9" [label=""];
  "sha256:81c9ece16a804e2abaa0e6c436f1875f6a00b81ff360587666940d173a7379c9" -> "sha256:7e1e5a10fc0ef13497f8329656d85df4576ba90eb1196b15636c8ca158285896" [label=""];
}

