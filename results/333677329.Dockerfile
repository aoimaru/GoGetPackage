[app/sources/333677329.Dockerfile]
digraph {
  "sha256:f7c1a009de7bf06427317825797bbe8d0b9fd5701de94457267339313081f0da" [label="docker-image://docker.io/library/nginx:1.13.8" shape="ellipse"];
  "sha256:bb3e0eb58086a85b5745c8fdc9904b450d46320b3a59d9755bce141124f078eb" [label="/bin/sh -c apt-get update     && apt-get install -y curl     && curl -L https://github.com/swagger-api/swagger-ui/archive/v${SWAGGER_UI_VERSION}.tar.gz | tar -zxv -C /tmp     && cp -R /tmp/swagger-ui-${SWAGGER_UI_VERSION}/dist/* /usr/share/nginx/html     && rm -rf /tmp/*" shape="box"];
  "sha256:661bb76f2370cbb575921ad07408e987234e3d35087b95f1741e53627c4c20cf" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:fbc9b39c1747badf0e4f2fa1349069ffbe784e11e65defcfa1f3a28ed3909e64" [label="local://context" shape="ellipse"];
  "sha256:c48ba51808f4ffc6c7325f77df298ab7dbcc5fc7a05045907ad6420eefead853" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:195b8030d9b513c93065aa5e0ca0daf38d8700746411bcfa34af9ea94d85c763" [label="copy{src=/swagger.json, dest=/usr/share/nginx/html/swagger.json}" shape="note"];
  "sha256:490ecba7a9fdc0ac2add684ff1a07bda0e96b2422fbe8be493de6266e47aa05b" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:b0c6f8a8542332e80a51b0eb8cc5870fdb73155f69d8b6a5e504161da099d119" [label="chmod +x /start.sh" shape="box"];
  "sha256:a4f6aee48eb9de810c58d69f05a985369bbe88f98dc7bf22d7ded66b483c7e58" [label="sha256:a4f6aee48eb9de810c58d69f05a985369bbe88f98dc7bf22d7ded66b483c7e58" shape="plaintext"];
  "sha256:f7c1a009de7bf06427317825797bbe8d0b9fd5701de94457267339313081f0da" -> "sha256:bb3e0eb58086a85b5745c8fdc9904b450d46320b3a59d9755bce141124f078eb" [label=""];
  "sha256:bb3e0eb58086a85b5745c8fdc9904b450d46320b3a59d9755bce141124f078eb" -> "sha256:661bb76f2370cbb575921ad07408e987234e3d35087b95f1741e53627c4c20cf" [label=""];
  "sha256:661bb76f2370cbb575921ad07408e987234e3d35087b95f1741e53627c4c20cf" -> "sha256:c48ba51808f4ffc6c7325f77df298ab7dbcc5fc7a05045907ad6420eefead853" [label=""];
  "sha256:fbc9b39c1747badf0e4f2fa1349069ffbe784e11e65defcfa1f3a28ed3909e64" -> "sha256:c48ba51808f4ffc6c7325f77df298ab7dbcc5fc7a05045907ad6420eefead853" [label=""];
  "sha256:c48ba51808f4ffc6c7325f77df298ab7dbcc5fc7a05045907ad6420eefead853" -> "sha256:195b8030d9b513c93065aa5e0ca0daf38d8700746411bcfa34af9ea94d85c763" [label=""];
  "sha256:fbc9b39c1747badf0e4f2fa1349069ffbe784e11e65defcfa1f3a28ed3909e64" -> "sha256:195b8030d9b513c93065aa5e0ca0daf38d8700746411bcfa34af9ea94d85c763" [label=""];
  "sha256:195b8030d9b513c93065aa5e0ca0daf38d8700746411bcfa34af9ea94d85c763" -> "sha256:490ecba7a9fdc0ac2add684ff1a07bda0e96b2422fbe8be493de6266e47aa05b" [label=""];
  "sha256:fbc9b39c1747badf0e4f2fa1349069ffbe784e11e65defcfa1f3a28ed3909e64" -> "sha256:490ecba7a9fdc0ac2add684ff1a07bda0e96b2422fbe8be493de6266e47aa05b" [label=""];
  "sha256:490ecba7a9fdc0ac2add684ff1a07bda0e96b2422fbe8be493de6266e47aa05b" -> "sha256:b0c6f8a8542332e80a51b0eb8cc5870fdb73155f69d8b6a5e504161da099d119" [label=""];
  "sha256:b0c6f8a8542332e80a51b0eb8cc5870fdb73155f69d8b6a5e504161da099d119" -> "sha256:a4f6aee48eb9de810c58d69f05a985369bbe88f98dc7bf22d7ded66b483c7e58" [label=""];
}

