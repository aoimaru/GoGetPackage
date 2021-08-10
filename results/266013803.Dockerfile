[app/sources/266013803.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:1f82852bb360f9efff6c783732435567206fad6d31c1f2670428c612b21709ee" [label="/bin/sh -c yum -y install snappy-devel     && yum -y install zlib-devel      && yum -y install bzip2-devel     && yum -y install epel-release     && yum -y install jemalloc-devel     && yum -y install gtest-devel" shape="box"];
  "sha256:20ead2fb19b7c328e6d683039f1714ee226ba49dbec2cc15d1e352dfcc3dc0d7" [label="sha256:20ead2fb19b7c328e6d683039f1714ee226ba49dbec2cc15d1e352dfcc3dc0d7" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:1f82852bb360f9efff6c783732435567206fad6d31c1f2670428c612b21709ee" [label=""];
  "sha256:1f82852bb360f9efff6c783732435567206fad6d31c1f2670428c612b21709ee" -> "sha256:20ead2fb19b7c328e6d683039f1714ee226ba49dbec2cc15d1e352dfcc3dc0d7" [label=""];
}

