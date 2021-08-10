[app/sources/252772505.Dockerfile]
digraph {
  "sha256:6324d2e125d4c69124ffcc523d47d7418ae9e7a88479d279f6c3eb9c47a9acc7" [label="docker-image://docker.io/library/node:8.4.0-alpine" shape="ellipse"];
  "sha256:b002c83b0d8f55071141b957019b782a1a6244848e27140bde1e00fce06e6ec8" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:e5d6f98c14342f76a9be23a1976bba50a5f24b6ae89b772df9e2d7c0596b2cf3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bfc07daae74d2506e27a7c3c22056de612aac9f3c97865aa3b930df5ce0162b6" [label="local://context" shape="ellipse"];
  "sha256:58f6c85c1a5697ac15c1e27e0c916c54cfa4c01e823a00594f85127b704b580d" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/*.js, dest=/usr/src/app/}" shape="note"];
  "sha256:8fe3ee995ca344bb5ceb945bfe9bac7c2c9bd7b2bee56d9274aaf146727a569a" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:48d2e087febd166dfd39a3fcfa75a4c384c88b9299b61992266b8c7e5f20e838" [label="sha256:48d2e087febd166dfd39a3fcfa75a4c384c88b9299b61992266b8c7e5f20e838" shape="plaintext"];
  "sha256:6324d2e125d4c69124ffcc523d47d7418ae9e7a88479d279f6c3eb9c47a9acc7" -> "sha256:b002c83b0d8f55071141b957019b782a1a6244848e27140bde1e00fce06e6ec8" [label=""];
  "sha256:b002c83b0d8f55071141b957019b782a1a6244848e27140bde1e00fce06e6ec8" -> "sha256:e5d6f98c14342f76a9be23a1976bba50a5f24b6ae89b772df9e2d7c0596b2cf3" [label=""];
  "sha256:e5d6f98c14342f76a9be23a1976bba50a5f24b6ae89b772df9e2d7c0596b2cf3" -> "sha256:58f6c85c1a5697ac15c1e27e0c916c54cfa4c01e823a00594f85127b704b580d" [label=""];
  "sha256:bfc07daae74d2506e27a7c3c22056de612aac9f3c97865aa3b930df5ce0162b6" -> "sha256:58f6c85c1a5697ac15c1e27e0c916c54cfa4c01e823a00594f85127b704b580d" [label=""];
  "sha256:58f6c85c1a5697ac15c1e27e0c916c54cfa4c01e823a00594f85127b704b580d" -> "sha256:8fe3ee995ca344bb5ceb945bfe9bac7c2c9bd7b2bee56d9274aaf146727a569a" [label=""];
  "sha256:8fe3ee995ca344bb5ceb945bfe9bac7c2c9bd7b2bee56d9274aaf146727a569a" -> "sha256:48d2e087febd166dfd39a3fcfa75a4c384c88b9299b61992266b8c7e5f20e838" [label=""];
}

