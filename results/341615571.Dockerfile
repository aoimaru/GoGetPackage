[app/sources/341615571.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:4904be9b142c954c79c249dc7899166a6ed3f62a71f2cc9d9f161728d9800c06" [label="/bin/sh -c go get github.com/revel/revel &&     go get github.com/revel/cmd/revel &&     go get github.com/jinzhu/gorm &&     go get github.com/go-sql-driver/mysql" shape="box"];
  "sha256:b481b8b306d2f6227c94e56656976cda5c6e8de3b00a9ba7b359b5bd3ed107f3" [label="/bin/sh -c mkdir /go/src/myapp" shape="box"];
  "sha256:98926e9140dd5b9a30fc82a469da976824746c535f6354672fe8fa8275f9f6ca" [label="sha256:98926e9140dd5b9a30fc82a469da976824746c535f6354672fe8fa8275f9f6ca" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:4904be9b142c954c79c249dc7899166a6ed3f62a71f2cc9d9f161728d9800c06" [label=""];
  "sha256:4904be9b142c954c79c249dc7899166a6ed3f62a71f2cc9d9f161728d9800c06" -> "sha256:b481b8b306d2f6227c94e56656976cda5c6e8de3b00a9ba7b359b5bd3ed107f3" [label=""];
  "sha256:b481b8b306d2f6227c94e56656976cda5c6e8de3b00a9ba7b359b5bd3ed107f3" -> "sha256:98926e9140dd5b9a30fc82a469da976824746c535f6354672fe8fa8275f9f6ca" [label=""];
}

