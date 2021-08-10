[app/sources/316566656.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:b06d05f9dc7cba3b0335d15937fda189cacacfec9f3c08baa396b93d2c6559b3" [label="/bin/sh -c apk add --no-cache --update tzdata git bash curl &&     cp /usr/share/zoneinfo/America/Chicago /etc/localtime &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:041ac1b1da666f71abd379f9f1baa86a18333a2aaefcbbb7fd88ddf436374135" [label="/bin/sh -c go version &&     go get -u -v github.com/alecthomas/gometalinter &&     cd /go/src/github.com/alecthomas/gometalinter &&     git checkout v${GOMETALINTER} &&     go install github.com/alecthomas/gometalinter &&     gometalinter --install &&     go get -u -v github.com/GoASTScanner/gas &&     go get -u -v github.com/golang/dep/cmd/dep &&     go get -u -v github.com/kardianos/govendor &&     go get -u -v github.com/jteeuwen/go-bindata/... &&     go get -u -v github.com/stretchr/testify &&     go get -u -v github.com/vektra/mockery/.../" shape="box"];
  "sha256:cc45c0705cadaa572cabfcd5ad0a80f9d3a9ddc45148f4307beb234f54e99ba3" [label="/bin/sh -c go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint &&     cd /go/src/github.com/golangci/golangci-lint &&     git checkout v${GOLANGCI} &&     cd /go/src/github.com/golangci/golangci-lint/cmd/golangci-lint &&     go install -ldflags \"-X 'main.version=$(git describe --tags)' -X 'main.commit=$(git rev-parse --short HEAD)' -X 'main.date=$(date)'\" &&     golangci-lint --version" shape="box"];
  "sha256:a57932d8b15c440897395663114f9b8c86692da07fc7219c119deb5482a090ee" [label="/bin/sh -c go get -u -v github.com/mattn/goveralls &&     cd /go/src/github.com/mattn/goveralls &&     git checkout v${GOVERALLS} &&     go install github.com/mattn/goveralls" shape="box"];
  "sha256:ec5d2e6a6edfa062acd997647559cf63bee597433132bc7a27ffb106d6938c9b" [label="/bin/sh -c go get -u -v github.com/rakyll/statik &&     cd /go/src/github.com/rakyll/statik &&     git checkout v${STATIK} &&     go install github.com/rakyll/statik" shape="box"];
  "sha256:58ef165829a41a0d479e7fe8cba55d35e3d264cc35c77ecebdfcf2054da9d44e" [label="local://context" shape="ellipse"];
  "sha256:95cda0830427f4a64de7c461bb6cb44d4ccd9b0e0f648313467d473d063e8ce5" [label="copy{src=/coverage.sh, dest=/script/coverage.sh}" shape="note"];
  "sha256:06cf0272a4982fbd89df67c7609bf76ffaa0be1fb7dba5cfc21009badb40e463" [label="copy{src=/checkvendor.sh, dest=/script/checkvendor.sh}" shape="note"];
  "sha256:e8df9e6f6bad41c5ef71ed5d0d640750fd55477e82da8526e9026e6f2b134b8e" [label="copy{src=/git-rev.sh, dest=/script/git-rev.sh}" shape="note"];
  "sha256:3c84b5764e400631e6da942c49d46bf6fb93554bc130d525ddbee5537ca5a038" [label="/bin/sh -c chmod +x /script/coverage.sh /script/checkvendor.sh /script/git-rev.sh" shape="box"];
  "sha256:1db7e86d2529521c9b2a517474621cf5bd6c137132e3aba970c71196e3a17245" [label="sha256:1db7e86d2529521c9b2a517474621cf5bd6c137132e3aba970c71196e3a17245" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:b06d05f9dc7cba3b0335d15937fda189cacacfec9f3c08baa396b93d2c6559b3" [label=""];
  "sha256:b06d05f9dc7cba3b0335d15937fda189cacacfec9f3c08baa396b93d2c6559b3" -> "sha256:041ac1b1da666f71abd379f9f1baa86a18333a2aaefcbbb7fd88ddf436374135" [label=""];
  "sha256:041ac1b1da666f71abd379f9f1baa86a18333a2aaefcbbb7fd88ddf436374135" -> "sha256:cc45c0705cadaa572cabfcd5ad0a80f9d3a9ddc45148f4307beb234f54e99ba3" [label=""];
  "sha256:cc45c0705cadaa572cabfcd5ad0a80f9d3a9ddc45148f4307beb234f54e99ba3" -> "sha256:a57932d8b15c440897395663114f9b8c86692da07fc7219c119deb5482a090ee" [label=""];
  "sha256:a57932d8b15c440897395663114f9b8c86692da07fc7219c119deb5482a090ee" -> "sha256:ec5d2e6a6edfa062acd997647559cf63bee597433132bc7a27ffb106d6938c9b" [label=""];
  "sha256:ec5d2e6a6edfa062acd997647559cf63bee597433132bc7a27ffb106d6938c9b" -> "sha256:95cda0830427f4a64de7c461bb6cb44d4ccd9b0e0f648313467d473d063e8ce5" [label=""];
  "sha256:58ef165829a41a0d479e7fe8cba55d35e3d264cc35c77ecebdfcf2054da9d44e" -> "sha256:95cda0830427f4a64de7c461bb6cb44d4ccd9b0e0f648313467d473d063e8ce5" [label=""];
  "sha256:95cda0830427f4a64de7c461bb6cb44d4ccd9b0e0f648313467d473d063e8ce5" -> "sha256:06cf0272a4982fbd89df67c7609bf76ffaa0be1fb7dba5cfc21009badb40e463" [label=""];
  "sha256:58ef165829a41a0d479e7fe8cba55d35e3d264cc35c77ecebdfcf2054da9d44e" -> "sha256:06cf0272a4982fbd89df67c7609bf76ffaa0be1fb7dba5cfc21009badb40e463" [label=""];
  "sha256:06cf0272a4982fbd89df67c7609bf76ffaa0be1fb7dba5cfc21009badb40e463" -> "sha256:e8df9e6f6bad41c5ef71ed5d0d640750fd55477e82da8526e9026e6f2b134b8e" [label=""];
  "sha256:58ef165829a41a0d479e7fe8cba55d35e3d264cc35c77ecebdfcf2054da9d44e" -> "sha256:e8df9e6f6bad41c5ef71ed5d0d640750fd55477e82da8526e9026e6f2b134b8e" [label=""];
  "sha256:e8df9e6f6bad41c5ef71ed5d0d640750fd55477e82da8526e9026e6f2b134b8e" -> "sha256:3c84b5764e400631e6da942c49d46bf6fb93554bc130d525ddbee5537ca5a038" [label=""];
  "sha256:3c84b5764e400631e6da942c49d46bf6fb93554bc130d525ddbee5537ca5a038" -> "sha256:1db7e86d2529521c9b2a517474621cf5bd6c137132e3aba970c71196e3a17245" [label=""];
}

