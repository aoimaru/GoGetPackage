[app/sources/468668386.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8a55bb14f08bea71263202f38e5a0f539b91a345a97100002786b1f3d0c4b7d7" [label="/bin/sh -c addgroup -g 1000 pike   && adduser -u 1000 -G pike -s /bin/sh -D pike   && apk add --no-cache ca-certificates" shape="box"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:075c535bfc25a08e6c593be6dd60534a1685bdef13404ad6fb81fb7f736d1376" [label="/bin/sh -c apk update   && apk add git   && git clone --depth=1 https://github.com/vicanso/pike.git /pike   && cd /pike/web   && yarn   && yarn build   && rm -rf node_module" shape="box"];
  "sha256:20313468f68ed27ed607d0da7de1512462e4cbcafab737c234a7844deaa0beaf" [label="copy{src=/pike, dest=/pike}" shape="note"];
  "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" [label="/bin/sh -c apk update   && apk add git make g++ bash cmake   && go get -u github.com/gobuffalo/packr/v2/packr2   && git clone --depth=1 https://github.com/google/brotli /brotli   && cd /brotli   && ./configure-cmake   && make && make install   && cd /pike   && make build" shape="box"];
  "sha256:9b409cd43b21d9d925e2fceb1ec9f05cfc93144f797c4e5729b986286d6120ea" [label="copy{src=/usr/local/lib/libbrotlicommon.so.1, dest=/usr/lib/}" shape="note"];
  "sha256:49335025bbc0f7236fbe6888b1e204761666e7fd9bd6c86fbbcec138ba4fdbb7" [label="copy{src=/usr/local/lib/libbrotlienc.so.1, dest=/usr/lib/}" shape="note"];
  "sha256:183319b0232de472cd5ef7a39467ce20c8bcaa5c4a6d45940e8fe66ed24a6ffe" [label="copy{src=/usr/local/lib/libbrotlidec.so.1, dest=/usr/lib/}" shape="note"];
  "sha256:5da549c7a8e905c6108acc310de21546d3b247c3d6bdaf67cf7b058b155776ef" [label="copy{src=/pike/pike, dest=/usr/local/bin/pike}" shape="note"];
  "sha256:ddb6380dde7af5684f53c20abd26fffe87ce86c88cb5a441e2870a98c49f5792" [label="mkdir{path=/home/pike}" shape="note"];
  "sha256:eaa6d3792e2452d5fa6194b539e191d20047a6a0900e5c3e06890acc3ae275c6" [label="sha256:eaa6d3792e2452d5fa6194b539e191d20047a6a0900e5c3e06890acc3ae275c6" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8a55bb14f08bea71263202f38e5a0f539b91a345a97100002786b1f3d0c4b7d7" [label=""];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:075c535bfc25a08e6c593be6dd60534a1685bdef13404ad6fb81fb7f736d1376" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:20313468f68ed27ed607d0da7de1512462e4cbcafab737c234a7844deaa0beaf" [label=""];
  "sha256:075c535bfc25a08e6c593be6dd60534a1685bdef13404ad6fb81fb7f736d1376" -> "sha256:20313468f68ed27ed607d0da7de1512462e4cbcafab737c234a7844deaa0beaf" [label=""];
  "sha256:20313468f68ed27ed607d0da7de1512462e4cbcafab737c234a7844deaa0beaf" -> "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" [label=""];
  "sha256:8a55bb14f08bea71263202f38e5a0f539b91a345a97100002786b1f3d0c4b7d7" -> "sha256:9b409cd43b21d9d925e2fceb1ec9f05cfc93144f797c4e5729b986286d6120ea" [label=""];
  "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" -> "sha256:9b409cd43b21d9d925e2fceb1ec9f05cfc93144f797c4e5729b986286d6120ea" [label=""];
  "sha256:9b409cd43b21d9d925e2fceb1ec9f05cfc93144f797c4e5729b986286d6120ea" -> "sha256:49335025bbc0f7236fbe6888b1e204761666e7fd9bd6c86fbbcec138ba4fdbb7" [label=""];
  "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" -> "sha256:49335025bbc0f7236fbe6888b1e204761666e7fd9bd6c86fbbcec138ba4fdbb7" [label=""];
  "sha256:49335025bbc0f7236fbe6888b1e204761666e7fd9bd6c86fbbcec138ba4fdbb7" -> "sha256:183319b0232de472cd5ef7a39467ce20c8bcaa5c4a6d45940e8fe66ed24a6ffe" [label=""];
  "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" -> "sha256:183319b0232de472cd5ef7a39467ce20c8bcaa5c4a6d45940e8fe66ed24a6ffe" [label=""];
  "sha256:183319b0232de472cd5ef7a39467ce20c8bcaa5c4a6d45940e8fe66ed24a6ffe" -> "sha256:5da549c7a8e905c6108acc310de21546d3b247c3d6bdaf67cf7b058b155776ef" [label=""];
  "sha256:2f1429551fc31d2b0c72e409f80def465220494247bfbaf349b9fd2203d62e7e" -> "sha256:5da549c7a8e905c6108acc310de21546d3b247c3d6bdaf67cf7b058b155776ef" [label=""];
  "sha256:5da549c7a8e905c6108acc310de21546d3b247c3d6bdaf67cf7b058b155776ef" -> "sha256:ddb6380dde7af5684f53c20abd26fffe87ce86c88cb5a441e2870a98c49f5792" [label=""];
  "sha256:ddb6380dde7af5684f53c20abd26fffe87ce86c88cb5a441e2870a98c49f5792" -> "sha256:eaa6d3792e2452d5fa6194b539e191d20047a6a0900e5c3e06890acc3ae275c6" [label=""];
}

