[app/sources/348079971.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:955be6f200c29af9de995a006b704b2c9d745e820ae09fe90dde723a63cbcc65" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:3bc7e2f37edb846e66ed311bd8b7633243e91241901bee6b6e89cca4001ae8d3" [label="/bin/sh -c apt-get install -yq libnet-dns-perl --no-install-recommends" shape="box"];
  "sha256:8c0d495f38c8085c362cb6ac7ecc16ecc753b04d957f6b20be23a3702e6ff799" [label="/bin/sh -c mkdir -p $PREFIX/bin" shape="box"];
  "sha256:c433a6e62313c17aded189ce76e27e295de0acf52901064c3fdc5fb93fb3c526" [label="/bin/sh -c wget --no-check-certificate https://raw.githubusercontent.com/brendangregg/Chaosreader/master/older_versions/chaosreader$VERS -O $PREFIX/bin/$PROG" shape="box"];
  "sha256:586e44004b9fa9237171be84b445a6b03199e17f69e3840b5dbb75be1c7d302a" [label="/bin/sh -c chmod 4755 $PREFIX/bin/$PROG" shape="box"];
  "sha256:5033e9eb9a48a371ac8636f507ca31f09e1fb00017654785095fda9a15945bd5" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:47ba79487a1ab91d436af8f03cad4d9493ecb42e5ede55067f605a01833d11fb" [label="sha256:47ba79487a1ab91d436af8f03cad4d9493ecb42e5ede55067f605a01833d11fb" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:955be6f200c29af9de995a006b704b2c9d745e820ae09fe90dde723a63cbcc65" [label=""];
  "sha256:955be6f200c29af9de995a006b704b2c9d745e820ae09fe90dde723a63cbcc65" -> "sha256:3bc7e2f37edb846e66ed311bd8b7633243e91241901bee6b6e89cca4001ae8d3" [label=""];
  "sha256:3bc7e2f37edb846e66ed311bd8b7633243e91241901bee6b6e89cca4001ae8d3" -> "sha256:8c0d495f38c8085c362cb6ac7ecc16ecc753b04d957f6b20be23a3702e6ff799" [label=""];
  "sha256:8c0d495f38c8085c362cb6ac7ecc16ecc753b04d957f6b20be23a3702e6ff799" -> "sha256:c433a6e62313c17aded189ce76e27e295de0acf52901064c3fdc5fb93fb3c526" [label=""];
  "sha256:c433a6e62313c17aded189ce76e27e295de0acf52901064c3fdc5fb93fb3c526" -> "sha256:586e44004b9fa9237171be84b445a6b03199e17f69e3840b5dbb75be1c7d302a" [label=""];
  "sha256:586e44004b9fa9237171be84b445a6b03199e17f69e3840b5dbb75be1c7d302a" -> "sha256:5033e9eb9a48a371ac8636f507ca31f09e1fb00017654785095fda9a15945bd5" [label=""];
  "sha256:5033e9eb9a48a371ac8636f507ca31f09e1fb00017654785095fda9a15945bd5" -> "sha256:47ba79487a1ab91d436af8f03cad4d9493ecb42e5ede55067f605a01833d11fb" [label=""];
}

