[app/sources/286152141.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:9a1dca6b18e61ca1d27fe7d2dad0cadd34111ee88d2161b97f92f07157796a01" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:f7809896fb2b2108a92dac8248edd7343d43fd31059a5d74fcc90504da64103e" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:ee0f423c54affe2e912d6f89266b07e6fb36f09d6e9b0a542c43a3769ee7912c" [label="sha256:ee0f423c54affe2e912d6f89266b07e6fb36f09d6e9b0a542c43a3769ee7912c" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:9a1dca6b18e61ca1d27fe7d2dad0cadd34111ee88d2161b97f92f07157796a01" [label=""];
  "sha256:9a1dca6b18e61ca1d27fe7d2dad0cadd34111ee88d2161b97f92f07157796a01" -> "sha256:f7809896fb2b2108a92dac8248edd7343d43fd31059a5d74fcc90504da64103e" [label=""];
  "sha256:f7809896fb2b2108a92dac8248edd7343d43fd31059a5d74fcc90504da64103e" -> "sha256:ee0f423c54affe2e912d6f89266b07e6fb36f09d6e9b0a542c43a3769ee7912c" [label=""];
}

