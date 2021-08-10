[app/sources/341208724.Dockerfile]
digraph {
  "sha256:00b9418eeb87a2e63b81c0b5798b33d139c9c14338b09190d7b599f66b51abc9" [label="docker-image://docker.io/library/memcached:latest" shape="ellipse"];
  "sha256:3f84e799eec7fe7439b16c23355637de228755a363fdba918040e422f0a3f9d8" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:82e58253cae8ed5577b1a13fe3467c2576ee6ab08a986dea8ee9efb61371b683" [label="sha256:82e58253cae8ed5577b1a13fe3467c2576ee6ab08a986dea8ee9efb61371b683" shape="plaintext"];
  "sha256:00b9418eeb87a2e63b81c0b5798b33d139c9c14338b09190d7b599f66b51abc9" -> "sha256:3f84e799eec7fe7439b16c23355637de228755a363fdba918040e422f0a3f9d8" [label=""];
  "sha256:3f84e799eec7fe7439b16c23355637de228755a363fdba918040e422f0a3f9d8" -> "sha256:82e58253cae8ed5577b1a13fe3467c2576ee6ab08a986dea8ee9efb61371b683" [label=""];
}

