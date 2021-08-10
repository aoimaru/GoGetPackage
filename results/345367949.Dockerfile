[app/sources/345367949.Dockerfile]
digraph {
  "sha256:9ab239b37741e3a9d21251e9e2f24502d2532775a251cf1d274bbccc19c3d1cb" [label="docker-image://docker.io/balenalib/artik530-fedora:29-run" shape="ellipse"];
  "sha256:b63faf0cf272b070f6bf3bf9a68b5b2a3c035f2d6e222e0c834e3d7dcf1ace18" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:d29b00a5baf8cb65fbdbf56352bf534c5885f37f28d116cdca6deb06aad8e177" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:b0465ea2869f9d63e9239745ae9080e545b146f67125fdad540f4a1daae9f0a7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ccadc021b8846e7c94580fde2751bfeb4016a2ecdeec2717e84001bf22e10096" [label="mkdir{path=/go}" shape="note"];
  "sha256:d046fb6a635fdebc9d9e1c11eaa4871977029f29b2359e1ea1dae5d5988ba1c0" [label="sha256:d046fb6a635fdebc9d9e1c11eaa4871977029f29b2359e1ea1dae5d5988ba1c0" shape="plaintext"];
  "sha256:9ab239b37741e3a9d21251e9e2f24502d2532775a251cf1d274bbccc19c3d1cb" -> "sha256:b63faf0cf272b070f6bf3bf9a68b5b2a3c035f2d6e222e0c834e3d7dcf1ace18" [label=""];
  "sha256:b63faf0cf272b070f6bf3bf9a68b5b2a3c035f2d6e222e0c834e3d7dcf1ace18" -> "sha256:d29b00a5baf8cb65fbdbf56352bf534c5885f37f28d116cdca6deb06aad8e177" [label=""];
  "sha256:d29b00a5baf8cb65fbdbf56352bf534c5885f37f28d116cdca6deb06aad8e177" -> "sha256:b0465ea2869f9d63e9239745ae9080e545b146f67125fdad540f4a1daae9f0a7" [label=""];
  "sha256:b0465ea2869f9d63e9239745ae9080e545b146f67125fdad540f4a1daae9f0a7" -> "sha256:ccadc021b8846e7c94580fde2751bfeb4016a2ecdeec2717e84001bf22e10096" [label=""];
  "sha256:ccadc021b8846e7c94580fde2751bfeb4016a2ecdeec2717e84001bf22e10096" -> "sha256:d046fb6a635fdebc9d9e1c11eaa4871977029f29b2359e1ea1dae5d5988ba1c0" [label=""];
}

