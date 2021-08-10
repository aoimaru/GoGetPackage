[app/sources/335208553.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:68b03aef17624d9a55eb31ef6f3670ac8e8680a0e12c51a25165b509f43a88ee" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:6edaf0187d16f5ab971f696db1a58d30c6991e7120804cbc3fac0cbbbed981fc" [label="/bin/sh -c yum install autoconf libtool re2c bison libxml2-devel bzip2-devel libcurl-devel libpng-devel libicu-devel gcc-c++ libmcrypt-devel libwebp-devel libjpeg-devel openssl-devel -y" shape="box"];
  "sha256:f2b9c2c4a574b3b9013f6452b935eecf61bacaa2b942b0ed00af3222c5a08f9f" [label="/bin/sh -c mkdir -p /src/php; (cd /src/php; curl -L https://github.com/php/php-src/archive/php-7.1.9.tar.gz | tar --strip-component=1 -zx )" shape="box"];
  "sha256:7ff3adac9f8470d282ae13512c42dbe829e2eb22e675d0782e53a946fe89de75" [label="mkdir{path=/src/php}" shape="note"];
  "sha256:d1ba25ca0a1b64df44baef5d7d8899468dee52222027734ca6d094b284ca916a" [label="/bin/sh -c yum -y install make gcc" shape="box"];
  "sha256:34857f1933be52910cdb28c6c268c77f13413bc5d79648b0ed03ed8528e1a2e5" [label="/bin/sh -c ./buildconf --force && ./configure --with-curl  --with-openssl" shape="box"];
  "sha256:5b5440518408e4ae077ffceba64970c75b3e75e5dfb15530e66037c7bf0d12b1" [label="/bin/sh -c make && make install" shape="box"];
  "sha256:f982fd09674853fb34d045fab774e148713d9b671fee030ccbcdf3290d80625c" [label="/bin/sh -c php --ini" shape="box"];
  "sha256:bc92a67c20ad5fd36aa2a16aceb1e54e01c3298f0cbc8f13f7c44a281bafa453" [label="/bin/sh -c yum install -y vim valgrind" shape="box"];
  "sha256:6dff9d956717df00355ace6b35737e5d8b04588d3d7dfcd4b0528fa58aff6b34" [label="local://context" shape="ellipse"];
  "sha256:5542562343e1f59ecf5661e6007c16a87e80e3eb56a146dc41f76f05aa74f2d9" [label="copy{src=/build/packages, dest=/packages}" shape="note"];
  "sha256:60297f658db88a305b44b59c0808477946d99a0bac4f9d39e0890c7c9a089f98" [label="/bin/sh -c rpm -ivh /packages/*.rpm" shape="box"];
  "sha256:49ff25f899e1d8b346aa03065d1d29c8f50bb48e76189336967f4a58fed1f748" [label="/bin/sh -c php -m | grep ddtrace" shape="box"];
  "sha256:f1ed2da70792a68dc2f000873192d60a0a88203684a7b9fc04fc9a1dc803c9f4" [label="sha256:f1ed2da70792a68dc2f000873192d60a0a88203684a7b9fc04fc9a1dc803c9f4" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:68b03aef17624d9a55eb31ef6f3670ac8e8680a0e12c51a25165b509f43a88ee" [label=""];
  "sha256:68b03aef17624d9a55eb31ef6f3670ac8e8680a0e12c51a25165b509f43a88ee" -> "sha256:6edaf0187d16f5ab971f696db1a58d30c6991e7120804cbc3fac0cbbbed981fc" [label=""];
  "sha256:6edaf0187d16f5ab971f696db1a58d30c6991e7120804cbc3fac0cbbbed981fc" -> "sha256:f2b9c2c4a574b3b9013f6452b935eecf61bacaa2b942b0ed00af3222c5a08f9f" [label=""];
  "sha256:f2b9c2c4a574b3b9013f6452b935eecf61bacaa2b942b0ed00af3222c5a08f9f" -> "sha256:7ff3adac9f8470d282ae13512c42dbe829e2eb22e675d0782e53a946fe89de75" [label=""];
  "sha256:7ff3adac9f8470d282ae13512c42dbe829e2eb22e675d0782e53a946fe89de75" -> "sha256:d1ba25ca0a1b64df44baef5d7d8899468dee52222027734ca6d094b284ca916a" [label=""];
  "sha256:d1ba25ca0a1b64df44baef5d7d8899468dee52222027734ca6d094b284ca916a" -> "sha256:34857f1933be52910cdb28c6c268c77f13413bc5d79648b0ed03ed8528e1a2e5" [label=""];
  "sha256:34857f1933be52910cdb28c6c268c77f13413bc5d79648b0ed03ed8528e1a2e5" -> "sha256:5b5440518408e4ae077ffceba64970c75b3e75e5dfb15530e66037c7bf0d12b1" [label=""];
  "sha256:5b5440518408e4ae077ffceba64970c75b3e75e5dfb15530e66037c7bf0d12b1" -> "sha256:f982fd09674853fb34d045fab774e148713d9b671fee030ccbcdf3290d80625c" [label=""];
  "sha256:f982fd09674853fb34d045fab774e148713d9b671fee030ccbcdf3290d80625c" -> "sha256:bc92a67c20ad5fd36aa2a16aceb1e54e01c3298f0cbc8f13f7c44a281bafa453" [label=""];
  "sha256:bc92a67c20ad5fd36aa2a16aceb1e54e01c3298f0cbc8f13f7c44a281bafa453" -> "sha256:5542562343e1f59ecf5661e6007c16a87e80e3eb56a146dc41f76f05aa74f2d9" [label=""];
  "sha256:6dff9d956717df00355ace6b35737e5d8b04588d3d7dfcd4b0528fa58aff6b34" -> "sha256:5542562343e1f59ecf5661e6007c16a87e80e3eb56a146dc41f76f05aa74f2d9" [label=""];
  "sha256:5542562343e1f59ecf5661e6007c16a87e80e3eb56a146dc41f76f05aa74f2d9" -> "sha256:60297f658db88a305b44b59c0808477946d99a0bac4f9d39e0890c7c9a089f98" [label=""];
  "sha256:60297f658db88a305b44b59c0808477946d99a0bac4f9d39e0890c7c9a089f98" -> "sha256:49ff25f899e1d8b346aa03065d1d29c8f50bb48e76189336967f4a58fed1f748" [label=""];
  "sha256:49ff25f899e1d8b346aa03065d1d29c8f50bb48e76189336967f4a58fed1f748" -> "sha256:f1ed2da70792a68dc2f000873192d60a0a88203684a7b9fc04fc9a1dc803c9f4" [label=""];
}

