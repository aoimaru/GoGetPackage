[app/sources/364923049.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:969f5fbe15f2011521b5c996c63ef22933e76ae20e8157c5c84813e97e97aaea" [label="/bin/sh -c apk -U --no-progress upgrade &&   apk -U --no-progress add taskd taskd-pki" shape="box"];
  "sha256:2cf480ea18f76001cc1870e598348e826649275eb0f079022f5ae7af0611806e" [label="local://context" shape="ellipse"];
  "sha256:3025c773c59d0e5c187189c731e6b37bc361cc5988798e7aa5a75245a49b1a50" [label="copy{src=/docker, dest=/app/taskd/}" shape="note"];
  "sha256:8a201773bfaa647949e24c44e953d20419dcac9d946842d57e94022601da310f" [label="sha256:8a201773bfaa647949e24c44e953d20419dcac9d946842d57e94022601da310f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:969f5fbe15f2011521b5c996c63ef22933e76ae20e8157c5c84813e97e97aaea" [label=""];
  "sha256:969f5fbe15f2011521b5c996c63ef22933e76ae20e8157c5c84813e97e97aaea" -> "sha256:3025c773c59d0e5c187189c731e6b37bc361cc5988798e7aa5a75245a49b1a50" [label=""];
  "sha256:2cf480ea18f76001cc1870e598348e826649275eb0f079022f5ae7af0611806e" -> "sha256:3025c773c59d0e5c187189c731e6b37bc361cc5988798e7aa5a75245a49b1a50" [label=""];
  "sha256:3025c773c59d0e5c187189c731e6b37bc361cc5988798e7aa5a75245a49b1a50" -> "sha256:8a201773bfaa647949e24c44e953d20419dcac9d946842d57e94022601da310f" [label=""];
}

