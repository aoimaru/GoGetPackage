[app/sources/174986629.Dockerfile]
digraph {
  "sha256:97be4905555832d934085dab43131584b7889d220e08988190e3a3841426268c" [label="local://context" shape="ellipse"];
  "sha256:4877f299470edcb7b044452242c0b65509795ef56fd4b0bc7d696be6e352e3d2" [label="docker-image://docker.io/easypi/alpine-arm:edge" shape="ellipse"];
  "sha256:5a8682fde3b62af471e771bfa6960f47a3c500975feaf3d0250037045b5b121b" [label="mkdir{path=/opt/elasticsearch}" shape="note"];
  "sha256:6563a16ec3b30c09b499d18701132cb817afd795297d91249a9c6b425e46f81f" [label="/bin/sh -c set -xe     && apk add --no-cache ca-certificates                           bash                           curl                           openjdk8-jre                           tar     && curl -sSL $ELASTICSEARCH_URL | tar xz --strip 1     && curl -sSL $GOSU_URL > /usr/local/bin/gosu     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del curl tar" shape="box"];
  "sha256:63905ee8e7c773d6f68b43441d7122558c7f46daa6178ab75f5680dc3460ca92" [label="/bin/sh -c set -xe     && addgroup -g 1000 elasticsearch     && adduser -D -H -h /opt/elasticsearch -u 1000 -G elasticsearch elasticsearch     && mkdir -p data logs config/scripts     && chown -R elasticsearch:elasticsearch data logs config" shape="box"];
  "sha256:c128283fd9a2d65f43a9232ce38aa2ae1f11dd8f01df1dbbb6c58cabd64c6eb1" [label="copy{src=/config, dest=/opt/elasticsearch/config}" shape="note"];
  "sha256:ec5d55a5a3942e48fd369827a8e5ded7cb692b54eacc5dcf51d234032438f0b0" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:5392f5473eab13ebf8d133445cce1270fa757a1013bcd10a4c26807448b17e77" [label="sha256:5392f5473eab13ebf8d133445cce1270fa757a1013bcd10a4c26807448b17e77" shape="plaintext"];
  "sha256:4877f299470edcb7b044452242c0b65509795ef56fd4b0bc7d696be6e352e3d2" -> "sha256:5a8682fde3b62af471e771bfa6960f47a3c500975feaf3d0250037045b5b121b" [label=""];
  "sha256:5a8682fde3b62af471e771bfa6960f47a3c500975feaf3d0250037045b5b121b" -> "sha256:6563a16ec3b30c09b499d18701132cb817afd795297d91249a9c6b425e46f81f" [label=""];
  "sha256:6563a16ec3b30c09b499d18701132cb817afd795297d91249a9c6b425e46f81f" -> "sha256:63905ee8e7c773d6f68b43441d7122558c7f46daa6178ab75f5680dc3460ca92" [label=""];
  "sha256:63905ee8e7c773d6f68b43441d7122558c7f46daa6178ab75f5680dc3460ca92" -> "sha256:c128283fd9a2d65f43a9232ce38aa2ae1f11dd8f01df1dbbb6c58cabd64c6eb1" [label=""];
  "sha256:97be4905555832d934085dab43131584b7889d220e08988190e3a3841426268c" -> "sha256:c128283fd9a2d65f43a9232ce38aa2ae1f11dd8f01df1dbbb6c58cabd64c6eb1" [label=""];
  "sha256:c128283fd9a2d65f43a9232ce38aa2ae1f11dd8f01df1dbbb6c58cabd64c6eb1" -> "sha256:ec5d55a5a3942e48fd369827a8e5ded7cb692b54eacc5dcf51d234032438f0b0" [label=""];
  "sha256:97be4905555832d934085dab43131584b7889d220e08988190e3a3841426268c" -> "sha256:ec5d55a5a3942e48fd369827a8e5ded7cb692b54eacc5dcf51d234032438f0b0" [label=""];
  "sha256:ec5d55a5a3942e48fd369827a8e5ded7cb692b54eacc5dcf51d234032438f0b0" -> "sha256:5392f5473eab13ebf8d133445cce1270fa757a1013bcd10a4c26807448b17e77" [label=""];
}

