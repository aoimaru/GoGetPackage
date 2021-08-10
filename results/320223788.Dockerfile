[app/sources/320223788.Dockerfile]
digraph {
  "sha256:24f5887ee4b6e18d46f7fd5b4a8893b4feb7cc464c16bf718820ea887ecab76b" [label="docker-image://docker.io/library/alpine:3.9.4" shape="ellipse"];
  "sha256:cfc7418cca83288a49a1a44f17784e71299380977eddcd23c757c9b8658cceea" [label="/bin/sh -c set -xe   && apk --update --no-cache upgrade   && apk add --no-cache     bash     libstdc++     lksctp-tools     openssl   && rm -rf /root/.cache   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:023efbfe9868c7b83fb271e1f168818b084a3ed700b5f347fabd5b1e9bbac11b" [label="/bin/sh -c set -xe   && apk add --no-cache --virtual .build-deps rsync" shape="box"];
  "sha256:7688c37e59c22cfd017ca1536a8f07d3dd60c8b159377029164b726f562dc691" [label="docker-image://docker.io/beardedeagle/alpine-elixir-builder:1.9.0" shape="ellipse"];
  "sha256:2ad151779aeafdded909d5980d12813e71d5840c08e0e75d101af605cb87262a" [label="copy{src=/usr/local, dest=/opt/elixir}" shape="note"];
  "sha256:5a12af3bfb5b2aed1f33fd816a7eb49ec852b18b8f727d0ff8bc0e57986d6c14" [label="docker-image://docker.io/beardedeagle/alpine-node-builder:12.4.0" shape="ellipse"];
  "sha256:9959959e71421fe4e1d3cb0daa6a51435fe6dd71f9786a38a3399c99ab9ed17e" [label="copy{src=/usr/local, dest=/opt/node}" shape="note"];
  "sha256:ae53bfc75eb264005e18ca62d723f25ec125261a2db65f76c537661630da9696" [label="/bin/sh -c set -xe   && rsync -a /opt/elixir/ /usr/local   && rsync -a /opt/node/ /usr/local   && apk del .build-deps   && rm -rf /root/.cache   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:bb456df3adf87c40a92d11584b36c8768004ba4a063b516a9e08c690a80d04da" [label="copy{src=/usr/local, dest=/usr/local}" shape="note"];
  "sha256:0115a8172e1b44a598c53ee6353ec885cedecd1ea54fb7a1d71ce8d617626de2" [label="sha256:0115a8172e1b44a598c53ee6353ec885cedecd1ea54fb7a1d71ce8d617626de2" shape="plaintext"];
  "sha256:24f5887ee4b6e18d46f7fd5b4a8893b4feb7cc464c16bf718820ea887ecab76b" -> "sha256:cfc7418cca83288a49a1a44f17784e71299380977eddcd23c757c9b8658cceea" [label=""];
  "sha256:cfc7418cca83288a49a1a44f17784e71299380977eddcd23c757c9b8658cceea" -> "sha256:023efbfe9868c7b83fb271e1f168818b084a3ed700b5f347fabd5b1e9bbac11b" [label=""];
  "sha256:023efbfe9868c7b83fb271e1f168818b084a3ed700b5f347fabd5b1e9bbac11b" -> "sha256:2ad151779aeafdded909d5980d12813e71d5840c08e0e75d101af605cb87262a" [label=""];
  "sha256:7688c37e59c22cfd017ca1536a8f07d3dd60c8b159377029164b726f562dc691" -> "sha256:2ad151779aeafdded909d5980d12813e71d5840c08e0e75d101af605cb87262a" [label=""];
  "sha256:2ad151779aeafdded909d5980d12813e71d5840c08e0e75d101af605cb87262a" -> "sha256:9959959e71421fe4e1d3cb0daa6a51435fe6dd71f9786a38a3399c99ab9ed17e" [label=""];
  "sha256:5a12af3bfb5b2aed1f33fd816a7eb49ec852b18b8f727d0ff8bc0e57986d6c14" -> "sha256:9959959e71421fe4e1d3cb0daa6a51435fe6dd71f9786a38a3399c99ab9ed17e" [label=""];
  "sha256:9959959e71421fe4e1d3cb0daa6a51435fe6dd71f9786a38a3399c99ab9ed17e" -> "sha256:ae53bfc75eb264005e18ca62d723f25ec125261a2db65f76c537661630da9696" [label=""];
  "sha256:cfc7418cca83288a49a1a44f17784e71299380977eddcd23c757c9b8658cceea" -> "sha256:bb456df3adf87c40a92d11584b36c8768004ba4a063b516a9e08c690a80d04da" [label=""];
  "sha256:ae53bfc75eb264005e18ca62d723f25ec125261a2db65f76c537661630da9696" -> "sha256:bb456df3adf87c40a92d11584b36c8768004ba4a063b516a9e08c690a80d04da" [label=""];
  "sha256:bb456df3adf87c40a92d11584b36c8768004ba4a063b516a9e08c690a80d04da" -> "sha256:0115a8172e1b44a598c53ee6353ec885cedecd1ea54fb7a1d71ce8d617626de2" [label=""];
}

