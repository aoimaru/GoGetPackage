[app/sources/324669700.Dockerfile]
digraph {
  "sha256:fc7b21acc41b25985fc2ee997de0c740e7ca1afe90713a2a45f0033870c429cb" [label="docker-image://docker.io/library/python:3-alpine3.7" shape="ellipse"];
  "sha256:a7b87c81cd2648aa307745686f78e87aed4509d89a59d97224585bb5932a2d1a" [label="/bin/sh -c mkdir config" shape="box"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:3e6fb90194032fd1c3cffe938f01e9498c850665ad594373d842e603493bdd3e" [label="mkdir{path=/go/src/github.com/target/flottbot}" shape="note"];
  "sha256:5c2f0efc242c9ac009a898d70bc07cadfcb7a03ea320a2687d068f91e4a70fa2" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:42f82d1319ec6c8d19aaeaea8ee06ba027bb4a23ae3f0cf3b0b9caca308b98be" [label="local://context" shape="ellipse"];
  "sha256:0e403bbbd0aac3e5fbb350ebc1999a6f606c71c6a41443f60e6855e9f6290ff7" [label="copy{src=/, dest=/go/src/github.com/target/flottbot/}" shape="note"];
  "sha256:af9ea44e53205517d163a3b14bfa12203a324e7dc120a914041493d5a1a3376c" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:f70b527b1443174844c07cef0cc9641b92e77d6cfa80def36a73834a32a3efb3" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64     go build -ldflags \"-X github.com/target/flottbot/version.Version=${SOURCE_BRANCH} -X github.com/target/flottbot/version.GitHash=${SOURCE_COMMIT}\"     -o flottbot ./cmd/flottbot" shape="box"];
  "sha256:f4e076a68c8323ddddf4f1a2ea85115a8e9eed18fd8ccb9fea67d2f36c6f7809" [label="copy{src=/go/src/github.com/target/flottbot/flottbot, dest=/}" shape="note"];
  "sha256:d7be79a9ebcc200d688605ff3ed16643437ffa4af8756f4e1478b708353d91e6" [label="sha256:d7be79a9ebcc200d688605ff3ed16643437ffa4af8756f4e1478b708353d91e6" shape="plaintext"];
  "sha256:fc7b21acc41b25985fc2ee997de0c740e7ca1afe90713a2a45f0033870c429cb" -> "sha256:a7b87c81cd2648aa307745686f78e87aed4509d89a59d97224585bb5932a2d1a" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:3e6fb90194032fd1c3cffe938f01e9498c850665ad594373d842e603493bdd3e" [label=""];
  "sha256:3e6fb90194032fd1c3cffe938f01e9498c850665ad594373d842e603493bdd3e" -> "sha256:5c2f0efc242c9ac009a898d70bc07cadfcb7a03ea320a2687d068f91e4a70fa2" [label=""];
  "sha256:5c2f0efc242c9ac009a898d70bc07cadfcb7a03ea320a2687d068f91e4a70fa2" -> "sha256:0e403bbbd0aac3e5fbb350ebc1999a6f606c71c6a41443f60e6855e9f6290ff7" [label=""];
  "sha256:42f82d1319ec6c8d19aaeaea8ee06ba027bb4a23ae3f0cf3b0b9caca308b98be" -> "sha256:0e403bbbd0aac3e5fbb350ebc1999a6f606c71c6a41443f60e6855e9f6290ff7" [label=""];
  "sha256:0e403bbbd0aac3e5fbb350ebc1999a6f606c71c6a41443f60e6855e9f6290ff7" -> "sha256:af9ea44e53205517d163a3b14bfa12203a324e7dc120a914041493d5a1a3376c" [label=""];
  "sha256:af9ea44e53205517d163a3b14bfa12203a324e7dc120a914041493d5a1a3376c" -> "sha256:f70b527b1443174844c07cef0cc9641b92e77d6cfa80def36a73834a32a3efb3" [label=""];
  "sha256:a7b87c81cd2648aa307745686f78e87aed4509d89a59d97224585bb5932a2d1a" -> "sha256:f4e076a68c8323ddddf4f1a2ea85115a8e9eed18fd8ccb9fea67d2f36c6f7809" [label=""];
  "sha256:f70b527b1443174844c07cef0cc9641b92e77d6cfa80def36a73834a32a3efb3" -> "sha256:f4e076a68c8323ddddf4f1a2ea85115a8e9eed18fd8ccb9fea67d2f36c6f7809" [label=""];
  "sha256:f4e076a68c8323ddddf4f1a2ea85115a8e9eed18fd8ccb9fea67d2f36c6f7809" -> "sha256:d7be79a9ebcc200d688605ff3ed16643437ffa4af8756f4e1478b708353d91e6" [label=""];
}

