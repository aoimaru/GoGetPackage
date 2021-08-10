[app/sources/208882438.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:b73837ae927227561a90e5960acb7e6e56fc52a2a46dd75f1e3e5c86180f3b98" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libselinux-devel sqlite-devel tar" shape="box"];
  "sha256:9830c1864b0c6ad55e7931d9dbc34142767aadfb7628df68fc72d7b64be8b679" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:4706f6a2f8a47f0beb891d4a43dd0d970dae196cd326e8ce6cab8a8972136108" [label="sha256:4706f6a2f8a47f0beb891d4a43dd0d970dae196cd326e8ce6cab8a8972136108" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" [label=""];
  "sha256:f229466ea48ed7833b6c9dab82a2068cf1802dde2d937a54f00d74f9d284002f" -> "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" [label=""];
  "sha256:9b16df34a4eb3874eb3ea32f46009c45e53d3b3b8bb62b2e479f5e74caf0c76c" -> "sha256:b73837ae927227561a90e5960acb7e6e56fc52a2a46dd75f1e3e5c86180f3b98" [label=""];
  "sha256:b73837ae927227561a90e5960acb7e6e56fc52a2a46dd75f1e3e5c86180f3b98" -> "sha256:9830c1864b0c6ad55e7931d9dbc34142767aadfb7628df68fc72d7b64be8b679" [label=""];
  "sha256:9830c1864b0c6ad55e7931d9dbc34142767aadfb7628df68fc72d7b64be8b679" -> "sha256:4706f6a2f8a47f0beb891d4a43dd0d970dae196cd326e8ce6cab8a8972136108" [label=""];
}

