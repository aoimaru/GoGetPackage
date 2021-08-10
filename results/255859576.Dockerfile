[app/sources/255859576.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:c39301b5c480881234b6583b08ff1eddceb3dc402b405fff5f241fd3f1fd5c1e" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config libsystemd-dev vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0a74ae1441c9ccf191ffbe11bd3058315a59920aaf4f85d4c598ffd3efd7d1e9" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:81c72e6adf11edd9db90cdec5fd405cd29e8a7329669a864215e05cba33d1e8f" [label="sha256:81c72e6adf11edd9db90cdec5fd405cd29e8a7329669a864215e05cba33d1e8f" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:c39301b5c480881234b6583b08ff1eddceb3dc402b405fff5f241fd3f1fd5c1e" [label=""];
  "sha256:c39301b5c480881234b6583b08ff1eddceb3dc402b405fff5f241fd3f1fd5c1e" -> "sha256:0a74ae1441c9ccf191ffbe11bd3058315a59920aaf4f85d4c598ffd3efd7d1e9" [label=""];
  "sha256:0a74ae1441c9ccf191ffbe11bd3058315a59920aaf4f85d4c598ffd3efd7d1e9" -> "sha256:81c72e6adf11edd9db90cdec5fd405cd29e8a7329669a864215e05cba33d1e8f" [label=""];
}

