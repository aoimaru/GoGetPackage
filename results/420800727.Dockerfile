[app/sources/420800727.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git" shape="box"];
  "sha256:e08a2a15bb5e9cef89d54a5767a98152f14408261381aa2400846c901c181d37" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:8edf6f2d232880b6e44b13e77f4eeef73198e4a946f541557a28cb0c1bf26a6f" [label="sha256:8edf6f2d232880b6e44b13e77f4eeef73198e4a946f541557a28cb0c1bf26a6f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" [label=""];
  "sha256:72b0b16e7f98746c2cebe7359650b81d7c7ba6fbf1ff1167867e706f15d104b3" -> "sha256:e08a2a15bb5e9cef89d54a5767a98152f14408261381aa2400846c901c181d37" [label=""];
  "sha256:e08a2a15bb5e9cef89d54a5767a98152f14408261381aa2400846c901c181d37" -> "sha256:8edf6f2d232880b6e44b13e77f4eeef73198e4a946f541557a28cb0c1bf26a6f" [label=""];
}

