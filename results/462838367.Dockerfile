[app/sources/462838367.Dockerfile]
digraph {
  "sha256:7deca7012b52cf5a03799a7aa266d6d200d637c48ef2a91a253930001b002a7f" [label="docker-image://docker.io/zilliqa/scilla:v0.3.0" shape="ellipse"];
  "sha256:672e5294765ba38ea78297f71a4b7b04bd9a51e797864611b01ec1958bb9b730" [label="/bin/sh -c apt-get update     && apt-get install -y software-properties-common     && add-apt-repository ppa:tah83/secp256k1 -y     && apt-get update && apt-get install -y --no-install-recommends     autoconf     build-essential     ca-certificates     cmake     curl     git     golang     libboost-filesystem-dev     libboost-program-options-dev     libboost-system-dev     libboost-test-dev     libcurl4-openssl-dev     libevent-dev     libjsoncpp-dev     libjsonrpccpp-dev     libleveldb-dev     libmicrohttpd-dev     libminiupnpc-dev     libprotobuf-dev     libsnappy-dev     libssl-dev     libtool     ocl-icd-opencl-dev     pkg-config     protobuf-compiler     python     python-pip     libsecp256k1-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4be3754b06a94b32c5ee661c1bfebdb01b9ca5e69462dec2515ac8a1b7723425" [label="/bin/sh -c git clone ${REPO} ${SOURCE_DIR}     && git -C ${SOURCE_DIR} checkout ${COMMIT}     && cmake -H${SOURCE_DIR} -B${BUILD_DIR} -DCMAKE_BUILD_TYPE=${BUILD_TYPE}         -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} ${EXTRA_CMAKE_ARGS}     && cmake --build ${BUILD_DIR} -- -j$(nproc)     && cmake --build ${BUILD_DIR} --target install     && rm -rf ${BUILD_DIR}" shape="box"];
  "sha256:a2b8d1ccdf1dfd283070be9d20c97e8e23200bb856244299683ca7b8baf5c720" [label="sha256:a2b8d1ccdf1dfd283070be9d20c97e8e23200bb856244299683ca7b8baf5c720" shape="plaintext"];
  "sha256:7deca7012b52cf5a03799a7aa266d6d200d637c48ef2a91a253930001b002a7f" -> "sha256:672e5294765ba38ea78297f71a4b7b04bd9a51e797864611b01ec1958bb9b730" [label=""];
  "sha256:672e5294765ba38ea78297f71a4b7b04bd9a51e797864611b01ec1958bb9b730" -> "sha256:4be3754b06a94b32c5ee661c1bfebdb01b9ca5e69462dec2515ac8a1b7723425" [label=""];
  "sha256:4be3754b06a94b32c5ee661c1bfebdb01b9ca5e69462dec2515ac8a1b7723425" -> "sha256:a2b8d1ccdf1dfd283070be9d20c97e8e23200bb856244299683ca7b8baf5c720" [label=""];
}

