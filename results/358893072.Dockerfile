[app/sources/358893072.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6d4eb50a83c9492045052bcf54d800c0c510b3ef533d555e9d69368230bdde38" [label="/bin/sh -c apt-get install zlibc zlib1g zlib1g-dev -y" shape="box"];
  "sha256:4478e8ffd84ce2bc61c69a06d70c0d05b60b222826dcf47eed1a5a8680b9baee" [label="/bin/sh -c apt-get install software-properties-common -y" shape="box"];
  "sha256:6cd67b180a93e2b838985912732a4bf1fb12b2df50ae447d4e6a69e58429cba9" [label="/bin/sh -c apt-get install build-essential wget -y" shape="box"];
  "sha256:f093b4c90cd80656aef285447fc053f3c9a4968256fe84315521c52cae2e399f" [label="/bin/sh -c apt-get install libboost-graph-dev -y" shape="box"];
  "sha256:3ccff86ab14fafe5f6b633054d691f238fab0953117a9b1644dcf7f892a29102" [label="/bin/sh -c wget http://www.cmake.org/files/v3.2/cmake-3.2.2.tar.gz --no-check-certificate && tar xf cmake-3.2.2.tar.gz" shape="box"];
  "sha256:b918c19e29674196d9681ec1f372ba553c170cd6c8624157360b1a47fe47a4a5" [label="/bin/sh -c cd cmake-3.2.2 && ./configure && make && make install" shape="box"];
  "sha256:815007a4f1f2e38183ed061550f17e3a8de7d8f11e53b4946fdfae0778b69805" [label="/bin/sh -c cmake --version" shape="box"];
  "sha256:f33ec0865dcc39c8d53c547cae32168177e8b4b547f9e26ff3daaf6cf7da7f77" [label="/bin/sh -c add-apt-repository ppa:ubuntu-toolchain-r/test -y" shape="box"];
  "sha256:aa362286e494b7a3892547acc0c0deb39c419ebcc2f7ca43d9f1dc4f66a41091" [label="/bin/sh -c apt-get update;  apt-get install gcc-4.8 g++-4.8 -y" shape="box"];
  "sha256:5784c16fa29a30dd6e4b42a0f3689e35d4066aa5ea2ef1003a15234abdf27d90" [label="/bin/sh -c gcc-4.8 --version" shape="box"];
  "sha256:0266e8e3690c60a53b01b52cb138e1c6bcd990973357e1062b3786175b957ea0" [label="/bin/sh -c which gcc-4.8" shape="box"];
  "sha256:fd71e2cce07b5083828cece7906ebbf0c0e68ace41be511174d9b01c79d9aa2e" [label="local://context" shape="ellipse"];
  "sha256:b5537d9f71bbbacb6df7b6865b1f48ea7fba8a58fb16a1297b997605ce65ecd4" [label="copy{src=/, dest=/hinge/}" shape="note"];
  "sha256:b1b4bbce5565d7ee436cd6801547221e0356f45a8d20b269e9989357a7f7b835" [label="mkdir{path=/hinge}" shape="note"];
  "sha256:ccccac6141d8eb921a0077eaa5d2458cff5f939f73311d5bd63eadea9c02f543" [label="/bin/sh -c ./utils/build.sh" shape="box"];
  "sha256:4a69c8c139e35d4a48a87b650c5121a9ad4c62da9fcbb647df7b796fbc139954" [label="sha256:4a69c8c139e35d4a48a87b650c5121a9ad4c62da9fcbb647df7b796fbc139954" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:6d4eb50a83c9492045052bcf54d800c0c510b3ef533d555e9d69368230bdde38" [label=""];
  "sha256:6d4eb50a83c9492045052bcf54d800c0c510b3ef533d555e9d69368230bdde38" -> "sha256:4478e8ffd84ce2bc61c69a06d70c0d05b60b222826dcf47eed1a5a8680b9baee" [label=""];
  "sha256:4478e8ffd84ce2bc61c69a06d70c0d05b60b222826dcf47eed1a5a8680b9baee" -> "sha256:6cd67b180a93e2b838985912732a4bf1fb12b2df50ae447d4e6a69e58429cba9" [label=""];
  "sha256:6cd67b180a93e2b838985912732a4bf1fb12b2df50ae447d4e6a69e58429cba9" -> "sha256:f093b4c90cd80656aef285447fc053f3c9a4968256fe84315521c52cae2e399f" [label=""];
  "sha256:f093b4c90cd80656aef285447fc053f3c9a4968256fe84315521c52cae2e399f" -> "sha256:3ccff86ab14fafe5f6b633054d691f238fab0953117a9b1644dcf7f892a29102" [label=""];
  "sha256:3ccff86ab14fafe5f6b633054d691f238fab0953117a9b1644dcf7f892a29102" -> "sha256:b918c19e29674196d9681ec1f372ba553c170cd6c8624157360b1a47fe47a4a5" [label=""];
  "sha256:b918c19e29674196d9681ec1f372ba553c170cd6c8624157360b1a47fe47a4a5" -> "sha256:815007a4f1f2e38183ed061550f17e3a8de7d8f11e53b4946fdfae0778b69805" [label=""];
  "sha256:815007a4f1f2e38183ed061550f17e3a8de7d8f11e53b4946fdfae0778b69805" -> "sha256:f33ec0865dcc39c8d53c547cae32168177e8b4b547f9e26ff3daaf6cf7da7f77" [label=""];
  "sha256:f33ec0865dcc39c8d53c547cae32168177e8b4b547f9e26ff3daaf6cf7da7f77" -> "sha256:aa362286e494b7a3892547acc0c0deb39c419ebcc2f7ca43d9f1dc4f66a41091" [label=""];
  "sha256:aa362286e494b7a3892547acc0c0deb39c419ebcc2f7ca43d9f1dc4f66a41091" -> "sha256:5784c16fa29a30dd6e4b42a0f3689e35d4066aa5ea2ef1003a15234abdf27d90" [label=""];
  "sha256:5784c16fa29a30dd6e4b42a0f3689e35d4066aa5ea2ef1003a15234abdf27d90" -> "sha256:0266e8e3690c60a53b01b52cb138e1c6bcd990973357e1062b3786175b957ea0" [label=""];
  "sha256:0266e8e3690c60a53b01b52cb138e1c6bcd990973357e1062b3786175b957ea0" -> "sha256:b5537d9f71bbbacb6df7b6865b1f48ea7fba8a58fb16a1297b997605ce65ecd4" [label=""];
  "sha256:fd71e2cce07b5083828cece7906ebbf0c0e68ace41be511174d9b01c79d9aa2e" -> "sha256:b5537d9f71bbbacb6df7b6865b1f48ea7fba8a58fb16a1297b997605ce65ecd4" [label=""];
  "sha256:b5537d9f71bbbacb6df7b6865b1f48ea7fba8a58fb16a1297b997605ce65ecd4" -> "sha256:b1b4bbce5565d7ee436cd6801547221e0356f45a8d20b269e9989357a7f7b835" [label=""];
  "sha256:b1b4bbce5565d7ee436cd6801547221e0356f45a8d20b269e9989357a7f7b835" -> "sha256:ccccac6141d8eb921a0077eaa5d2458cff5f939f73311d5bd63eadea9c02f543" [label=""];
  "sha256:ccccac6141d8eb921a0077eaa5d2458cff5f939f73311d5bd63eadea9c02f543" -> "sha256:4a69c8c139e35d4a48a87b650c5121a9ad4c62da9fcbb647df7b796fbc139954" [label=""];
}

