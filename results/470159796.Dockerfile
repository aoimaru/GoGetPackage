[app/sources/470159796.Dockerfile]
digraph {
  "sha256:24f5887ee4b6e18d46f7fd5b4a8893b4feb7cc464c16bf718820ea887ecab76b" [label="docker-image://docker.io/library/alpine:3.9.4" shape="ellipse"];
  "sha256:ce26d801f11e867f17da1d85351927186aed78b6bb42b8056eff33559925f661" [label="/bin/sh -c apk add --update --no-cache ca-certificates tzdata bash curl" shape="box"];
  "sha256:e857284eeb393ecc6560ddd219ad8f181f644f65979ca0f990e6a9fc2800acd0" [label="/bin/bash -c if [[ \"${BUILD_TARGET}\" == \"debug\" ]]; then apk add --update --no-cache libc6-compat; fi" shape="box"];
  "sha256:3c6d7f06c89deb698b27c13da371d4714d2abb1c1f5a59e6d0347fb1042d938b" [label="docker-image://docker.io/library/golang:1.12.5-alpine" shape="ellipse"];
  "sha256:9a94756c4f83ae0bf1e6894e4030c4ed3dcbad7f021e75e4b554fe012c108606" [label="/bin/sh -c apk add --update --no-cache ca-certificates make git curl mercurial bzr" shape="box"];
  "sha256:520d9e9b9e8bee4fbef60273de5621da17ca72f6eeee6c8be4a2d32185f03111" [label="/bin/sh -c mkdir -p /workspace" shape="box"];
  "sha256:d87449fa320ed79d2cf343b6dd348a4f7f627616302188c8d51674ba4e57981a" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:c29febd452e73db0d78b80c57437dc5ad09e2b99e18f8cb2c8ff06164dce0f54" [label="local://context" shape="ellipse"];
  "sha256:5c24dbf77b15571ceb0eeba6eda6b46b93c85053a8b29c03e3c725f547a5890c" [label="copy{src=/go.*, dest=/workspace/}" shape="note"];
  "sha256:902d670919e1511e40fb28ba8b68458f86e9cc2ca8fe679d5c5b0ed0f9e1ed81" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:59f7e72e4d5410e60f1a6d3732552af6171443bbeb1025dd6ca747bdec8078a2" [label="copy{src=/, dest=/workspace}" shape="note"];
  "sha256:a8a8cf86b8db4a1c17108f7cf643cc139a74cc1bcdb5912c0edad54cc998a899" [label="/bin/sh -c set -xe &&     if [[ \"${BUILD_TARGET}\" == \"debug\" ]]; then         cd /tmp; GOBIN=/workspace/build/debug go get github.com/go-delve/delve/cmd/dlv; cd -;         make build-debug;         mv build/debug /build;     else         make build-release;         mv build/release /build;     fi" shape="box"];
  "sha256:5dd73d730c5101dc43cde8ecb0a704919bdbfdefb1f75b9de1988ca07acaaebe" [label="copy{src=/build/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:9e52b4ce21fc4f5e52be8d425cede93a2a032519f69f1562da8af74a6d93859c" [label="sha256:9e52b4ce21fc4f5e52be8d425cede93a2a032519f69f1562da8af74a6d93859c" shape="plaintext"];
  "sha256:24f5887ee4b6e18d46f7fd5b4a8893b4feb7cc464c16bf718820ea887ecab76b" -> "sha256:ce26d801f11e867f17da1d85351927186aed78b6bb42b8056eff33559925f661" [label=""];
  "sha256:ce26d801f11e867f17da1d85351927186aed78b6bb42b8056eff33559925f661" -> "sha256:e857284eeb393ecc6560ddd219ad8f181f644f65979ca0f990e6a9fc2800acd0" [label=""];
  "sha256:3c6d7f06c89deb698b27c13da371d4714d2abb1c1f5a59e6d0347fb1042d938b" -> "sha256:9a94756c4f83ae0bf1e6894e4030c4ed3dcbad7f021e75e4b554fe012c108606" [label=""];
  "sha256:9a94756c4f83ae0bf1e6894e4030c4ed3dcbad7f021e75e4b554fe012c108606" -> "sha256:520d9e9b9e8bee4fbef60273de5621da17ca72f6eeee6c8be4a2d32185f03111" [label=""];
  "sha256:520d9e9b9e8bee4fbef60273de5621da17ca72f6eeee6c8be4a2d32185f03111" -> "sha256:d87449fa320ed79d2cf343b6dd348a4f7f627616302188c8d51674ba4e57981a" [label=""];
  "sha256:d87449fa320ed79d2cf343b6dd348a4f7f627616302188c8d51674ba4e57981a" -> "sha256:5c24dbf77b15571ceb0eeba6eda6b46b93c85053a8b29c03e3c725f547a5890c" [label=""];
  "sha256:c29febd452e73db0d78b80c57437dc5ad09e2b99e18f8cb2c8ff06164dce0f54" -> "sha256:5c24dbf77b15571ceb0eeba6eda6b46b93c85053a8b29c03e3c725f547a5890c" [label=""];
  "sha256:5c24dbf77b15571ceb0eeba6eda6b46b93c85053a8b29c03e3c725f547a5890c" -> "sha256:902d670919e1511e40fb28ba8b68458f86e9cc2ca8fe679d5c5b0ed0f9e1ed81" [label=""];
  "sha256:902d670919e1511e40fb28ba8b68458f86e9cc2ca8fe679d5c5b0ed0f9e1ed81" -> "sha256:59f7e72e4d5410e60f1a6d3732552af6171443bbeb1025dd6ca747bdec8078a2" [label=""];
  "sha256:c29febd452e73db0d78b80c57437dc5ad09e2b99e18f8cb2c8ff06164dce0f54" -> "sha256:59f7e72e4d5410e60f1a6d3732552af6171443bbeb1025dd6ca747bdec8078a2" [label=""];
  "sha256:59f7e72e4d5410e60f1a6d3732552af6171443bbeb1025dd6ca747bdec8078a2" -> "sha256:a8a8cf86b8db4a1c17108f7cf643cc139a74cc1bcdb5912c0edad54cc998a899" [label=""];
  "sha256:e857284eeb393ecc6560ddd219ad8f181f644f65979ca0f990e6a9fc2800acd0" -> "sha256:5dd73d730c5101dc43cde8ecb0a704919bdbfdefb1f75b9de1988ca07acaaebe" [label=""];
  "sha256:a8a8cf86b8db4a1c17108f7cf643cc139a74cc1bcdb5912c0edad54cc998a899" -> "sha256:5dd73d730c5101dc43cde8ecb0a704919bdbfdefb1f75b9de1988ca07acaaebe" [label=""];
  "sha256:5dd73d730c5101dc43cde8ecb0a704919bdbfdefb1f75b9de1988ca07acaaebe" -> "sha256:9e52b4ce21fc4f5e52be8d425cede93a2a032519f69f1562da8af74a6d93859c" [label=""];
}

