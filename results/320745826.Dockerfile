[app/sources/320745826.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:b6e461acf253666a9a4c03ad2a019d3994b514a608dfbd3ea6b72ac203993db8" [label="/bin/sh -c apt-get install -qy build-essential g++-4.8 git cmake libboost-all-dev libcurl4-openssl-dev wget" shape="box"];
  "sha256:b5d9103e5db617c467ee211cddf40506ae51b3a6a5733b93b7c194ccddf888b4" [label="/bin/sh -c apt-get install -qy automake unzip libgmp-dev libtool libleveldb-dev yasm libminiupnpc-dev libreadline-dev scons" shape="box"];
  "sha256:b33f5e1ba7aab941165d566246cfbd60290dec54eb437709c70dce248552e360" [label="/bin/sh -c apt-get install -qy libjsoncpp-dev libargtable2-dev" shape="box"];
  "sha256:e3d4bc15568b3479b0df30967eaaa70c8bf91fc1ee5cec56da9b5935221de261" [label="/bin/sh -c apt-get install -qy libncurses5-dev" shape="box"];
  "sha256:515febb42206ccc9d5ddb52b3e8931f280f0ed39f6639750a7eec6ae377b8f57" [label="/bin/sh -c apt-get install -qy software-properties-common" shape="box"];
  "sha256:fed57ea483b6efeb737469e071b3d00e877a4ad63823d574d7ef7e7f34b0a5e1" [label="/bin/sh -c add-apt-repository ppa:ethereum/ethereum" shape="box"];
  "sha256:d6c965458d2fb22b089d07b1871dc913a18dec059b661548b6434b7fc5324284" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b2662bd2ddc86482b3df27d40153cb69791f079c2b403509445e33bc0cfe374e" [label="/bin/sh -c apt-get install -qy libcryptopp-dev libjson-rpc-cpp-dev" shape="box"];
  "sha256:3545126157ccd650d2acb0415df430fac04bd3712bcd7930a2a84df0f69fbbb0" [label="/bin/sh -c git clone --depth=1 --branch develop https://github.com/ethereum/cpp-ethereum" shape="box"];
  "sha256:8fb5c1963fb352c022482d9e0a9f4149379312f9945169405cc2960275c12e6a" [label="/bin/sh -c mkdir -p cpp-ethereum/build" shape="box"];
  "sha256:ffb7c7232396e4376b104530cf9c201a3cf9dda73a0801b8fe1cb9a41b644667" [label="/bin/sh -c cd cpp-ethereum/build && cmake .. -DCMAKE_BUILD_TYPE=Release -DHEADLESS=1 && make -j $(cat /proc/cpuinfo | grep processor | wc -l) && make install" shape="box"];
  "sha256:2d936e0826b122e17c9b3e01fdf5ca240348c4d2021a1c75aad92e61f361019a" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:59e05420808dacb0398608d6e7b4db26d8db45300efa6012da37d1be8af0f8e1" [label="sha256:59e05420808dacb0398608d6e7b4db26d8db45300efa6012da37d1be8af0f8e1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label=""];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" -> "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" [label=""];
  "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" -> "sha256:b6e461acf253666a9a4c03ad2a019d3994b514a608dfbd3ea6b72ac203993db8" [label=""];
  "sha256:b6e461acf253666a9a4c03ad2a019d3994b514a608dfbd3ea6b72ac203993db8" -> "sha256:b5d9103e5db617c467ee211cddf40506ae51b3a6a5733b93b7c194ccddf888b4" [label=""];
  "sha256:b5d9103e5db617c467ee211cddf40506ae51b3a6a5733b93b7c194ccddf888b4" -> "sha256:b33f5e1ba7aab941165d566246cfbd60290dec54eb437709c70dce248552e360" [label=""];
  "sha256:b33f5e1ba7aab941165d566246cfbd60290dec54eb437709c70dce248552e360" -> "sha256:e3d4bc15568b3479b0df30967eaaa70c8bf91fc1ee5cec56da9b5935221de261" [label=""];
  "sha256:e3d4bc15568b3479b0df30967eaaa70c8bf91fc1ee5cec56da9b5935221de261" -> "sha256:515febb42206ccc9d5ddb52b3e8931f280f0ed39f6639750a7eec6ae377b8f57" [label=""];
  "sha256:515febb42206ccc9d5ddb52b3e8931f280f0ed39f6639750a7eec6ae377b8f57" -> "sha256:fed57ea483b6efeb737469e071b3d00e877a4ad63823d574d7ef7e7f34b0a5e1" [label=""];
  "sha256:fed57ea483b6efeb737469e071b3d00e877a4ad63823d574d7ef7e7f34b0a5e1" -> "sha256:d6c965458d2fb22b089d07b1871dc913a18dec059b661548b6434b7fc5324284" [label=""];
  "sha256:d6c965458d2fb22b089d07b1871dc913a18dec059b661548b6434b7fc5324284" -> "sha256:b2662bd2ddc86482b3df27d40153cb69791f079c2b403509445e33bc0cfe374e" [label=""];
  "sha256:b2662bd2ddc86482b3df27d40153cb69791f079c2b403509445e33bc0cfe374e" -> "sha256:3545126157ccd650d2acb0415df430fac04bd3712bcd7930a2a84df0f69fbbb0" [label=""];
  "sha256:3545126157ccd650d2acb0415df430fac04bd3712bcd7930a2a84df0f69fbbb0" -> "sha256:8fb5c1963fb352c022482d9e0a9f4149379312f9945169405cc2960275c12e6a" [label=""];
  "sha256:8fb5c1963fb352c022482d9e0a9f4149379312f9945169405cc2960275c12e6a" -> "sha256:ffb7c7232396e4376b104530cf9c201a3cf9dda73a0801b8fe1cb9a41b644667" [label=""];
  "sha256:ffb7c7232396e4376b104530cf9c201a3cf9dda73a0801b8fe1cb9a41b644667" -> "sha256:2d936e0826b122e17c9b3e01fdf5ca240348c4d2021a1c75aad92e61f361019a" [label=""];
  "sha256:2d936e0826b122e17c9b3e01fdf5ca240348c4d2021a1c75aad92e61f361019a" -> "sha256:59e05420808dacb0398608d6e7b4db26d8db45300efa6012da37d1be8af0f8e1" [label=""];
}

