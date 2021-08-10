[app/sources/202859940.Dockerfile]
digraph {
  "sha256:5eb4580627a15f656cd5a511908568b35e46177859194d875008c304035e4524" [label="docker-image://docker.io/aarch64/debian:jessie" shape="ellipse"];
  "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" [label="/bin/sh -c echo deb http://ftp.debian.org/debian jessie-backports main > /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:70c80cb0088cbbffc44c0f68ead10e2852f4dd6c68b8e16da3afb5c77f0e0d29" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev pkg-config vim-common libsystemd-journal-dev golang-1.6-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ebeeef2c8de7f9d5952daea70bba1dace2ad1c1fc821d8eb9f84ebc98f4468fa" [label="/bin/sh -c update-alternatives --install /usr/bin/go go /usr/lib/go-1.6/bin/go 100" shape="box"];
  "sha256:f555ea78a4d4d0ac31ba6d97579e9915ad993254c02d0570d22dee9964601a93" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:974f31dfa567f20db45500489cc8e34d6a986b413caaf89b6d9f3a7bc6d805a1" [label="sha256:974f31dfa567f20db45500489cc8e34d6a986b413caaf89b6d9f3a7bc6d805a1" shape="plaintext"];
  "sha256:5eb4580627a15f656cd5a511908568b35e46177859194d875008c304035e4524" -> "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" [label=""];
  "sha256:766f21a64c780708df63d7a1db421e8bf31a945da77e18292d2e09a405689431" -> "sha256:70c80cb0088cbbffc44c0f68ead10e2852f4dd6c68b8e16da3afb5c77f0e0d29" [label=""];
  "sha256:70c80cb0088cbbffc44c0f68ead10e2852f4dd6c68b8e16da3afb5c77f0e0d29" -> "sha256:ebeeef2c8de7f9d5952daea70bba1dace2ad1c1fc821d8eb9f84ebc98f4468fa" [label=""];
  "sha256:ebeeef2c8de7f9d5952daea70bba1dace2ad1c1fc821d8eb9f84ebc98f4468fa" -> "sha256:f555ea78a4d4d0ac31ba6d97579e9915ad993254c02d0570d22dee9964601a93" [label=""];
  "sha256:f555ea78a4d4d0ac31ba6d97579e9915ad993254c02d0570d22dee9964601a93" -> "sha256:974f31dfa567f20db45500489cc8e34d6a986b413caaf89b6d9f3a7bc6d805a1" [label=""];
}

