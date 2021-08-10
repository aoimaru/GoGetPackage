[app/sources/273937593.Dockerfile]
digraph {
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" [label="docker-image://docker.io/ppc64le/ubuntu:xenial" shape="ellipse"];
  "sha256:a2aeea4a41269997e2605080b5d97c3a17af57847d036cc2ebd32f19ed3bb56e" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libsqlite3-dev pkg-config vim-common libseccomp-dev libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a665e156b0a5fa7f44600ca4defd09d683e48c87c3b145a6ce96c5f25d427287" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:5df2b3c94eaafaf414ee4d3cd92e42791726fe2a28f52ab6fb7227b949d3b9a7" [label="sha256:5df2b3c94eaafaf414ee4d3cd92e42791726fe2a28f52ab6fb7227b949d3b9a7" shape="plaintext"];
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" -> "sha256:a2aeea4a41269997e2605080b5d97c3a17af57847d036cc2ebd32f19ed3bb56e" [label=""];
  "sha256:a2aeea4a41269997e2605080b5d97c3a17af57847d036cc2ebd32f19ed3bb56e" -> "sha256:a665e156b0a5fa7f44600ca4defd09d683e48c87c3b145a6ce96c5f25d427287" [label=""];
  "sha256:a665e156b0a5fa7f44600ca4defd09d683e48c87c3b145a6ce96c5f25d427287" -> "sha256:5df2b3c94eaafaf414ee4d3cd92e42791726fe2a28f52ab6fb7227b949d3b9a7" [label=""];
}

