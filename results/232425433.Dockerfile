[app/sources/232425433.Dockerfile]
digraph {
  "sha256:210a5e76b4c4c30202960665314d42b3d55e594547c20bdb94b2b5b9bbd819e6" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:b6d9ce9bb4a80a62c3a2c4ebcf71fd9a6fb7bfaf5bf8359c054ed51dd7ff8c2e" [label="/bin/sh -c yum -y install openssh-clients  hostname && yum clean all -y" shape="box"];
  "sha256:0c53679d6472ec3e730f3dedc9de07d818bebbd0ba7b69dd92563c4f8f1fd5ac" [label="copy{src=/build/crunchy-proxy, dest=/usr/bin}" shape="note"];
  "sha256:bb7dc5c74ef6be8e63591655102f54c532a03b2951f134ae5746524320803515" [label="sha256:bb7dc5c74ef6be8e63591655102f54c532a03b2951f134ae5746524320803515" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:b6d9ce9bb4a80a62c3a2c4ebcf71fd9a6fb7bfaf5bf8359c054ed51dd7ff8c2e" [label=""];
  "sha256:b6d9ce9bb4a80a62c3a2c4ebcf71fd9a6fb7bfaf5bf8359c054ed51dd7ff8c2e" -> "sha256:0c53679d6472ec3e730f3dedc9de07d818bebbd0ba7b69dd92563c4f8f1fd5ac" [label=""];
  "sha256:210a5e76b4c4c30202960665314d42b3d55e594547c20bdb94b2b5b9bbd819e6" -> "sha256:0c53679d6472ec3e730f3dedc9de07d818bebbd0ba7b69dd92563c4f8f1fd5ac" [label=""];
  "sha256:0c53679d6472ec3e730f3dedc9de07d818bebbd0ba7b69dd92563c4f8f1fd5ac" -> "sha256:bb7dc5c74ef6be8e63591655102f54c532a03b2951f134ae5746524320803515" [label=""];
}

