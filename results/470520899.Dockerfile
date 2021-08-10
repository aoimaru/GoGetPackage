[app/sources/470520899.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:bdf3a8b95114aeeb68c790f6d4749b2b00881593503b9370c1c4b0623d04f7b5" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d5691068bc43fb620de664326d3931f7fff159c675b53a49a61b27d05d376d4d" [label="sha256:d5691068bc43fb620de664326d3931f7fff159c675b53a49a61b27d05d376d4d" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" [label=""];
  "sha256:3363318ab3718b5cc24fe8a308dc5b1e9da1014e3940bfa725840436e8086809" -> "sha256:bdf3a8b95114aeeb68c790f6d4749b2b00881593503b9370c1c4b0623d04f7b5" [label=""];
  "sha256:bdf3a8b95114aeeb68c790f6d4749b2b00881593503b9370c1c4b0623d04f7b5" -> "sha256:d5691068bc43fb620de664326d3931f7fff159c675b53a49a61b27d05d376d4d" [label=""];
}

