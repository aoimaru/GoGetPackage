[app/sources/288642380.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" [label="docker-image://docker.io/library/golang:1.10.1-alpine3.7" shape="ellipse"];
  "sha256:b34b65567ed48332643d72d3638ecf7167316f498acd8e3e86da857408755209" [label="local://context" shape="ellipse"];
  "sha256:9b743e0a58b81169cd20af2e32f3aa39b6e980be25a0d39f67586419376edb43" [label="copy{src=/web.go, dest=/}" shape="note"];
  "sha256:f745c12e34d51b5a0cdda6c022d0e0f3d87733171edfd9a4a551a13ab651ea4e" [label="/bin/sh -c go build -o /web ." shape="box"];
  "sha256:57d731af9bdb3b0f478c74ce8839d73a170159f0718336933cfa61e11fd803e5" [label="copy{src=/web, dest=/}" shape="note"];
  "sha256:9682b8e6aa2c7a49d9cbaccbd125e29d5d84fe88478dca0381f20335ded222b6" [label="sha256:9682b8e6aa2c7a49d9cbaccbd125e29d5d84fe88478dca0381f20335ded222b6" shape="plaintext"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" -> "sha256:9b743e0a58b81169cd20af2e32f3aa39b6e980be25a0d39f67586419376edb43" [label=""];
  "sha256:b34b65567ed48332643d72d3638ecf7167316f498acd8e3e86da857408755209" -> "sha256:9b743e0a58b81169cd20af2e32f3aa39b6e980be25a0d39f67586419376edb43" [label=""];
  "sha256:9b743e0a58b81169cd20af2e32f3aa39b6e980be25a0d39f67586419376edb43" -> "sha256:f745c12e34d51b5a0cdda6c022d0e0f3d87733171edfd9a4a551a13ab651ea4e" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:57d731af9bdb3b0f478c74ce8839d73a170159f0718336933cfa61e11fd803e5" [label=""];
  "sha256:f745c12e34d51b5a0cdda6c022d0e0f3d87733171edfd9a4a551a13ab651ea4e" -> "sha256:57d731af9bdb3b0f478c74ce8839d73a170159f0718336933cfa61e11fd803e5" [label=""];
  "sha256:57d731af9bdb3b0f478c74ce8839d73a170159f0718336933cfa61e11fd803e5" -> "sha256:9682b8e6aa2c7a49d9cbaccbd125e29d5d84fe88478dca0381f20335ded222b6" [label=""];
}

