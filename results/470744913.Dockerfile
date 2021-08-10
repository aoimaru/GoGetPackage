[app/sources/470744913.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c40b0c726054b63cb70844d7beb541c15ac7b5bdfcdd3f3084f56ce986b68c1e" [label="mkdir{path=/root}" shape="note"];
  "sha256:7127126d3e4cddaba8b5d6e7ed77bb2387fe26d7ee3ea2ef4078ea4a6b81c14d" [label="docker-image://docker.io/library/golang:1.11.5-stretch" shape="ellipse"];
  "sha256:85fdc0518e76b9c8e59b83175f7a023232ac380da784ccf4f560313016d62aa1" [label="mkdir{path=/go/src/github.com/containers-ai/alameda}" shape="note"];
  "sha256:d276edaaec2d3fc89ce7fcfbe5d7835cc239516352c9b67b8f32b0d1c082722a" [label="local://context" shape="ellipse"];
  "sha256:823ffa9c3a7c0f651bfac661f88a0192d9682d9b7fc05e5a4aea42487cb96226" [label="copy{src=/, dest=/go/src/github.com/containers-ai/alameda/}" shape="note"];
  "sha256:9300d978971200f9287498f44d2fa1d0e718955a1d0476df6f21db315b9756fd" [label="/bin/bash -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags \"-X github.com/containers-ai/alameda/cmd/app.VERSION=`git rev-parse --abbrev-ref HEAD`-`git rev-parse --short HEAD``git diff --quiet || echo '-dirty'` -X 'github.com/containers-ai/alameda/cmd/app.BUILD_TIME=`date`' -X 'github.com/containers-ai/alameda/cmd/app.GO_VERSION=`go version`'\" -a -o ./bin/admission-controller  github.com/containers-ai/alameda/admission-controller/cmd" shape="box"];
  "sha256:df5faf596b610812f360017e23b99313eb7b6b6e84a0f8aa96ac0cb4496058f3" [label="copy{src=/go/src/github.com/containers-ai/alameda/bin/admission-controller, dest=/root/}" shape="note"];
  "sha256:b8d8109a4a046c43ee123ec8271fe0e7c0aef953b58e3f0e8518ae72c26e2903" [label="copy{src=/go/src/github.com/containers-ai/alameda/admission-controller/etc/admission-controller.yml, dest=/etc/alameda/admission-controller/admission-controller.yml}" shape="note"];
  "sha256:4df4080e3ddcb060ac86f048214d1e478942da1aaa285439d05fa8a578b22478" [label="sha256:4df4080e3ddcb060ac86f048214d1e478942da1aaa285439d05fa8a578b22478" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c40b0c726054b63cb70844d7beb541c15ac7b5bdfcdd3f3084f56ce986b68c1e" [label=""];
  "sha256:7127126d3e4cddaba8b5d6e7ed77bb2387fe26d7ee3ea2ef4078ea4a6b81c14d" -> "sha256:85fdc0518e76b9c8e59b83175f7a023232ac380da784ccf4f560313016d62aa1" [label=""];
  "sha256:85fdc0518e76b9c8e59b83175f7a023232ac380da784ccf4f560313016d62aa1" -> "sha256:823ffa9c3a7c0f651bfac661f88a0192d9682d9b7fc05e5a4aea42487cb96226" [label=""];
  "sha256:d276edaaec2d3fc89ce7fcfbe5d7835cc239516352c9b67b8f32b0d1c082722a" -> "sha256:823ffa9c3a7c0f651bfac661f88a0192d9682d9b7fc05e5a4aea42487cb96226" [label=""];
  "sha256:823ffa9c3a7c0f651bfac661f88a0192d9682d9b7fc05e5a4aea42487cb96226" -> "sha256:9300d978971200f9287498f44d2fa1d0e718955a1d0476df6f21db315b9756fd" [label=""];
  "sha256:c40b0c726054b63cb70844d7beb541c15ac7b5bdfcdd3f3084f56ce986b68c1e" -> "sha256:df5faf596b610812f360017e23b99313eb7b6b6e84a0f8aa96ac0cb4496058f3" [label=""];
  "sha256:9300d978971200f9287498f44d2fa1d0e718955a1d0476df6f21db315b9756fd" -> "sha256:df5faf596b610812f360017e23b99313eb7b6b6e84a0f8aa96ac0cb4496058f3" [label=""];
  "sha256:df5faf596b610812f360017e23b99313eb7b6b6e84a0f8aa96ac0cb4496058f3" -> "sha256:b8d8109a4a046c43ee123ec8271fe0e7c0aef953b58e3f0e8518ae72c26e2903" [label=""];
  "sha256:9300d978971200f9287498f44d2fa1d0e718955a1d0476df6f21db315b9756fd" -> "sha256:b8d8109a4a046c43ee123ec8271fe0e7c0aef953b58e3f0e8518ae72c26e2903" [label=""];
  "sha256:b8d8109a4a046c43ee123ec8271fe0e7c0aef953b58e3f0e8518ae72c26e2903" -> "sha256:4df4080e3ddcb060ac86f048214d1e478942da1aaa285439d05fa8a578b22478" [label=""];
}

