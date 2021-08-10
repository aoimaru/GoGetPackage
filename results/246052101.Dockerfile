[app/sources/246052101.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:36500f61837ea2ba1783022122febe13bbabdfac31683430e2043bcbe0e935c4" [label="/bin/sh -c echo \"deb-src http://archive.ubuntu.com/ubuntu/ artful main restricted\" >> /etc/apt/sources.list     && apt-get update     && apt-get -y upgrade     && apt-get install -yq     devscripts git-buildpackage     ca-certificates quilt     libwww-perl gnupg2     file pristine-tar fakeroot     --no-install-recommends     && apt-get build-dep -yq supercollider" shape="box"];
  "sha256:97d06ef29438ec64188de7c89b24030a431c5d6a52c2f78fcc11efe4228beddb" [label="mkdir{path=/root}" shape="note"];
  "sha256:8e0d7281596381f006419c11c0db7663b0b4df990d00a48fb6c0e72e11a62d5b" [label="sha256:8e0d7281596381f006419c11c0db7663b0b4df990d00a48fb6c0e72e11a62d5b" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:36500f61837ea2ba1783022122febe13bbabdfac31683430e2043bcbe0e935c4" [label=""];
  "sha256:36500f61837ea2ba1783022122febe13bbabdfac31683430e2043bcbe0e935c4" -> "sha256:97d06ef29438ec64188de7c89b24030a431c5d6a52c2f78fcc11efe4228beddb" [label=""];
  "sha256:97d06ef29438ec64188de7c89b24030a431c5d6a52c2f78fcc11efe4228beddb" -> "sha256:8e0d7281596381f006419c11c0db7663b0b4df990d00a48fb6c0e72e11a62d5b" [label=""];
}

