[app/sources/263481638.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:77f77f85c9b6c7f12246a3e2fe80b8054a33ebf32986d51fd1dcb5c355089c1b" [label="/bin/sh -c yum install -q -y git rpm-build rpm-devel rpmlint make python rpmdevtools     help2man python2-devel     && groupadd -g 1004 builduser     && useradd -m -u 1003 -g builduser builduser" shape="box"];
  "sha256:36423234d8c1cb66aa7803c39c1a9f51581b212f5932b52e061a3d77fcd2a571" [label="/bin/sh -c mkdir /home/builduser/configsnap     && rpmdev-setuptree" shape="box"];
  "sha256:55a56fc7e4402d8d8dfc1954d7b09778a98e710a8d329dd551d9f1842290c568" [label="mkdir{path=/home/builduser/configsnap}" shape="note"];
  "sha256:e07422feb02b615493724821a97ae12381fe74fbe7f05d276b03af179c03f5e1" [label="sha256:e07422feb02b615493724821a97ae12381fe74fbe7f05d276b03af179c03f5e1" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:77f77f85c9b6c7f12246a3e2fe80b8054a33ebf32986d51fd1dcb5c355089c1b" [label=""];
  "sha256:77f77f85c9b6c7f12246a3e2fe80b8054a33ebf32986d51fd1dcb5c355089c1b" -> "sha256:36423234d8c1cb66aa7803c39c1a9f51581b212f5932b52e061a3d77fcd2a571" [label=""];
  "sha256:36423234d8c1cb66aa7803c39c1a9f51581b212f5932b52e061a3d77fcd2a571" -> "sha256:55a56fc7e4402d8d8dfc1954d7b09778a98e710a8d329dd551d9f1842290c568" [label=""];
  "sha256:55a56fc7e4402d8d8dfc1954d7b09778a98e710a8d329dd551d9f1842290c568" -> "sha256:e07422feb02b615493724821a97ae12381fe74fbe7f05d276b03af179c03f5e1" [label=""];
}

