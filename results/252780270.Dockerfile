[app/sources/252780270.Dockerfile]
digraph {
  "sha256:eed7b99a2c65d18b236926b5927d0633ba55c7138138648079515d8e5281c2f9" [label="docker-image://docker.io/gliderlabs/alpine:edge" shape="ellipse"];
  "sha256:587f02a980c1e896cffc5ac2d136c61d5b0023de3ef736ccfc069e1c9a799b0e" [label="local://context" shape="ellipse"];
  "sha256:2fac04073265a6b9d5fdaaffd2a84072a8ea14b84c7727740022a1cd54c3e1a4" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:383825d7846b95d0aa7fa85814d51388e2e29b298c501d7f88f2e60c2cee1c97" [label="sha256:383825d7846b95d0aa7fa85814d51388e2e29b298c501d7f88f2e60c2cee1c97" shape="plaintext"];
  "sha256:eed7b99a2c65d18b236926b5927d0633ba55c7138138648079515d8e5281c2f9" -> "sha256:2fac04073265a6b9d5fdaaffd2a84072a8ea14b84c7727740022a1cd54c3e1a4" [label=""];
  "sha256:587f02a980c1e896cffc5ac2d136c61d5b0023de3ef736ccfc069e1c9a799b0e" -> "sha256:2fac04073265a6b9d5fdaaffd2a84072a8ea14b84c7727740022a1cd54c3e1a4" [label=""];
  "sha256:2fac04073265a6b9d5fdaaffd2a84072a8ea14b84c7727740022a1cd54c3e1a4" -> "sha256:383825d7846b95d0aa7fa85814d51388e2e29b298c501d7f88f2e60c2cee1c97" [label=""];
}

