[app/sources/305987621.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:32c8694125499f0ddad94fa1799efeb7f5b7c9ee0123288518a9e3131166799f" [label="local://context" shape="ellipse"];
  "sha256:75c9ce0338cd33d0836ef3af62f566fbbd6fb32ea2bc48be08736d9be2c13abc" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:f278fab2ff21a42b0fdb216374519fe6bc87ed12de79e02a71915fd08b1e0551" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:02caab1eab61f35620fdb2647aed84a2e7dfd69c98b5c641c019cad61d60644a" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:d007e4f1d65b955330651d907e97cf1fea35dff305f399738d8d0c8d1b1c3c21" [label="sha256:d007e4f1d65b955330651d907e97cf1fea35dff305f399738d8d0c8d1b1c3c21" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:75c9ce0338cd33d0836ef3af62f566fbbd6fb32ea2bc48be08736d9be2c13abc" [label=""];
  "sha256:32c8694125499f0ddad94fa1799efeb7f5b7c9ee0123288518a9e3131166799f" -> "sha256:75c9ce0338cd33d0836ef3af62f566fbbd6fb32ea2bc48be08736d9be2c13abc" [label=""];
  "sha256:75c9ce0338cd33d0836ef3af62f566fbbd6fb32ea2bc48be08736d9be2c13abc" -> "sha256:f278fab2ff21a42b0fdb216374519fe6bc87ed12de79e02a71915fd08b1e0551" [label=""];
  "sha256:f278fab2ff21a42b0fdb216374519fe6bc87ed12de79e02a71915fd08b1e0551" -> "sha256:02caab1eab61f35620fdb2647aed84a2e7dfd69c98b5c641c019cad61d60644a" [label=""];
  "sha256:02caab1eab61f35620fdb2647aed84a2e7dfd69c98b5c641c019cad61d60644a" -> "sha256:d007e4f1d65b955330651d907e97cf1fea35dff305f399738d8d0c8d1b1c3c21" [label=""];
}

