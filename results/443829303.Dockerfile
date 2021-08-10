[app/sources/443829303.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" [label="/bin/sh -c mkdir -p /usr/local/tomee" shape="box"];
  "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" [label="mkdir{path=/usr/local/tomee}" shape="note"];
  "sha256:c609b9ce8c89376a9f35988a629092339d7d97f2ca705d36b6cf97a07b20e64b" [label="/bin/sh -c set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";     done" shape="box"];
  "sha256:d99d87ef3eb2190f6c08259375f2984873d32f0622954b679064132ab077e600" [label="/bin/sh -c set -x \t&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-plume.tar.gz.asc -o tomee.tar.gz.asc \t&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-plume.tar.gz -o tomee.tar.gz \t&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz \t&& tar -zxf tomee.tar.gz \t&& mv apache-tomee-plume-7.0.1/* /usr/local/tomee \t&& rm -Rf apache-tomee-plume-7.0.1 \t&& rm bin/*.bat \t&& rm tomee.tar.gz*" shape="box"];
  "sha256:0e9e763cd0a4fab5910753459648844678abaea10710481779649f6ff587d81e" [label="sha256:0e9e763cd0a4fab5910753459648844678abaea10710481779649f6ff587d81e" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" [label=""];
  "sha256:822d1a23f48e78f8804fa1c12303e75250e17849c1c0df7612abcd0c9cb5e5c3" -> "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" [label=""];
  "sha256:485d20d109d50ba05e6780ba9e6b2d352081d174c5e0a5d5a16e39c8fcf9131b" -> "sha256:c609b9ce8c89376a9f35988a629092339d7d97f2ca705d36b6cf97a07b20e64b" [label=""];
  "sha256:c609b9ce8c89376a9f35988a629092339d7d97f2ca705d36b6cf97a07b20e64b" -> "sha256:d99d87ef3eb2190f6c08259375f2984873d32f0622954b679064132ab077e600" [label=""];
  "sha256:d99d87ef3eb2190f6c08259375f2984873d32f0622954b679064132ab077e600" -> "sha256:0e9e763cd0a4fab5910753459648844678abaea10710481779649f6ff587d81e" [label=""];
}

