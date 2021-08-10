[app/sources/276977848.Dockerfile]
digraph {
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" [label="docker-image://docker.io/aarch64/ubuntu:trusty" shape="ellipse"];
  "sha256:f690ad30b208c83e5a50776e7b8e70326681b8eb24d3eceb1126de0f8e616bbd" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4efcf4a3c7cb219666eb96a8600b608504ceb1f1e98fff42447a9453ea7e1291" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-arm64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:2bfdcee4bb6db07cb36fc86dfa97a7369f8fc935eaccc201ec923292bc0bb3ff" [label="sha256:2bfdcee4bb6db07cb36fc86dfa97a7369f8fc935eaccc201ec923292bc0bb3ff" shape="plaintext"];
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" -> "sha256:f690ad30b208c83e5a50776e7b8e70326681b8eb24d3eceb1126de0f8e616bbd" [label=""];
  "sha256:f690ad30b208c83e5a50776e7b8e70326681b8eb24d3eceb1126de0f8e616bbd" -> "sha256:4efcf4a3c7cb219666eb96a8600b608504ceb1f1e98fff42447a9453ea7e1291" [label=""];
  "sha256:4efcf4a3c7cb219666eb96a8600b608504ceb1f1e98fff42447a9453ea7e1291" -> "sha256:2bfdcee4bb6db07cb36fc86dfa97a7369f8fc935eaccc201ec923292bc0bb3ff" [label=""];
}

