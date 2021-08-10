[app/sources/326042456.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:becca283bcdb3921b12190136021b31506657812ee8463fc5b71a4363715b47b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f9448315b6b3916ecf8dc09a23eaef3cd2e052646d932e750fbfc1ff7befbb7b" [label="local://context" shape="ellipse"];
  "sha256:32b5967ad3c6ddb0c3a80aba023f89bf0b085258a7aac932e3ff237fd3e0dace" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:a577342e67a382031da877b06dfc87e63fb6f4f88237817e85e198832daf3ad7" [label="/bin/sh -c apk add --update     python     python-dev     py-pip     build-base" shape="box"];
  "sha256:dc1f49339da976714a548072160461ab21a9bdca610793f9d52e5270980757e8" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4333831fb66eb70f9b7984daec17baaf933d54917c6004d1891d37b5d514705e" [label="copy{src=/laravel-echo-server.json, dest=/usr/src/app/laravel-echo-server.json}" shape="note"];
  "sha256:f71da3ea7058567e7f1e2287e35c0ef5612ee3883418af0439658faa674e1e1b" [label="sha256:f71da3ea7058567e7f1e2287e35c0ef5612ee3883418af0439658faa674e1e1b" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" [label=""];
  "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" -> "sha256:becca283bcdb3921b12190136021b31506657812ee8463fc5b71a4363715b47b" [label=""];
  "sha256:becca283bcdb3921b12190136021b31506657812ee8463fc5b71a4363715b47b" -> "sha256:32b5967ad3c6ddb0c3a80aba023f89bf0b085258a7aac932e3ff237fd3e0dace" [label=""];
  "sha256:f9448315b6b3916ecf8dc09a23eaef3cd2e052646d932e750fbfc1ff7befbb7b" -> "sha256:32b5967ad3c6ddb0c3a80aba023f89bf0b085258a7aac932e3ff237fd3e0dace" [label=""];
  "sha256:32b5967ad3c6ddb0c3a80aba023f89bf0b085258a7aac932e3ff237fd3e0dace" -> "sha256:a577342e67a382031da877b06dfc87e63fb6f4f88237817e85e198832daf3ad7" [label=""];
  "sha256:a577342e67a382031da877b06dfc87e63fb6f4f88237817e85e198832daf3ad7" -> "sha256:dc1f49339da976714a548072160461ab21a9bdca610793f9d52e5270980757e8" [label=""];
  "sha256:dc1f49339da976714a548072160461ab21a9bdca610793f9d52e5270980757e8" -> "sha256:4333831fb66eb70f9b7984daec17baaf933d54917c6004d1891d37b5d514705e" [label=""];
  "sha256:f9448315b6b3916ecf8dc09a23eaef3cd2e052646d932e750fbfc1ff7befbb7b" -> "sha256:4333831fb66eb70f9b7984daec17baaf933d54917c6004d1891d37b5d514705e" [label=""];
  "sha256:4333831fb66eb70f9b7984daec17baaf933d54917c6004d1891d37b5d514705e" -> "sha256:f71da3ea7058567e7f1e2287e35c0ef5612ee3883418af0439658faa674e1e1b" [label=""];
}

