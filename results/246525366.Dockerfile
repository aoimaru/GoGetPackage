[app/sources/246525366.Dockerfile]
digraph {
  "sha256:87f729435092dfe96b1daa1285780386a5285df70333b5c3621f34a18788e159" [label="docker-image://docker.io/weseek/growi:3" shape="ellipse"];
  "sha256:1aa2fe55aa8bf1655e7a046c1704c87da39946f5cd772249dd442e7dd034e6e7" [label="/bin/sh -c apk add --no-cache --virtual .dl-deps curl     && curl -SL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz         | tar -xz -C /usr/local/bin     && apk del .dl-deps" shape="box"];
  "sha256:94bc6f65fc4047d3503ec580a390c4c54ce10333554f1cbab0fdeea583fbab14" [label="mkdir{path=/opt/growi}" shape="note"];
  "sha256:a9f6d0a6b4641331fec3e30f0bb6232e8ca49d0a17b7dee161f3d5b4d0f6d786" [label="sha256:a9f6d0a6b4641331fec3e30f0bb6232e8ca49d0a17b7dee161f3d5b4d0f6d786" shape="plaintext"];
  "sha256:87f729435092dfe96b1daa1285780386a5285df70333b5c3621f34a18788e159" -> "sha256:1aa2fe55aa8bf1655e7a046c1704c87da39946f5cd772249dd442e7dd034e6e7" [label=""];
  "sha256:1aa2fe55aa8bf1655e7a046c1704c87da39946f5cd772249dd442e7dd034e6e7" -> "sha256:94bc6f65fc4047d3503ec580a390c4c54ce10333554f1cbab0fdeea583fbab14" [label=""];
  "sha256:94bc6f65fc4047d3503ec580a390c4c54ce10333554f1cbab0fdeea583fbab14" -> "sha256:a9f6d0a6b4641331fec3e30f0bb6232e8ca49d0a17b7dee161f3d5b4d0f6d786" [label=""];
}

