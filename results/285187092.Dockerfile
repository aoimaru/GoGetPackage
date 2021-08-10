[app/sources/285187092.Dockerfile]
digraph {
  "sha256:b10667ebcf9baa986999e7a93f5c6a0536fc26017f7074d484a162ae67d936f6" [label="local://context" shape="ellipse"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:e203268b28bf8e84d63c076844d06b72a7f75c691375acd84a59ddd052d267b7" [label="copy{src=/, dest=/go/src/app/}" shape="note"];
  "sha256:a0adb6962a0f5f953f20900e094fce57f0b4ce272136210e5356bd0ed068643e" [label="/bin/sh -c go-wrapper download   # \"go get -d -v ./...\"" shape="box"];
  "sha256:b9fd16c32ef50657c2c1de96ff2c4d42645f25d5d0ee1ade3d85afabd004041a" [label="/bin/sh -c go-wrapper install    # \"go install -v ./...\"" shape="box"];
  "sha256:c9a9838b6ea7a16be40db367f8067eef1a93a0c11401bc8a0f9164905ddfd101" [label="sha256:c9a9838b6ea7a16be40db367f8067eef1a93a0c11401bc8a0f9164905ddfd101" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" [label=""];
  "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" -> "sha256:e203268b28bf8e84d63c076844d06b72a7f75c691375acd84a59ddd052d267b7" [label=""];
  "sha256:b10667ebcf9baa986999e7a93f5c6a0536fc26017f7074d484a162ae67d936f6" -> "sha256:e203268b28bf8e84d63c076844d06b72a7f75c691375acd84a59ddd052d267b7" [label=""];
  "sha256:e203268b28bf8e84d63c076844d06b72a7f75c691375acd84a59ddd052d267b7" -> "sha256:a0adb6962a0f5f953f20900e094fce57f0b4ce272136210e5356bd0ed068643e" [label=""];
  "sha256:a0adb6962a0f5f953f20900e094fce57f0b4ce272136210e5356bd0ed068643e" -> "sha256:b9fd16c32ef50657c2c1de96ff2c4d42645f25d5d0ee1ade3d85afabd004041a" [label=""];
  "sha256:b9fd16c32ef50657c2c1de96ff2c4d42645f25d5d0ee1ade3d85afabd004041a" -> "sha256:c9a9838b6ea7a16be40db367f8067eef1a93a0c11401bc8a0f9164905ddfd101" [label=""];
}

