[app/sources/354029272.Dockerfile]
digraph {
  "sha256:b199801b84ebfb7e5d6991ce715f5b012ff02edb9c76d01db19720a94cf4b200" [label="docker-image://docker.io/iron/base:latest" shape="ellipse"];
  "sha256:414a75e07273641000b96b28a4b75b607e105c7a6655e7a39cf942117129cf06" [label="/bin/sh -c echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories   && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories   && apk update   && apk upgrade   && apk add openjdk8@community   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ab4b3dd60f60aee8e2285d8156e5771c992bfe6ce86d24a96f3f529fbd84d9cf" [label="sha256:ab4b3dd60f60aee8e2285d8156e5771c992bfe6ce86d24a96f3f529fbd84d9cf" shape="plaintext"];
  "sha256:b199801b84ebfb7e5d6991ce715f5b012ff02edb9c76d01db19720a94cf4b200" -> "sha256:414a75e07273641000b96b28a4b75b607e105c7a6655e7a39cf942117129cf06" [label=""];
  "sha256:414a75e07273641000b96b28a4b75b607e105c7a6655e7a39cf942117129cf06" -> "sha256:ab4b3dd60f60aee8e2285d8156e5771c992bfe6ce86d24a96f3f529fbd84d9cf" [label=""];
}

