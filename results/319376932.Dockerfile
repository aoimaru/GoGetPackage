[app/sources/319376932.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:7d2220f62487d5c972e2c03982fd405faec60b713eaaae07f77e06e0bd01b5a7" [label="/bin/sh -c apt-get update &&     apt-get install -y       sudo tmux screen emacs git gdb net-tools g++ cmake       libboost-all-dev libevent-dev libdouble-conversion-dev       libgoogle-glog-dev libgflags-dev libiberty-dev liblz4-dev       liblzma-dev libsnappy-dev make zlib1g-dev binutils-dev       libjemalloc-dev libssl-dev pkg-config libsodium-dev" shape="box"];
  "sha256:23a66b5d6c4858210cee335d85743e107bf1eef9c99af33d5bbdfe627a980ca6" [label="/bin/sh -c adduser attacker --disabled-password --uid $UID" shape="box"];
  "sha256:f6c9c9c0189eebf1e3a8a37072112c1542d99a64f17becbe64b823ad25657efa" [label="/bin/sh -c adduser attacker sudo" shape="box"];
  "sha256:c8fe2efeca2df55aa775baf02b1c404cd3f6450c66227f22f1012c65cd952ea4" [label="/bin/sh -c echo \"attacker:x\" | chpasswd" shape="box"];
  "sha256:6f0f0f544c0f4d07a51f18274ff6428fc87f3a2f55f29c30ac609c81cd9cbbb4" [label="local://context" shape="ellipse"];
  "sha256:4708e50943952fcd35c27be1c9659357edd37efbff8b4a613f9214ff7a325347" [label="copy{src=/home, dest=/home/attacker/}" shape="note"];
  "sha256:020baf9681a96f35c4be8f989fe87639af30580eb934aef3e8207d842ae99fe1" [label="/bin/sh -c chown -R attacker:attacker /home/attacker" shape="box"];
  "sha256:b3beabe0f5ef344873177278935f4268b486114dd1501deac88b89948e042628" [label="mkdir{path=/home/attacker}" shape="note"];
  "sha256:30901c637e01cb58b38c593472ada2fe313ca99c4c4a40f271a7759a2ded43ce" [label="/bin/sh -c cd poc && make" shape="box"];
  "sha256:1fbf1a2927e08b767a1be7a652a9dd8af59bd6ec8654210f64f1187dc27495f6" [label="/bin/sh -c git clone https://github.com/facebook/folly &&     cd folly &&     git checkout df5a0575d95f3c2cc9200b15e40db4af82e1f2eb &&     mkdir build_ && cd build_ &&     cmake .. &&     make -j $(nproc)" shape="box"];
  "sha256:d746d1a56d651a2864021358d1af9a912877d512748468e5a7ee4aa252dae6e7" [label="/bin/sh -c cd /home/attacker/folly/build_ && make install" shape="box"];
  "sha256:0aadaac3b78468a5b97e380c8ca892a5e05ec64c9856d01d2317d69b8405f252" [label="/bin/sh -c git clone https://github.com/facebookincubator/fizz &&     cd fizz &&     git checkout eaa81af854bef509c3c1d7c83df0cd0b084a0fef &&     git apply ~/diff.txt &&     mkdir build_ && cd build_ &&     cmake ../fizz &&     make -j $(nproc)" shape="box"];
  "sha256:b9cff98a84d8bd7a03f029813937074b4901a201b715132828d0f3197e61b6a8" [label="/bin/sh -c cd /home/attacker/fizz/build_ && make install" shape="box"];
  "sha256:c46ce9cd60925e5a519878cd56943e628927f579eb9a0948154a8dfe00340bc9" [label="sha256:c46ce9cd60925e5a519878cd56943e628927f579eb9a0948154a8dfe00340bc9" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:7d2220f62487d5c972e2c03982fd405faec60b713eaaae07f77e06e0bd01b5a7" [label=""];
  "sha256:7d2220f62487d5c972e2c03982fd405faec60b713eaaae07f77e06e0bd01b5a7" -> "sha256:23a66b5d6c4858210cee335d85743e107bf1eef9c99af33d5bbdfe627a980ca6" [label=""];
  "sha256:23a66b5d6c4858210cee335d85743e107bf1eef9c99af33d5bbdfe627a980ca6" -> "sha256:f6c9c9c0189eebf1e3a8a37072112c1542d99a64f17becbe64b823ad25657efa" [label=""];
  "sha256:f6c9c9c0189eebf1e3a8a37072112c1542d99a64f17becbe64b823ad25657efa" -> "sha256:c8fe2efeca2df55aa775baf02b1c404cd3f6450c66227f22f1012c65cd952ea4" [label=""];
  "sha256:c8fe2efeca2df55aa775baf02b1c404cd3f6450c66227f22f1012c65cd952ea4" -> "sha256:4708e50943952fcd35c27be1c9659357edd37efbff8b4a613f9214ff7a325347" [label=""];
  "sha256:6f0f0f544c0f4d07a51f18274ff6428fc87f3a2f55f29c30ac609c81cd9cbbb4" -> "sha256:4708e50943952fcd35c27be1c9659357edd37efbff8b4a613f9214ff7a325347" [label=""];
  "sha256:4708e50943952fcd35c27be1c9659357edd37efbff8b4a613f9214ff7a325347" -> "sha256:020baf9681a96f35c4be8f989fe87639af30580eb934aef3e8207d842ae99fe1" [label=""];
  "sha256:020baf9681a96f35c4be8f989fe87639af30580eb934aef3e8207d842ae99fe1" -> "sha256:b3beabe0f5ef344873177278935f4268b486114dd1501deac88b89948e042628" [label=""];
  "sha256:b3beabe0f5ef344873177278935f4268b486114dd1501deac88b89948e042628" -> "sha256:30901c637e01cb58b38c593472ada2fe313ca99c4c4a40f271a7759a2ded43ce" [label=""];
  "sha256:30901c637e01cb58b38c593472ada2fe313ca99c4c4a40f271a7759a2ded43ce" -> "sha256:1fbf1a2927e08b767a1be7a652a9dd8af59bd6ec8654210f64f1187dc27495f6" [label=""];
  "sha256:1fbf1a2927e08b767a1be7a652a9dd8af59bd6ec8654210f64f1187dc27495f6" -> "sha256:d746d1a56d651a2864021358d1af9a912877d512748468e5a7ee4aa252dae6e7" [label=""];
  "sha256:d746d1a56d651a2864021358d1af9a912877d512748468e5a7ee4aa252dae6e7" -> "sha256:0aadaac3b78468a5b97e380c8ca892a5e05ec64c9856d01d2317d69b8405f252" [label=""];
  "sha256:0aadaac3b78468a5b97e380c8ca892a5e05ec64c9856d01d2317d69b8405f252" -> "sha256:b9cff98a84d8bd7a03f029813937074b4901a201b715132828d0f3197e61b6a8" [label=""];
  "sha256:b9cff98a84d8bd7a03f029813937074b4901a201b715132828d0f3197e61b6a8" -> "sha256:c46ce9cd60925e5a519878cd56943e628927f579eb9a0948154a8dfe00340bc9" [label=""];
}

