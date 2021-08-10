[app/sources/304928761.Dockerfile]
digraph {
  "sha256:428e871518ba7d7782a7748012d12b29d7f1287f55e3713e56c2324792371cdb" [label="local://context" shape="ellipse"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:e4662f33438a5175d5267c26337d9ea064fe1d71288f92bed23b384bf2675faa" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:940657c226ea246f9bacdd1e83173cc615bc1f4583c9118f5a8634e2f260e707" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:e4bf9098ebc2c0ec5749f19baef80450ba8443eafd92f8ab7920d4711a684c2f" [label="sha256:e4bf9098ebc2c0ec5749f19baef80450ba8443eafd92f8ab7920d4711a684c2f" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:e4662f33438a5175d5267c26337d9ea064fe1d71288f92bed23b384bf2675faa" [label=""];
  "sha256:428e871518ba7d7782a7748012d12b29d7f1287f55e3713e56c2324792371cdb" -> "sha256:e4662f33438a5175d5267c26337d9ea064fe1d71288f92bed23b384bf2675faa" [label=""];
  "sha256:e4662f33438a5175d5267c26337d9ea064fe1d71288f92bed23b384bf2675faa" -> "sha256:940657c226ea246f9bacdd1e83173cc615bc1f4583c9118f5a8634e2f260e707" [label=""];
  "sha256:940657c226ea246f9bacdd1e83173cc615bc1f4583c9118f5a8634e2f260e707" -> "sha256:e4bf9098ebc2c0ec5749f19baef80450ba8443eafd92f8ab7920d4711a684c2f" [label=""];
}

