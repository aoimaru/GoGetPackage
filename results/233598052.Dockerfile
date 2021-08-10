[app/sources/233598052.Dockerfile]
digraph {
  "sha256:e8b2ecd16e90571bb0e145d160719457f3b0a52fac431cbadcf163e7e84f3adb" [label="docker-image://docker.io/library/python:alpine3.8" shape="ellipse"];
  "sha256:4545cf543cbabca2f262836d6dac68b34edfd6bb9cb397b0215bf92682cf9592" [label="local://context" shape="ellipse"];
  "sha256:f04590c58b3b47420ec9c6d9f4c71a75b44fa4db808b1546cd74704c2b20ef30" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:a0e4a279eafe88a017b05308e82a7d3d8832ae51c174a3c8db05efc3c3ef4422" [label="/bin/sh -c apk upgrade --no-cache  && apk add --no-cache --virtual .build-deps ca-certificates  && apk add --no-cache tini tzdata  && /src/setup.py install  && rm -Rf /root/.cache  && apk del .build-deps" shape="box"];
  "sha256:91f3ff80a185346799441beb9a9dbdb3e2dc9c13707a935bd3d03a79d507cfb4" [label="sha256:91f3ff80a185346799441beb9a9dbdb3e2dc9c13707a935bd3d03a79d507cfb4" shape="plaintext"];
  "sha256:e8b2ecd16e90571bb0e145d160719457f3b0a52fac431cbadcf163e7e84f3adb" -> "sha256:f04590c58b3b47420ec9c6d9f4c71a75b44fa4db808b1546cd74704c2b20ef30" [label=""];
  "sha256:4545cf543cbabca2f262836d6dac68b34edfd6bb9cb397b0215bf92682cf9592" -> "sha256:f04590c58b3b47420ec9c6d9f4c71a75b44fa4db808b1546cd74704c2b20ef30" [label=""];
  "sha256:f04590c58b3b47420ec9c6d9f4c71a75b44fa4db808b1546cd74704c2b20ef30" -> "sha256:a0e4a279eafe88a017b05308e82a7d3d8832ae51c174a3c8db05efc3c3ef4422" [label=""];
  "sha256:a0e4a279eafe88a017b05308e82a7d3d8832ae51c174a3c8db05efc3c3ef4422" -> "sha256:91f3ff80a185346799441beb9a9dbdb3e2dc9c13707a935bd3d03a79d507cfb4" [label=""];
}

