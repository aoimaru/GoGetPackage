[app/sources/206383989.Dockerfile]
digraph {
  "sha256:5eb4580627a15f656cd5a511908568b35e46177859194d875008c304035e4524" [label="docker-image://docker.io/aarch64/debian:jessie" shape="ellipse"];
  "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" [label="/bin/sh -c echo deb http://ftp.debian.org/debian jessie-backports main > /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:b8f31963fa082f63aeb23c67a1f661cbd8d976ae838b959e6041db9696f3bd0a" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libsystemd-journal-dev golang-1.6-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c1754ab7275f0792ebc547171e6fb66868c426913edc8d510a2a87d3614e8328" [label="/bin/sh -c update-alternatives --install /usr/bin/go go /usr/lib/go-1.6/bin/go 100" shape="box"];
  "sha256:9ee88527ccaf9629c08ae2fde68e79c82c15e612700a3f1ba931b931054b6223" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:8e87160e06dd14f0576d5d11732b95f5d182bf7456b0d935ab607f47dd719937" [label="sha256:8e87160e06dd14f0576d5d11732b95f5d182bf7456b0d935ab607f47dd719937" shape="plaintext"];
  "sha256:5eb4580627a15f656cd5a511908568b35e46177859194d875008c304035e4524" -> "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" [label=""];
  "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" -> "sha256:b8f31963fa082f63aeb23c67a1f661cbd8d976ae838b959e6041db9696f3bd0a" [label=""];
  "sha256:b8f31963fa082f63aeb23c67a1f661cbd8d976ae838b959e6041db9696f3bd0a" -> "sha256:c1754ab7275f0792ebc547171e6fb66868c426913edc8d510a2a87d3614e8328" [label=""];
  "sha256:c1754ab7275f0792ebc547171e6fb66868c426913edc8d510a2a87d3614e8328" -> "sha256:9ee88527ccaf9629c08ae2fde68e79c82c15e612700a3f1ba931b931054b6223" [label=""];
  "sha256:9ee88527ccaf9629c08ae2fde68e79c82c15e612700a3f1ba931b931054b6223" -> "sha256:8e87160e06dd14f0576d5d11732b95f5d182bf7456b0d935ab607f47dd719937" [label=""];
}

