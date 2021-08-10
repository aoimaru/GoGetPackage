[app/sources/396372779.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:56d6cd36a9ed14ac72b086104ff9411ff651396a8cf51e867e6e7460f0e07d71" [label="/bin/sh -c yum install -y wget tar gcc" shape="box"];
  "sha256:e42aaca4fbc0b4f06454677d11fd4a4d89cef7fe77aa2dbd93f1a85ae1979b74" [label="/bin/sh -c wget http://download.pureftpd.org/pub/blogbench/blogbench-1.1.tar.gz" shape="box"];
  "sha256:2a820fc7bdea90fea470cb34105b25791740626ed1478931eff54d7cae2caae9" [label="/bin/sh -c tar xvzf blogbench-1.1.tar.gz" shape="box"];
  "sha256:790c1dfc12eec251989c971bdb36894fb49e06c5a146719bb5a4964ef193f531" [label="/bin/sh -c /blogbench-1.1/configure" shape="box"];
  "sha256:92cdc1b23eadef3c17c2de79664cbf1b4146f03c0e7bd53336330c42e89df0bd" [label="/bin/sh -c make" shape="box"];
  "sha256:f8a5440eb91222792a965308534b912a9f2e5c4fcacd3dbee73221596de399e0" [label="/bin/sh -c make install" shape="box"];
  "sha256:ef17bf6629db5c458aa9fd9d7ce746d92a1efa4885e4c06a48e8e62875eefa59" [label="sha256:ef17bf6629db5c458aa9fd9d7ce746d92a1efa4885e4c06a48e8e62875eefa59" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:56d6cd36a9ed14ac72b086104ff9411ff651396a8cf51e867e6e7460f0e07d71" [label=""];
  "sha256:56d6cd36a9ed14ac72b086104ff9411ff651396a8cf51e867e6e7460f0e07d71" -> "sha256:e42aaca4fbc0b4f06454677d11fd4a4d89cef7fe77aa2dbd93f1a85ae1979b74" [label=""];
  "sha256:e42aaca4fbc0b4f06454677d11fd4a4d89cef7fe77aa2dbd93f1a85ae1979b74" -> "sha256:2a820fc7bdea90fea470cb34105b25791740626ed1478931eff54d7cae2caae9" [label=""];
  "sha256:2a820fc7bdea90fea470cb34105b25791740626ed1478931eff54d7cae2caae9" -> "sha256:790c1dfc12eec251989c971bdb36894fb49e06c5a146719bb5a4964ef193f531" [label=""];
  "sha256:790c1dfc12eec251989c971bdb36894fb49e06c5a146719bb5a4964ef193f531" -> "sha256:92cdc1b23eadef3c17c2de79664cbf1b4146f03c0e7bd53336330c42e89df0bd" [label=""];
  "sha256:92cdc1b23eadef3c17c2de79664cbf1b4146f03c0e7bd53336330c42e89df0bd" -> "sha256:f8a5440eb91222792a965308534b912a9f2e5c4fcacd3dbee73221596de399e0" [label=""];
  "sha256:f8a5440eb91222792a965308534b912a9f2e5c4fcacd3dbee73221596de399e0" -> "sha256:ef17bf6629db5c458aa9fd9d7ce746d92a1efa4885e4c06a48e8e62875eefa59" [label=""];
}

