[app/sources/320096617.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:67aa141d7e6ab793e293a3093d875067ffc1d11ac2f4d4f30044512b3b42ddb0" [label="/bin/sh -c echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&     apk update && apk upgrade &&     apk add         wget         ca-certificates         php7.1@testing         php7.1-session@testing         php7.1-mysqli@testing         php7.1-pgsql@testing         php7.1-mongodb@testing &&     wget https://github.com/vrana/adminer/releases/download/v$ADMINER_EDITOR_VERSION/editor-$ADMINER_EDITOR_VERSION.php -O /srv/index.php &&     apk del wget ca-certificates &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:46a460dabe3104027d526fbfedb660eee7da8a6ef086411408be31e1c16aa617" [label="mkdir{path=/srv}" shape="note"];
  "sha256:73f9e8fa3372f9a2bc2e4ae018514224b0bea19966263192ba7175ae1fb3929d" [label="sha256:73f9e8fa3372f9a2bc2e4ae018514224b0bea19966263192ba7175ae1fb3929d" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:67aa141d7e6ab793e293a3093d875067ffc1d11ac2f4d4f30044512b3b42ddb0" [label=""];
  "sha256:67aa141d7e6ab793e293a3093d875067ffc1d11ac2f4d4f30044512b3b42ddb0" -> "sha256:46a460dabe3104027d526fbfedb660eee7da8a6ef086411408be31e1c16aa617" [label=""];
  "sha256:46a460dabe3104027d526fbfedb660eee7da8a6ef086411408be31e1c16aa617" -> "sha256:73f9e8fa3372f9a2bc2e4ae018514224b0bea19966263192ba7175ae1fb3929d" [label=""];
}

