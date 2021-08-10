[app/sources/245360774.Dockerfile]
digraph {
  "sha256:57b75749bec781e9f6f7c87e6d6420811786e64d3acabb7ee64bc34b4786b2c9" [label="local://context" shape="ellipse"];
  "sha256:c748244a15cfca075bbbae51da210ad23656f8df680e598d6672d73a83e7fb1b" [label="docker-image://docker.io/library/java:openjdk-8-jre-alpine" shape="ellipse"];
  "sha256:77cf1c4b86deb2143d20c2e3e92f75f6ce22b810e6cf4902e4970ca23596d616" [label="/bin/sh -c apk update &&     apk --no-cache add         --repository https://dl-3.alpinelinux.org/alpine/edge/testing         --repository https://dl-3.alpinelinux.org/alpine/edge/community         curl         shadow         tar         gosu" shape="box"];
  "sha256:612b865ac638109287f853441441c653621d9b55169b702083f19692f12d39e8" [label="/bin/sh -c set -x     && cd /     && mkdir /elasticsearch     && curl -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$ELASTICSEARCH_VERSION.tar.gz     && tar xf elasticsearch-$ELASTICSEARCH_VERSION.tar.gz -C /elasticsearch --strip-components=1     && rm elasticsearch-$ELASTICSEARCH_VERSION.tar.gz" shape="box"];
  "sha256:065b78fc1cac6ae82de287c6f52ef7e27b7161dc7ff40968c6d46b9b3b04676e" [label="copy{src=/config, dest=/elasticsearch/config}" shape="note"];
  "sha256:309f1574fff51b410b7eefc9de0b9e6685b2ab1da117816d770d16c72a8e040d" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:718eb2810749b3c9161d0414d664e5a547d704d075a8846a3f89ef7cf8b33ca0" [label="copy{src=/elasticsearch_logging_discovery, dest=/}" shape="note"];
  "sha256:34dc749773730d68e13b0669b8b53978082a6e8111d993ad3badd615d7f63a82" [label="/bin/sh -c useradd --no-create-home --user-group elasticsearch     && mkdir /data     && chown -R elasticsearch:elasticsearch /elasticsearch" shape="box"];
  "sha256:b6610faebf6f27e8e266cae880eba013317b7b3dff72c88f9d4f42f6b6f4a223" [label="sha256:b6610faebf6f27e8e266cae880eba013317b7b3dff72c88f9d4f42f6b6f4a223" shape="plaintext"];
  "sha256:c748244a15cfca075bbbae51da210ad23656f8df680e598d6672d73a83e7fb1b" -> "sha256:77cf1c4b86deb2143d20c2e3e92f75f6ce22b810e6cf4902e4970ca23596d616" [label=""];
  "sha256:77cf1c4b86deb2143d20c2e3e92f75f6ce22b810e6cf4902e4970ca23596d616" -> "sha256:612b865ac638109287f853441441c653621d9b55169b702083f19692f12d39e8" [label=""];
  "sha256:612b865ac638109287f853441441c653621d9b55169b702083f19692f12d39e8" -> "sha256:065b78fc1cac6ae82de287c6f52ef7e27b7161dc7ff40968c6d46b9b3b04676e" [label=""];
  "sha256:57b75749bec781e9f6f7c87e6d6420811786e64d3acabb7ee64bc34b4786b2c9" -> "sha256:065b78fc1cac6ae82de287c6f52ef7e27b7161dc7ff40968c6d46b9b3b04676e" [label=""];
  "sha256:065b78fc1cac6ae82de287c6f52ef7e27b7161dc7ff40968c6d46b9b3b04676e" -> "sha256:309f1574fff51b410b7eefc9de0b9e6685b2ab1da117816d770d16c72a8e040d" [label=""];
  "sha256:57b75749bec781e9f6f7c87e6d6420811786e64d3acabb7ee64bc34b4786b2c9" -> "sha256:309f1574fff51b410b7eefc9de0b9e6685b2ab1da117816d770d16c72a8e040d" [label=""];
  "sha256:309f1574fff51b410b7eefc9de0b9e6685b2ab1da117816d770d16c72a8e040d" -> "sha256:718eb2810749b3c9161d0414d664e5a547d704d075a8846a3f89ef7cf8b33ca0" [label=""];
  "sha256:57b75749bec781e9f6f7c87e6d6420811786e64d3acabb7ee64bc34b4786b2c9" -> "sha256:718eb2810749b3c9161d0414d664e5a547d704d075a8846a3f89ef7cf8b33ca0" [label=""];
  "sha256:718eb2810749b3c9161d0414d664e5a547d704d075a8846a3f89ef7cf8b33ca0" -> "sha256:34dc749773730d68e13b0669b8b53978082a6e8111d993ad3badd615d7f63a82" [label=""];
  "sha256:34dc749773730d68e13b0669b8b53978082a6e8111d993ad3badd615d7f63a82" -> "sha256:b6610faebf6f27e8e266cae880eba013317b7b3dff72c88f9d4f42f6b6f4a223" [label=""];
}

