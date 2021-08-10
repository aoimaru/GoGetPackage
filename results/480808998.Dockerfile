[app/sources/480808998.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1695509558bebfc6ec4da3427301086ede56b3e1cdec5ab0d97b741e47929313" [label="/bin/sh -c apt-get install -q -y language-pack-en" shape="box"];
  "sha256:ce3b7a96f1d9ded63d79df74e7d2ae822b51c19f3148c7de467f99cc5f874f8a" [label="/bin/sh -c update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:13ac2090c63fb78cb4e241c208575f84d16f1f8a55c00311399dc92674643cd3" [label="/bin/sh -c apt-get install -q -y libgmp10" shape="box"];
  "sha256:bbe941d8fa20e6f404eafbe16d45bcfa9ce13f005a671ea2a149c70743fc059c" [label="local://context" shape="ellipse"];
  "sha256:abdccb85395e039b0a5aa4ae38b4c5cef1445502c40ba14c689a97fc9d28874f" [label="copy{src=/dist/build/rescoyl/rescoyl, dest=/usr/bin/rescoyl}" shape="note"];
  "sha256:37d51a266ebfddcdd4b891046a70d8c3b39f141ac08079d8fa3b52114b53df49" [label="/bin/sh -c mkdir /store" shape="box"];
  "sha256:ad3725ae22d8277c83af47323e8e8e7879931302fed0821a01d016969abe131e" [label="copy{src=/sample.users, dest=/store/users}" shape="note"];
  "sha256:633a1ea27bb6df9986adb36936f7d710a92773332d6533d0b3afa5355f268b2e" [label="copy{src=/sample.public-images, dest=/store/public-images}" shape="note"];
  "sha256:07b93d27fc55194716bfbe868852fc11b09cae376402c5db82959a842252079a" [label="sha256:07b93d27fc55194716bfbe868852fc11b09cae376402c5db82959a842252079a" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label=""];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" -> "sha256:1695509558bebfc6ec4da3427301086ede56b3e1cdec5ab0d97b741e47929313" [label=""];
  "sha256:1695509558bebfc6ec4da3427301086ede56b3e1cdec5ab0d97b741e47929313" -> "sha256:ce3b7a96f1d9ded63d79df74e7d2ae822b51c19f3148c7de467f99cc5f874f8a" [label=""];
  "sha256:ce3b7a96f1d9ded63d79df74e7d2ae822b51c19f3148c7de467f99cc5f874f8a" -> "sha256:13ac2090c63fb78cb4e241c208575f84d16f1f8a55c00311399dc92674643cd3" [label=""];
  "sha256:13ac2090c63fb78cb4e241c208575f84d16f1f8a55c00311399dc92674643cd3" -> "sha256:abdccb85395e039b0a5aa4ae38b4c5cef1445502c40ba14c689a97fc9d28874f" [label=""];
  "sha256:bbe941d8fa20e6f404eafbe16d45bcfa9ce13f005a671ea2a149c70743fc059c" -> "sha256:abdccb85395e039b0a5aa4ae38b4c5cef1445502c40ba14c689a97fc9d28874f" [label=""];
  "sha256:abdccb85395e039b0a5aa4ae38b4c5cef1445502c40ba14c689a97fc9d28874f" -> "sha256:37d51a266ebfddcdd4b891046a70d8c3b39f141ac08079d8fa3b52114b53df49" [label=""];
  "sha256:37d51a266ebfddcdd4b891046a70d8c3b39f141ac08079d8fa3b52114b53df49" -> "sha256:ad3725ae22d8277c83af47323e8e8e7879931302fed0821a01d016969abe131e" [label=""];
  "sha256:bbe941d8fa20e6f404eafbe16d45bcfa9ce13f005a671ea2a149c70743fc059c" -> "sha256:ad3725ae22d8277c83af47323e8e8e7879931302fed0821a01d016969abe131e" [label=""];
  "sha256:ad3725ae22d8277c83af47323e8e8e7879931302fed0821a01d016969abe131e" -> "sha256:633a1ea27bb6df9986adb36936f7d710a92773332d6533d0b3afa5355f268b2e" [label=""];
  "sha256:bbe941d8fa20e6f404eafbe16d45bcfa9ce13f005a671ea2a149c70743fc059c" -> "sha256:633a1ea27bb6df9986adb36936f7d710a92773332d6533d0b3afa5355f268b2e" [label=""];
  "sha256:633a1ea27bb6df9986adb36936f7d710a92773332d6533d0b3afa5355f268b2e" -> "sha256:07b93d27fc55194716bfbe868852fc11b09cae376402c5db82959a842252079a" [label=""];
}

