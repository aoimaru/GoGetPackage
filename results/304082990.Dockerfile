[app/sources/304082990.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:1114b924fd5b407ddc5b8c12797f5b347ba3564215dd868cb9897dcbe236485b" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers git" shape="box"];
  "sha256:caab451e30521f23eb4b41a8ddb885f12325992d87bf0c6f98630c64d2e02560" [label="local://context" shape="ellipse"];
  "sha256:8f73267fceb609ce49237f442b3d3e9def5a0712ee071f165efd4518c66d07b1" [label="copy{src=/, dest=/go-usechain}" shape="note"];
  "sha256:b850ed46885d9d142649c0ad2ff7e39e2707e0f227aea2b51c7e7bd6213c1010" [label="/bin/sh -c cd /go-usechain && make all" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:7a7d448c9cd4d01eda64230506f2ccdf1dcdc845509782cd02f89bf7859b339b" [label="copy{src=/go-usechain/build/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:2923fce693cd7e28525ffec1257561d7eacc6b41c86f2e8b39180769d58d7f06" [label="/bin/sh -c mkdir -p /root/.usechain" shape="box"];
  "sha256:7e2b3cbacca69d4d77327590ed9d6fb24dfb08ff48fe10535f43706c7de9b40a" [label="copy{src=/go-usechain/build/config/profile/mainnetCA.pem, dest=/root/.usechain}" shape="note"];
  "sha256:013de3c3f9a8ad1b2a8d3c6e6495fd7bea228411515b9a94130a2bd9fced6512" [label="copy{src=/go-usechain/build/config/profile/moonetCA.pem, dest=/root/.usechain}" shape="note"];
  "sha256:1a03f94974a1bfb2956fab7a290ed7821c06b41b2c6a83cec743e67ff9520650" [label="sha256:1a03f94974a1bfb2956fab7a290ed7821c06b41b2c6a83cec743e67ff9520650" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:1114b924fd5b407ddc5b8c12797f5b347ba3564215dd868cb9897dcbe236485b" [label=""];
  "sha256:1114b924fd5b407ddc5b8c12797f5b347ba3564215dd868cb9897dcbe236485b" -> "sha256:8f73267fceb609ce49237f442b3d3e9def5a0712ee071f165efd4518c66d07b1" [label=""];
  "sha256:caab451e30521f23eb4b41a8ddb885f12325992d87bf0c6f98630c64d2e02560" -> "sha256:8f73267fceb609ce49237f442b3d3e9def5a0712ee071f165efd4518c66d07b1" [label=""];
  "sha256:8f73267fceb609ce49237f442b3d3e9def5a0712ee071f165efd4518c66d07b1" -> "sha256:b850ed46885d9d142649c0ad2ff7e39e2707e0f227aea2b51c7e7bd6213c1010" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:7a7d448c9cd4d01eda64230506f2ccdf1dcdc845509782cd02f89bf7859b339b" [label=""];
  "sha256:b850ed46885d9d142649c0ad2ff7e39e2707e0f227aea2b51c7e7bd6213c1010" -> "sha256:7a7d448c9cd4d01eda64230506f2ccdf1dcdc845509782cd02f89bf7859b339b" [label=""];
  "sha256:7a7d448c9cd4d01eda64230506f2ccdf1dcdc845509782cd02f89bf7859b339b" -> "sha256:2923fce693cd7e28525ffec1257561d7eacc6b41c86f2e8b39180769d58d7f06" [label=""];
  "sha256:2923fce693cd7e28525ffec1257561d7eacc6b41c86f2e8b39180769d58d7f06" -> "sha256:7e2b3cbacca69d4d77327590ed9d6fb24dfb08ff48fe10535f43706c7de9b40a" [label=""];
  "sha256:b850ed46885d9d142649c0ad2ff7e39e2707e0f227aea2b51c7e7bd6213c1010" -> "sha256:7e2b3cbacca69d4d77327590ed9d6fb24dfb08ff48fe10535f43706c7de9b40a" [label=""];
  "sha256:7e2b3cbacca69d4d77327590ed9d6fb24dfb08ff48fe10535f43706c7de9b40a" -> "sha256:013de3c3f9a8ad1b2a8d3c6e6495fd7bea228411515b9a94130a2bd9fced6512" [label=""];
  "sha256:b850ed46885d9d142649c0ad2ff7e39e2707e0f227aea2b51c7e7bd6213c1010" -> "sha256:013de3c3f9a8ad1b2a8d3c6e6495fd7bea228411515b9a94130a2bd9fced6512" [label=""];
  "sha256:013de3c3f9a8ad1b2a8d3c6e6495fd7bea228411515b9a94130a2bd9fced6512" -> "sha256:1a03f94974a1bfb2956fab7a290ed7821c06b41b2c6a83cec743e67ff9520650" [label=""];
}

