[app/sources/216188581.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:f319046877c7ddb32ee27f875e1ef8bdea9fc42835eeb4c1be153eacaaf2eccf" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b2ee82c8fe3801feb40838ff55549c64526194126416cbf44a78c601f3c9ff2e" [label="sha256:b2ee82c8fe3801feb40838ff55549c64526194126416cbf44a78c601f3c9ff2e" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label=""];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" -> "sha256:f319046877c7ddb32ee27f875e1ef8bdea9fc42835eeb4c1be153eacaaf2eccf" [label=""];
  "sha256:f319046877c7ddb32ee27f875e1ef8bdea9fc42835eeb4c1be153eacaaf2eccf" -> "sha256:b2ee82c8fe3801feb40838ff55549c64526194126416cbf44a78c601f3c9ff2e" [label=""];
}

