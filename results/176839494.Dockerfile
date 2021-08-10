[app/sources/176839494.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git" shape="box"];
  "sha256:d88baae74248458d5178059302f674c5fcf356c14958a24e523b25f22709b06e" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d0fd2e2241d1f4b79b775fca67575ef5d79c229dee5c0aefbc49e7cae13ec533" [label="sha256:d0fd2e2241d1f4b79b775fca67575ef5d79c229dee5c0aefbc49e7cae13ec533" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" [label=""];
  "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" -> "sha256:d88baae74248458d5178059302f674c5fcf356c14958a24e523b25f22709b06e" [label=""];
  "sha256:d88baae74248458d5178059302f674c5fcf356c14958a24e523b25f22709b06e" -> "sha256:d0fd2e2241d1f4b79b775fca67575ef5d79c229dee5c0aefbc49e7cae13ec533" [label=""];
}

