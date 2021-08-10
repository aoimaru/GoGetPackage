[app/sources/482722749.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:5e7328bf5784d0d8c2f4a810ccea0857e8415667655417482f8f0bf37835ce5a" [label="/bin/sh -c apk add -U curl ca-certificates" shape="box"];
  "sha256:3c76d9d2a55c282463e95b151cc10d70f09ceb28db9285f521a6022fdbe4f2c2" [label="/bin/sh -c curl -o /tmp/docker.tar.gz https://download.docker.com/linux/static/edge/x86_64/docker-${DOCKER_VERSION}.tgz &&     tar zxf /tmp/docker.tar.gz --strip-components=1 -C /usr/local/bin" shape="box"];
  "sha256:b7b485acef6232531216113aab17c61394177228ca017e5fd44fe092dba33573" [label="copy{src=/usr/local/bin/docker, dest=/bin/docker}" shape="note"];
  "sha256:c7da17373eb515659a3b04a303559ab65a52ded58939dac5d7cb7ef31b9dbb26" [label="sha256:c7da17373eb515659a3b04a303559ab65a52ded58939dac5d7cb7ef31b9dbb26" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:5e7328bf5784d0d8c2f4a810ccea0857e8415667655417482f8f0bf37835ce5a" [label=""];
  "sha256:5e7328bf5784d0d8c2f4a810ccea0857e8415667655417482f8f0bf37835ce5a" -> "sha256:3c76d9d2a55c282463e95b151cc10d70f09ceb28db9285f521a6022fdbe4f2c2" [label=""];
  "sha256:3c76d9d2a55c282463e95b151cc10d70f09ceb28db9285f521a6022fdbe4f2c2" -> "sha256:b7b485acef6232531216113aab17c61394177228ca017e5fd44fe092dba33573" [label=""];
  "sha256:b7b485acef6232531216113aab17c61394177228ca017e5fd44fe092dba33573" -> "sha256:c7da17373eb515659a3b04a303559ab65a52ded58939dac5d7cb7ef31b9dbb26" [label=""];
}

