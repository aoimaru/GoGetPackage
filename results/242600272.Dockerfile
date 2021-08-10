[app/sources/242600272.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:0f63e6aa3700576643d3a2fb826cf5f22f8923c2110df55af1a63edf21325838" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:022b6fdfa735a41de3fe393fbe58cdd93f692380eeca07b75be0310a5daa8f26" [label="sha256:022b6fdfa735a41de3fe393fbe58cdd93f692380eeca07b75be0310a5daa8f26" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label=""];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" -> "sha256:0f63e6aa3700576643d3a2fb826cf5f22f8923c2110df55af1a63edf21325838" [label=""];
  "sha256:0f63e6aa3700576643d3a2fb826cf5f22f8923c2110df55af1a63edf21325838" -> "sha256:022b6fdfa735a41de3fe393fbe58cdd93f692380eeca07b75be0310a5daa8f26" [label=""];
}

