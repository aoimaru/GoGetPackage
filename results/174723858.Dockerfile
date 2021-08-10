[app/sources/174723858.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0e4a7cae6d327b2276325a98236ae1766a586adcc6d5e2ecdac8164ab335decf" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     g++     gcc     libc6-dev     make     pkg-config     swig     doxygen     curl     ca-certificates     git     wget     libssl-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c096c0eda2113a98f259fbbddfc918fc4c0c1a07cd3350a6c975822ba1c5132c" [label="/bin/sh -c wget https://cmake.org/files/v${CMAKE_VERSION%.*}/cmake-${CMAKE_VERSION}.tar.gz      && tar xvfz cmake-${CMAKE_VERSION}.tar.gz      && cd cmake-${CMAKE_VERSION}      && ./bootstrap      && make -j4      && make install      && cd -      && rm -rf ./cmake-*" shape="box"];
  "sha256:888ab9f44291a28368393320e2de15b3ffad716ff4b58bb35edf92f1750e553d" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:d97b96908f2ec8ff75a96c10b8afc4ffca4a98593485d4f6c03222d174976360" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:95a2cb69094cf8698e4272639b0f5ad87bcf8dab0797880e285702f13544fe83" [label="mkdir{path=/go}" shape="note"];
  "sha256:ced3d6eda84b6ce147004f2b563efebf4c0168f7190d014fbdafa976ad4ffda4" [label="local://context" shape="ellipse"];
  "sha256:84b89abea6aa8a01a20632bd5ee494579a409b1033eb4720a723be17b838b60f" [label="copy{src=/, dest=/go/virgil-crypto}" shape="note"];
  "sha256:53972ee84a6b4c500ca07d22cc08a5687b906730b37867f364306c88568e3c29" [label="/bin/sh -c cd virgil-crypto     && cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install -DLANG=go -DINSTALL_CORE_LIBS=ON -DVIRGIL_CRYPTO_FEATURE_PYTHIA=ON     && cmake --build _build --target install" shape="box"];
  "sha256:489786130d4f813e1b92a96782dd192229ae131b2bc632340ac25519b9f8793b" [label="/bin/sh -c go get -d gopkg.in/virgilsecurity/virgil-crypto-go.v4     && cp -r virgil-crypto/_install/* $GOPATH/src/gopkg.in/virgilsecurity/virgil-crypto-go.v4" shape="box"];
  "sha256:c892406af26aa463e0d2d758ffd5545d6e74fd44737d20ed8f6c4f2e2c27da95" [label="/bin/sh -c go get -d gopkg.in/virgilsecurity/virgil-crypto-go.v5     && cp -r virgil-crypto/_install/* $GOPATH/src/gopkg.in/virgilsecurity/virgil-crypto-go.v5" shape="box"];
  "sha256:ef756fde7f139ea238674177ec1fddc9288dcd82e5ad4be93b7a968a7db736bd" [label="/bin/sh -c rm -rf virgil-crypto" shape="box"];
  "sha256:39676cc2e78e8238cecac812cc4ecddac5441c435ec7bccd7f5dc78f2b43f709" [label="sha256:39676cc2e78e8238cecac812cc4ecddac5441c435ec7bccd7f5dc78f2b43f709" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0e4a7cae6d327b2276325a98236ae1766a586adcc6d5e2ecdac8164ab335decf" [label=""];
  "sha256:0e4a7cae6d327b2276325a98236ae1766a586adcc6d5e2ecdac8164ab335decf" -> "sha256:c096c0eda2113a98f259fbbddfc918fc4c0c1a07cd3350a6c975822ba1c5132c" [label=""];
  "sha256:c096c0eda2113a98f259fbbddfc918fc4c0c1a07cd3350a6c975822ba1c5132c" -> "sha256:888ab9f44291a28368393320e2de15b3ffad716ff4b58bb35edf92f1750e553d" [label=""];
  "sha256:888ab9f44291a28368393320e2de15b3ffad716ff4b58bb35edf92f1750e553d" -> "sha256:d97b96908f2ec8ff75a96c10b8afc4ffca4a98593485d4f6c03222d174976360" [label=""];
  "sha256:d97b96908f2ec8ff75a96c10b8afc4ffca4a98593485d4f6c03222d174976360" -> "sha256:95a2cb69094cf8698e4272639b0f5ad87bcf8dab0797880e285702f13544fe83" [label=""];
  "sha256:95a2cb69094cf8698e4272639b0f5ad87bcf8dab0797880e285702f13544fe83" -> "sha256:84b89abea6aa8a01a20632bd5ee494579a409b1033eb4720a723be17b838b60f" [label=""];
  "sha256:ced3d6eda84b6ce147004f2b563efebf4c0168f7190d014fbdafa976ad4ffda4" -> "sha256:84b89abea6aa8a01a20632bd5ee494579a409b1033eb4720a723be17b838b60f" [label=""];
  "sha256:84b89abea6aa8a01a20632bd5ee494579a409b1033eb4720a723be17b838b60f" -> "sha256:53972ee84a6b4c500ca07d22cc08a5687b906730b37867f364306c88568e3c29" [label=""];
  "sha256:53972ee84a6b4c500ca07d22cc08a5687b906730b37867f364306c88568e3c29" -> "sha256:489786130d4f813e1b92a96782dd192229ae131b2bc632340ac25519b9f8793b" [label=""];
  "sha256:489786130d4f813e1b92a96782dd192229ae131b2bc632340ac25519b9f8793b" -> "sha256:c892406af26aa463e0d2d758ffd5545d6e74fd44737d20ed8f6c4f2e2c27da95" [label=""];
  "sha256:c892406af26aa463e0d2d758ffd5545d6e74fd44737d20ed8f6c4f2e2c27da95" -> "sha256:ef756fde7f139ea238674177ec1fddc9288dcd82e5ad4be93b7a968a7db736bd" [label=""];
  "sha256:ef756fde7f139ea238674177ec1fddc9288dcd82e5ad4be93b7a968a7db736bd" -> "sha256:39676cc2e78e8238cecac812cc4ecddac5441c435ec7bccd7f5dc78f2b43f709" [label=""];
}

