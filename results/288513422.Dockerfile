[app/sources/288513422.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:5cea54f36b5358d1ccedab6edd1d9154fb210ff719800a083cf2d663912fcbb4" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git" shape="box"];
  "sha256:491c54a4aecb5d1dd8a4cf2b5545027bfbbfc677e7ed42d2b4fff84ec514e621" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a9128aaef5576ab8a3a6a06a8230b1f074659d700c5942a40aca220847ebe702" [label="sha256:a9128aaef5576ab8a3a6a06a8230b1f074659d700c5942a40aca220847ebe702" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:5cea54f36b5358d1ccedab6edd1d9154fb210ff719800a083cf2d663912fcbb4" [label=""];
  "sha256:5cea54f36b5358d1ccedab6edd1d9154fb210ff719800a083cf2d663912fcbb4" -> "sha256:491c54a4aecb5d1dd8a4cf2b5545027bfbbfc677e7ed42d2b4fff84ec514e621" [label=""];
  "sha256:491c54a4aecb5d1dd8a4cf2b5545027bfbbfc677e7ed42d2b4fff84ec514e621" -> "sha256:a9128aaef5576ab8a3a6a06a8230b1f074659d700c5942a40aca220847ebe702" [label=""];
}

