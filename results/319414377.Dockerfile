[app/sources/319414377.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:d37257867743fab3edba50970dde0f1715fe57087e31dc337ecf193bcb8fd5de" [label="local://context" shape="ellipse"];
  "sha256:a35d5409cf294a7d8fa5c93b00878f18fddb95ea1f6ca37194fb79c2af59aea6" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:9f3eb3c7c1bf59f808486aff1c223b2ef0f87ae34a3837889300e79493cc3f20" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:bbba499a126b73d70de5d0200adfae1a5cf6ddf509d377d263f24b3c972adfaa" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:efe432d5cddab68f3b4b116a40ed03e3a47534340edb02c1c6ed60c3b8a8f4c3" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:143683e1e4f1ff7f200222515aac06e8bd07ed98fa82dd4e85de44e23886c9ed" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:e81eaf525f75372a998d4d1b361c8c6df10fb5a1d486253b8c4d29eed72265e8" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:2e4091b7471f2ae928838769bda475bbfe733c367a59941c3c3fd71a3e815f7f" [label="sha256:2e4091b7471f2ae928838769bda475bbfe733c367a59941c3c3fd71a3e815f7f" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:a35d5409cf294a7d8fa5c93b00878f18fddb95ea1f6ca37194fb79c2af59aea6" [label=""];
  "sha256:d37257867743fab3edba50970dde0f1715fe57087e31dc337ecf193bcb8fd5de" -> "sha256:a35d5409cf294a7d8fa5c93b00878f18fddb95ea1f6ca37194fb79c2af59aea6" [label=""];
  "sha256:a35d5409cf294a7d8fa5c93b00878f18fddb95ea1f6ca37194fb79c2af59aea6" -> "sha256:9f3eb3c7c1bf59f808486aff1c223b2ef0f87ae34a3837889300e79493cc3f20" [label=""];
  "sha256:9f3eb3c7c1bf59f808486aff1c223b2ef0f87ae34a3837889300e79493cc3f20" -> "sha256:bbba499a126b73d70de5d0200adfae1a5cf6ddf509d377d263f24b3c972adfaa" [label=""];
  "sha256:bbba499a126b73d70de5d0200adfae1a5cf6ddf509d377d263f24b3c972adfaa" -> "sha256:efe432d5cddab68f3b4b116a40ed03e3a47534340edb02c1c6ed60c3b8a8f4c3" [label=""];
  "sha256:efe432d5cddab68f3b4b116a40ed03e3a47534340edb02c1c6ed60c3b8a8f4c3" -> "sha256:143683e1e4f1ff7f200222515aac06e8bd07ed98fa82dd4e85de44e23886c9ed" [label=""];
  "sha256:143683e1e4f1ff7f200222515aac06e8bd07ed98fa82dd4e85de44e23886c9ed" -> "sha256:e81eaf525f75372a998d4d1b361c8c6df10fb5a1d486253b8c4d29eed72265e8" [label=""];
  "sha256:e81eaf525f75372a998d4d1b361c8c6df10fb5a1d486253b8c4d29eed72265e8" -> "sha256:2e4091b7471f2ae928838769bda475bbfe733c367a59941c3c3fd71a3e815f7f" [label=""];
}

