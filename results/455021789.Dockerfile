[app/sources/455021789.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:04bc167a0792b2c3cc9e89ec496fb446a349ec6e95a61daad8b090ae67430378" [label="/bin/sh -c mkdir -p src/github.com/pingcap &&     cd src/github.com/pingcap &&     curl -L https://github.com/pingcap/tidb/archive/${VERSION}.tar.gz | tar -xz &&     mv tidb-${VERSION} tidb && cd tidb &&     make &&     cp -f ./bin/tidb-server /tidb-server &&     make clean" shape="box"];
  "sha256:3fa227716b81b714e36ede7f66c00bedaf7b7566da5af1e05c93d03403f6bad2" [label="sha256:3fa227716b81b714e36ede7f66c00bedaf7b7566da5af1e05c93d03403f6bad2" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:04bc167a0792b2c3cc9e89ec496fb446a349ec6e95a61daad8b090ae67430378" [label=""];
  "sha256:04bc167a0792b2c3cc9e89ec496fb446a349ec6e95a61daad8b090ae67430378" -> "sha256:3fa227716b81b714e36ede7f66c00bedaf7b7566da5af1e05c93d03403f6bad2" [label=""];
}

