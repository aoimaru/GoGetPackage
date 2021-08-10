[app/sources/135371693.Dockerfile]
digraph {
  "sha256:51f39d144c1fd200806203c1896b6149eccad31f2ff1054a79e2bb755caad4b1" [label="docker-image://docker.io/library/fedora:25@sha256:322cb01bbca26972c98051bacd3ab8555cec059496d64d35ee78b15de9ea0d06" shape="ellipse"];
  "sha256:28b32cc19633d8891e6d7ad5794a451c947b66bc16c01ec8c4a2e780c8911ade" [label="/bin/sh -c dnf -qy install git cmake" shape="box"];
  "sha256:18fdf4bd3926a7a27d385d5efa309904471f0e3990e9f84be6206e490af27f15" [label="/bin/sh -c git clone --recursive https://github.com/ethereum/cpp-ethereum --branch build-on-linux --single-branch --depth 2" shape="box"];
  "sha256:3953d7952228fe699dae984095e9714c40db24760c3181049fa6f59010ae1241" [label="/bin/sh -c cd /tmp && cmake /cpp-ethereum" shape="box"];
  "sha256:a948aab5694c825410be4c97911cf0d1811890a7e4a3379cc82a559164854d5a" [label="/bin/sh -c cd /tmp && make -j8 && make install && ldconfig" shape="box"];
  "sha256:12ddd8410ee9fee1962d2cf4f72d1199f0e57ed212ff435a17978fd7a3ecdb91" [label="sha256:12ddd8410ee9fee1962d2cf4f72d1199f0e57ed212ff435a17978fd7a3ecdb91" shape="plaintext"];
  "sha256:51f39d144c1fd200806203c1896b6149eccad31f2ff1054a79e2bb755caad4b1" -> "sha256:28b32cc19633d8891e6d7ad5794a451c947b66bc16c01ec8c4a2e780c8911ade" [label=""];
  "sha256:28b32cc19633d8891e6d7ad5794a451c947b66bc16c01ec8c4a2e780c8911ade" -> "sha256:18fdf4bd3926a7a27d385d5efa309904471f0e3990e9f84be6206e490af27f15" [label=""];
  "sha256:18fdf4bd3926a7a27d385d5efa309904471f0e3990e9f84be6206e490af27f15" -> "sha256:3953d7952228fe699dae984095e9714c40db24760c3181049fa6f59010ae1241" [label=""];
  "sha256:3953d7952228fe699dae984095e9714c40db24760c3181049fa6f59010ae1241" -> "sha256:a948aab5694c825410be4c97911cf0d1811890a7e4a3379cc82a559164854d5a" [label=""];
  "sha256:a948aab5694c825410be4c97911cf0d1811890a7e4a3379cc82a559164854d5a" -> "sha256:12ddd8410ee9fee1962d2cf4f72d1199f0e57ed212ff435a17978fd7a3ecdb91" [label=""];
}

