[app/sources/185296877.Dockerfile]
digraph {
  "sha256:ea9cc4a0c9f4d82de92ecaf2b7a0b3cbd2fd722135e62c6099bc1defb4539dd2" [label="docker-image://docker.io/freeradius/ubuntu14-deps:latest" shape="ellipse"];
  "sha256:c1dc781bd84e2f2ac987d5dfdecba05090b5f47459344cadb3eac22b868d1a6c" [label="mkdir{path=/usr/local/src/repositories/freeradius-server}" shape="note"];
  "sha256:89e1996090fe6204e29c56bd32ec0bf4a4286d3243acbc0cdf58642552ea5c04" [label="/bin/sh -c CC=${cc} ./configure --prefix=/opt/freeradius" shape="box"];
  "sha256:51fd3e8e3fb84da4d9a4664a5317d39996cc4a81bc8e8896adbf8740dd87c9c4" [label="/bin/sh -c make -j2" shape="box"];
  "sha256:04356b5d51b81bcffdf40ab4447319d42376617621cd3c3c5d253592c76cb27b" [label="/bin/sh -c make install" shape="box"];
  "sha256:76c164e9ec3b6ce237b473323103fec78c51554a9ea790dc2928ce9677d2c024" [label="mkdir{path=/opt/freeradius/etc/raddb}" shape="note"];
  "sha256:eb26cf41f523c08ae54625fe9f683ad049d5db4087abda2fc5c95088c839ac9f" [label="/bin/sh -c sed -i -e 's/allow_vulnerable_openssl.*/allow_vulnerable_openssl = yes/' radiusd.conf" shape="box"];
  "sha256:d2601ce15d4ab67814c4c8145d1a19a3321b13ed8d79f84a976c5b30265c32fe" [label="mkdir{path=/opt/freeradius/etc/raddb/certs}" shape="note"];
  "sha256:21af4c12e62e206bea8b3c71d5ac1c781a97bd01a53b75d61b213ca69ba5c5c0" [label="/bin/sh -c make" shape="box"];
  "sha256:3fb4375d6a17a39e5ec9019b94f1ae91641eafa5cda32b3b0c651b563a75be42" [label="copy{src=/opt/freeradius, dest=/opt/freeradius}" shape="note"];
  "sha256:e10a90ef2c166b600ca19de17ec1d4670b89761d98d5c2dc3abff1545cc32349" [label="sha256:e10a90ef2c166b600ca19de17ec1d4670b89761d98d5c2dc3abff1545cc32349" shape="plaintext"];
  "sha256:ea9cc4a0c9f4d82de92ecaf2b7a0b3cbd2fd722135e62c6099bc1defb4539dd2" -> "sha256:c1dc781bd84e2f2ac987d5dfdecba05090b5f47459344cadb3eac22b868d1a6c" [label=""];
  "sha256:c1dc781bd84e2f2ac987d5dfdecba05090b5f47459344cadb3eac22b868d1a6c" -> "sha256:89e1996090fe6204e29c56bd32ec0bf4a4286d3243acbc0cdf58642552ea5c04" [label=""];
  "sha256:89e1996090fe6204e29c56bd32ec0bf4a4286d3243acbc0cdf58642552ea5c04" -> "sha256:51fd3e8e3fb84da4d9a4664a5317d39996cc4a81bc8e8896adbf8740dd87c9c4" [label=""];
  "sha256:51fd3e8e3fb84da4d9a4664a5317d39996cc4a81bc8e8896adbf8740dd87c9c4" -> "sha256:04356b5d51b81bcffdf40ab4447319d42376617621cd3c3c5d253592c76cb27b" [label=""];
  "sha256:04356b5d51b81bcffdf40ab4447319d42376617621cd3c3c5d253592c76cb27b" -> "sha256:76c164e9ec3b6ce237b473323103fec78c51554a9ea790dc2928ce9677d2c024" [label=""];
  "sha256:76c164e9ec3b6ce237b473323103fec78c51554a9ea790dc2928ce9677d2c024" -> "sha256:eb26cf41f523c08ae54625fe9f683ad049d5db4087abda2fc5c95088c839ac9f" [label=""];
  "sha256:eb26cf41f523c08ae54625fe9f683ad049d5db4087abda2fc5c95088c839ac9f" -> "sha256:d2601ce15d4ab67814c4c8145d1a19a3321b13ed8d79f84a976c5b30265c32fe" [label=""];
  "sha256:d2601ce15d4ab67814c4c8145d1a19a3321b13ed8d79f84a976c5b30265c32fe" -> "sha256:21af4c12e62e206bea8b3c71d5ac1c781a97bd01a53b75d61b213ca69ba5c5c0" [label=""];
  "sha256:ea9cc4a0c9f4d82de92ecaf2b7a0b3cbd2fd722135e62c6099bc1defb4539dd2" -> "sha256:3fb4375d6a17a39e5ec9019b94f1ae91641eafa5cda32b3b0c651b563a75be42" [label=""];
  "sha256:21af4c12e62e206bea8b3c71d5ac1c781a97bd01a53b75d61b213ca69ba5c5c0" -> "sha256:3fb4375d6a17a39e5ec9019b94f1ae91641eafa5cda32b3b0c651b563a75be42" [label=""];
  "sha256:3fb4375d6a17a39e5ec9019b94f1ae91641eafa5cda32b3b0c651b563a75be42" -> "sha256:e10a90ef2c166b600ca19de17ec1d4670b89761d98d5c2dc3abff1545cc32349" [label=""];
}

