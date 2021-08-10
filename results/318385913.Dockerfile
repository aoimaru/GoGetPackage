[app/sources/318385913.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:b25d086f83c3d45f33dc2fb8ab55a42a5d7bdb4f3552e1f4f064bd5a9eee4017" [label="/bin/sh -c apk add --no-cache git ca-certificates" shape="box"];
  "sha256:122e4771a17282e59a82f987cc3513b5bdfe664545c65b253edb0124e3cafa9f" [label="/bin/sh -c adduser -D appuser" shape="box"];
  "sha256:6569a887a46ec9f4275aeb66c6300ba80c6d35749b9a64ba527778ed7df015b5" [label="mkdir{path=/src}" shape="note"];
  "sha256:6b0765f533794bc7343a073c37c429035a7f1213482b9d876eeffe6c9cebee1f" [label="local://context" shape="ellipse"];
  "sha256:1f09ec1d56cba55e0eba74a734d94c98389d4ee296ea5791fff819bb28c752f9" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:852f5ee98b865fa1a80ceb3c8fba4cf5d2ec6ea3fd05c0c90dea97b418b452ef" [label="/bin/sh -c go build -o app ." shape="box"];
  "sha256:1c4f4a3185c6d9a77b5086835a7479e770efb7a91134b86c0daa7d06bcce896c" [label="copy{src=/src/app, dest=/app}" shape="note"];
  "sha256:5fa3eb64c07750cc45a94d50b204fadcf7455bf8fae900b922c54073bd6a9240" [label="sha256:5fa3eb64c07750cc45a94d50b204fadcf7455bf8fae900b922c54073bd6a9240" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:b25d086f83c3d45f33dc2fb8ab55a42a5d7bdb4f3552e1f4f064bd5a9eee4017" [label=""];
  "sha256:b25d086f83c3d45f33dc2fb8ab55a42a5d7bdb4f3552e1f4f064bd5a9eee4017" -> "sha256:122e4771a17282e59a82f987cc3513b5bdfe664545c65b253edb0124e3cafa9f" [label=""];
  "sha256:122e4771a17282e59a82f987cc3513b5bdfe664545c65b253edb0124e3cafa9f" -> "sha256:6569a887a46ec9f4275aeb66c6300ba80c6d35749b9a64ba527778ed7df015b5" [label=""];
  "sha256:6569a887a46ec9f4275aeb66c6300ba80c6d35749b9a64ba527778ed7df015b5" -> "sha256:1f09ec1d56cba55e0eba74a734d94c98389d4ee296ea5791fff819bb28c752f9" [label=""];
  "sha256:6b0765f533794bc7343a073c37c429035a7f1213482b9d876eeffe6c9cebee1f" -> "sha256:1f09ec1d56cba55e0eba74a734d94c98389d4ee296ea5791fff819bb28c752f9" [label=""];
  "sha256:1f09ec1d56cba55e0eba74a734d94c98389d4ee296ea5791fff819bb28c752f9" -> "sha256:852f5ee98b865fa1a80ceb3c8fba4cf5d2ec6ea3fd05c0c90dea97b418b452ef" [label=""];
  "sha256:852f5ee98b865fa1a80ceb3c8fba4cf5d2ec6ea3fd05c0c90dea97b418b452ef" -> "sha256:1c4f4a3185c6d9a77b5086835a7479e770efb7a91134b86c0daa7d06bcce896c" [label=""];
  "sha256:1c4f4a3185c6d9a77b5086835a7479e770efb7a91134b86c0daa7d06bcce896c" -> "sha256:5fa3eb64c07750cc45a94d50b204fadcf7455bf8fae900b922c54073bd6a9240" [label=""];
}

