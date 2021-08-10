[app/sources/333102494.Dockerfile]
digraph {
  "sha256:3b6bdfbb87eb3dfdcd28d7f23e75b08b025683d70767233c2fe0dc92efa34f49" [label="docker-image://docker.io/library/alpine:3.8@sha256:2bb501e6173d9d006e56de5bce2720eb06396803300fe1687b58a7ff32bf4c14" shape="ellipse"];
  "sha256:9d90e2ea233d614b0cb38bb51b56acd604e78c67e51b7230fae26fc3b72e0c80" [label="docker-image://docker.io/library/golang:1.11-alpine@sha256:09e47edb668c2cac8c0bbce113f2f72c97b1555d70546dff569c8b9b27fcebd3" shape="ellipse"];
  "sha256:107bdfd9a75fa10460e53e74d1c5b7d1f82a3db4361bf05888f9c20386326e12" [label="/bin/sh -c apk add --update git gcc g++ linux-headers" shape="box"];
  "sha256:dadf8de4cbc71c1d3ed9c7f14a3aca3e5adc0f1e45c830e791a1c3000ccad822" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/ethereum &&     cd $GOPATH/src/github.com/ethereum &&     git clone https://github.com/ethersphere/go-ethereum &&     cd $GOPATH/src/github.com/akroma-project/akroma &&     git checkout ${VERSION} &&     go install -ldflags \"-X main.gitCommit=${VERSION}\" ./cmd/swarm &&     go install -ldflags \"-X main.gitCommit=${VERSION}\" ./cmd/swarm/swarm-smoke &&     go install -ldflags \"-X main.gitCommit=${VERSION}\" ./cmd/geth &&     cp $GOPATH/bin/swarm /swarm && cp $GOPATH/bin/geth /geth && cp $GOPATH/bin/swarm-smoke /swarm-smoke" shape="box"];
  "sha256:6209008ea133867aa2769cf3c4f43820dbbed765221aafec58854a52f36c71a4" [label="copy{src=/swarm, dest=/},copy{src=/geth, dest=/},copy{src=/swarm-smoke, dest=/}" shape="note"];
  "sha256:d267df0e013d79144bb542cf15f988aad87292be97862a175852d51ec95b5eb2" [label="local://context" shape="ellipse"];
  "sha256:85b6578fb7d71b46c3cbc94519760c689984af5081e32fc3b49d85c62a20e7b5" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:2f19980a9a9250356a0fdc10086c73c1385716eb1def6fbc5472ba0f520458cb" [label="copy{src=/run-smoke.sh, dest=/run-smoke.sh}" shape="note"];
  "sha256:dbbb47ea638a260980263d9efb5d8ff94f2a8bb726ee3f61ee487360d405af11" [label="sha256:dbbb47ea638a260980263d9efb5d8ff94f2a8bb726ee3f61ee487360d405af11" shape="plaintext"];
  "sha256:9d90e2ea233d614b0cb38bb51b56acd604e78c67e51b7230fae26fc3b72e0c80" -> "sha256:107bdfd9a75fa10460e53e74d1c5b7d1f82a3db4361bf05888f9c20386326e12" [label=""];
  "sha256:107bdfd9a75fa10460e53e74d1c5b7d1f82a3db4361bf05888f9c20386326e12" -> "sha256:dadf8de4cbc71c1d3ed9c7f14a3aca3e5adc0f1e45c830e791a1c3000ccad822" [label=""];
  "sha256:3b6bdfbb87eb3dfdcd28d7f23e75b08b025683d70767233c2fe0dc92efa34f49" -> "sha256:6209008ea133867aa2769cf3c4f43820dbbed765221aafec58854a52f36c71a4" [label=""];
  "sha256:dadf8de4cbc71c1d3ed9c7f14a3aca3e5adc0f1e45c830e791a1c3000ccad822" -> "sha256:6209008ea133867aa2769cf3c4f43820dbbed765221aafec58854a52f36c71a4" [label=""];
  "sha256:6209008ea133867aa2769cf3c4f43820dbbed765221aafec58854a52f36c71a4" -> "sha256:85b6578fb7d71b46c3cbc94519760c689984af5081e32fc3b49d85c62a20e7b5" [label=""];
  "sha256:d267df0e013d79144bb542cf15f988aad87292be97862a175852d51ec95b5eb2" -> "sha256:85b6578fb7d71b46c3cbc94519760c689984af5081e32fc3b49d85c62a20e7b5" [label=""];
  "sha256:85b6578fb7d71b46c3cbc94519760c689984af5081e32fc3b49d85c62a20e7b5" -> "sha256:2f19980a9a9250356a0fdc10086c73c1385716eb1def6fbc5472ba0f520458cb" [label=""];
  "sha256:d267df0e013d79144bb542cf15f988aad87292be97862a175852d51ec95b5eb2" -> "sha256:2f19980a9a9250356a0fdc10086c73c1385716eb1def6fbc5472ba0f520458cb" [label=""];
  "sha256:2f19980a9a9250356a0fdc10086c73c1385716eb1def6fbc5472ba0f520458cb" -> "sha256:dbbb47ea638a260980263d9efb5d8ff94f2a8bb726ee3f61ee487360d405af11" [label=""];
}

