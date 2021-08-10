[app/sources/148356920.Dockerfile]
digraph {
  "sha256:859ea95365ae826d09eb806a76f6f52b8b393dff186d96e88442e65d99364123" [label="docker-image://docker.io/multiarch/ubuntu-core:i386-xenial" shape="ellipse"];
  "sha256:5eaf99eab39d751e5dd2c90748512629e054032eb35e58f9988541e2e964e6ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:bb60b72db8f59eb7f4b097656067a2d9203836212d7655cadcad317045658756" [label="/bin/sh -c apt-get install -y cmake extra-cmake-modules g++ git gettext" shape="box"];
  "sha256:c4f99455e52e5396a5348cca788437a3c972e7175e151ce4dcab417523fd8341" [label="/bin/sh -c apt-get install -y libkf5i18n-dev libkf5notifications-dev libkf5service-dev       libkf5windowsystem-dev plasma-framework-dev qtbase5-dev qtdeclarative5-dev       plasma-framework" shape="box"];
  "sha256:891ead003b1efd857972dac0e8f4e317b0d328495daef3540cf6247c30d60b47" [label="/bin/sh -c apt-get install -y xvfb" shape="box"];
  "sha256:fb5178626e203fbd17cce0493812aef5ab36cc05050306a85882d21a8f90e7aa" [label="sha256:fb5178626e203fbd17cce0493812aef5ab36cc05050306a85882d21a8f90e7aa" shape="plaintext"];
  "sha256:859ea95365ae826d09eb806a76f6f52b8b393dff186d96e88442e65d99364123" -> "sha256:5eaf99eab39d751e5dd2c90748512629e054032eb35e58f9988541e2e964e6ca" [label=""];
  "sha256:5eaf99eab39d751e5dd2c90748512629e054032eb35e58f9988541e2e964e6ca" -> "sha256:bb60b72db8f59eb7f4b097656067a2d9203836212d7655cadcad317045658756" [label=""];
  "sha256:bb60b72db8f59eb7f4b097656067a2d9203836212d7655cadcad317045658756" -> "sha256:c4f99455e52e5396a5348cca788437a3c972e7175e151ce4dcab417523fd8341" [label=""];
  "sha256:c4f99455e52e5396a5348cca788437a3c972e7175e151ce4dcab417523fd8341" -> "sha256:891ead003b1efd857972dac0e8f4e317b0d328495daef3540cf6247c30d60b47" [label=""];
  "sha256:891ead003b1efd857972dac0e8f4e317b0d328495daef3540cf6247c30d60b47" -> "sha256:fb5178626e203fbd17cce0493812aef5ab36cc05050306a85882d21a8f90e7aa" [label=""];
}

