[app/sources/367373982.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:9ac0ccc146d2227002e010d384db4c46174beb56be4cc2b6393ed005bf80a241" [label="local://context" shape="ellipse"];
  "sha256:0c6ef2ee586703e743c3c006287e6f63d4a399122dcb0f8d5a6361fe1c9c73b2" [label="copy{src=/, dest=/src/github.com/GitbookIO/micro-analytics}" shape="note"];
  "sha256:c012d4ba25d1448b5aa4972e4d12fb3cba1711f14b88eae60ffc379a4e2d9162" [label="/bin/sh -c cd $GOPATH/src/github.com/GitbookIO/micro-analytics && go get && go build --ldflags='-s'" shape="box"];
  "sha256:161a6b6e4bb456c68433f2208ab85f057262af5023005e6a7b4dc2d8d7cc47b3" [label="sha256:161a6b6e4bb456c68433f2208ab85f057262af5023005e6a7b4dc2d8d7cc47b3" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:0c6ef2ee586703e743c3c006287e6f63d4a399122dcb0f8d5a6361fe1c9c73b2" [label=""];
  "sha256:9ac0ccc146d2227002e010d384db4c46174beb56be4cc2b6393ed005bf80a241" -> "sha256:0c6ef2ee586703e743c3c006287e6f63d4a399122dcb0f8d5a6361fe1c9c73b2" [label=""];
  "sha256:0c6ef2ee586703e743c3c006287e6f63d4a399122dcb0f8d5a6361fe1c9c73b2" -> "sha256:c012d4ba25d1448b5aa4972e4d12fb3cba1711f14b88eae60ffc379a4e2d9162" [label=""];
  "sha256:c012d4ba25d1448b5aa4972e4d12fb3cba1711f14b88eae60ffc379a4e2d9162" -> "sha256:161a6b6e4bb456c68433f2208ab85f057262af5023005e6a7b4dc2d8d7cc47b3" [label=""];
}

