[app/sources/146962538.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:e21d1e6f162bfaed1f2a35dfd8db236886cbcf065bb1b92cbb15f5d09c3f7ce2" [label="local://context" shape="ellipse"];
  "sha256:f093cdf992e60af6bc1eb748da0b02fe5c78e120211973bde6ee66fd506a041e" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:eb5d8b78bd1e4de253bef8f2a22914b2fcd198ff49a79384a17e0844ae6cf11d" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:79df00765b6138b0f7510fa0cf663991d4aaaf25c35c06af1ca135dac7d14d5d" [label="sha256:79df00765b6138b0f7510fa0cf663991d4aaaf25c35c06af1ca135dac7d14d5d" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:f093cdf992e60af6bc1eb748da0b02fe5c78e120211973bde6ee66fd506a041e" [label=""];
  "sha256:e21d1e6f162bfaed1f2a35dfd8db236886cbcf065bb1b92cbb15f5d09c3f7ce2" -> "sha256:f093cdf992e60af6bc1eb748da0b02fe5c78e120211973bde6ee66fd506a041e" [label=""];
  "sha256:f093cdf992e60af6bc1eb748da0b02fe5c78e120211973bde6ee66fd506a041e" -> "sha256:eb5d8b78bd1e4de253bef8f2a22914b2fcd198ff49a79384a17e0844ae6cf11d" [label=""];
  "sha256:eb5d8b78bd1e4de253bef8f2a22914b2fcd198ff49a79384a17e0844ae6cf11d" -> "sha256:79df00765b6138b0f7510fa0cf663991d4aaaf25c35c06af1ca135dac7d14d5d" [label=""];
}

