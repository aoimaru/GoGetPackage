[app/sources/443829296.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" [label="/bin/sh -c mkdir -p /usr/local/tomee" shape="box"];
  "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" [label="mkdir{path=/usr/local/tomee}" shape="note"];
  "sha256:4fae572c03146395a6f376c44a716039b3a32610916934dbeeb9fa340ef93702" [label="/bin/sh -c set -xe \t&& for key in $GPG_KEYS; do \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\"; \tdone" shape="box"];
  "sha256:ac53fbffec5f7e54238097b08112e80fe52374a6ea05c9261338cde9db36cd3d" [label="/bin/sh -c set -x \t&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc \t&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz \t&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz \t&& tar -zxf tomee.tar.gz \t&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee \t&& rm -Rf apache-tomee-jaxrs-1.7.5 \t&& rm bin/*.bat \t&& rm tomee.tar.gz*" shape="box"];
  "sha256:9566e0736086929a0d48a8af2ef6e97440cd25aa288b58980eff420fec7804da" [label="sha256:9566e0736086929a0d48a8af2ef6e97440cd25aa288b58980eff420fec7804da" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" [label=""];
  "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" -> "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" [label=""];
  "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" -> "sha256:4fae572c03146395a6f376c44a716039b3a32610916934dbeeb9fa340ef93702" [label=""];
  "sha256:4fae572c03146395a6f376c44a716039b3a32610916934dbeeb9fa340ef93702" -> "sha256:ac53fbffec5f7e54238097b08112e80fe52374a6ea05c9261338cde9db36cd3d" [label=""];
  "sha256:ac53fbffec5f7e54238097b08112e80fe52374a6ea05c9261338cde9db36cd3d" -> "sha256:9566e0736086929a0d48a8af2ef6e97440cd25aa288b58980eff420fec7804da" [label=""];
}

