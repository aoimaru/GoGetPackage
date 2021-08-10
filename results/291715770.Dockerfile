[app/sources/291715770.Dockerfile]
digraph {
  "sha256:687c25d30f9f82b701f2eca168d70238cb0fef6f58b5618768c975ebbfe22006" [label="local://context" shape="ellipse"];
  "sha256:54705cea8f21f0f1a8b6049f25e635c35691a936d10d6b369fbcaea29527e132" [label="docker-image://docker.io/library/swift:4.2" shape="ellipse"];
  "sha256:b36193d4976bb6144b1b02a40a7bed19cbb460d84d8357ae4e5f373c165c2afe" [label="/bin/bash -c apt-get update" shape="box"];
  "sha256:53b3fb1c3a1b2f252e7deabbfcd55ebb4425836a45bcdbda635dfcb83df3eda4" [label="/bin/bash -c apt-get install -y software-properties-common curl git zip sudo" shape="box"];
  "sha256:f750f532fbd2ad7e1350d13d9642e9e0c20c49c7b8505c5e2832581fad867912" [label="/bin/bash -c add-apt-repository -y ppa:ethereum/ethereum" shape="box"];
  "sha256:e3e42ed5da36964033f0089807933b2a392dc2a0d96c06b1013ff0b1aff30c82" [label="/bin/bash -c curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -" shape="box"];
  "sha256:9409953bd117e13792ca044a2fa73036ea15d3c08a66b0906be22994827c90fe" [label="/bin/bash -c apt-get update" shape="box"];
  "sha256:6083e8615682bfc2e215a39848fba83bc2d55fb1e0aa15be012a8523224c3b50" [label="/bin/bash -c apt-get -y install solc nodejs" shape="box"];
  "sha256:abc56dce42df96840d9667d0901beace85908adaf9a5c9fd25f39a974909c88c" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:a46e0c508594d456865a55668da76818fc510214d636e8b81e297d5e05299d7a" [label="/bin/bash -c git clone -b \"0.29.0\" https://github.com/realm/SwiftLint.git swiftlint" shape="box"];
  "sha256:db27a6691fabbd3a6d3d2e39bd40d0dad09bb807612a47ed45fec86679ac522f" [label="mkdir{path=/tmp/swiftlint}" shape="note"];
  "sha256:e10d9593e0747d53f011441553fe67fbd22f72f1c10ee65894015fa922ed7048" [label="/bin/bash -c swift build -c release --static-swift-stdlib" shape="box"];
  "sha256:5c4b726f601f9ac18a92dff3d2d5ef940bf514c5a34de6df7bcf37aed0d5272a" [label="copy{src=/, dest=/flint}" shape="note"];
  "sha256:18ee6fa93e7177c75ffc5f4adef85a72ba7fcfe69d0f836cd11519946965bfe7" [label="mkdir{path=/flint}" shape="note"];
  "sha256:a747b1b8b7fb4a7eaf9def7a1e65c39f6469eff5d95a79824d274358ecb5f2c9" [label="/bin/bash -c npm install" shape="box"];
  "sha256:ad6f6a60ea929f23054d834d82a898286cc1abeb8e35f5a4024049161f5497cc" [label="/bin/bash -c npm install -g truffle@4.1.14" shape="box"];
  "sha256:f50dd9f888ececa910f541254d1b98657f9357785b83b1ebc5d17e14e1ca9bc1" [label="/bin/bash -c make release" shape="box"];
  "sha256:9abcbfadd4d7e0d07b63d501a7fbe33f39932abcb54fa2c0a4167ec180999e55" [label="/bin/bash -c echo 'alias flintc=\"/flint/.build/release/flintc\"' >> ~/.bashrc" shape="box"];
  "sha256:c42a2f8cd498a92bd57ff034bb05909276f7359a18850640843cd748002960a8" [label="sha256:c42a2f8cd498a92bd57ff034bb05909276f7359a18850640843cd748002960a8" shape="plaintext"];
  "sha256:54705cea8f21f0f1a8b6049f25e635c35691a936d10d6b369fbcaea29527e132" -> "sha256:b36193d4976bb6144b1b02a40a7bed19cbb460d84d8357ae4e5f373c165c2afe" [label=""];
  "sha256:b36193d4976bb6144b1b02a40a7bed19cbb460d84d8357ae4e5f373c165c2afe" -> "sha256:53b3fb1c3a1b2f252e7deabbfcd55ebb4425836a45bcdbda635dfcb83df3eda4" [label=""];
  "sha256:53b3fb1c3a1b2f252e7deabbfcd55ebb4425836a45bcdbda635dfcb83df3eda4" -> "sha256:f750f532fbd2ad7e1350d13d9642e9e0c20c49c7b8505c5e2832581fad867912" [label=""];
  "sha256:f750f532fbd2ad7e1350d13d9642e9e0c20c49c7b8505c5e2832581fad867912" -> "sha256:e3e42ed5da36964033f0089807933b2a392dc2a0d96c06b1013ff0b1aff30c82" [label=""];
  "sha256:e3e42ed5da36964033f0089807933b2a392dc2a0d96c06b1013ff0b1aff30c82" -> "sha256:9409953bd117e13792ca044a2fa73036ea15d3c08a66b0906be22994827c90fe" [label=""];
  "sha256:9409953bd117e13792ca044a2fa73036ea15d3c08a66b0906be22994827c90fe" -> "sha256:6083e8615682bfc2e215a39848fba83bc2d55fb1e0aa15be012a8523224c3b50" [label=""];
  "sha256:6083e8615682bfc2e215a39848fba83bc2d55fb1e0aa15be012a8523224c3b50" -> "sha256:abc56dce42df96840d9667d0901beace85908adaf9a5c9fd25f39a974909c88c" [label=""];
  "sha256:abc56dce42df96840d9667d0901beace85908adaf9a5c9fd25f39a974909c88c" -> "sha256:a46e0c508594d456865a55668da76818fc510214d636e8b81e297d5e05299d7a" [label=""];
  "sha256:a46e0c508594d456865a55668da76818fc510214d636e8b81e297d5e05299d7a" -> "sha256:db27a6691fabbd3a6d3d2e39bd40d0dad09bb807612a47ed45fec86679ac522f" [label=""];
  "sha256:db27a6691fabbd3a6d3d2e39bd40d0dad09bb807612a47ed45fec86679ac522f" -> "sha256:e10d9593e0747d53f011441553fe67fbd22f72f1c10ee65894015fa922ed7048" [label=""];
  "sha256:e10d9593e0747d53f011441553fe67fbd22f72f1c10ee65894015fa922ed7048" -> "sha256:5c4b726f601f9ac18a92dff3d2d5ef940bf514c5a34de6df7bcf37aed0d5272a" [label=""];
  "sha256:687c25d30f9f82b701f2eca168d70238cb0fef6f58b5618768c975ebbfe22006" -> "sha256:5c4b726f601f9ac18a92dff3d2d5ef940bf514c5a34de6df7bcf37aed0d5272a" [label=""];
  "sha256:5c4b726f601f9ac18a92dff3d2d5ef940bf514c5a34de6df7bcf37aed0d5272a" -> "sha256:18ee6fa93e7177c75ffc5f4adef85a72ba7fcfe69d0f836cd11519946965bfe7" [label=""];
  "sha256:18ee6fa93e7177c75ffc5f4adef85a72ba7fcfe69d0f836cd11519946965bfe7" -> "sha256:a747b1b8b7fb4a7eaf9def7a1e65c39f6469eff5d95a79824d274358ecb5f2c9" [label=""];
  "sha256:a747b1b8b7fb4a7eaf9def7a1e65c39f6469eff5d95a79824d274358ecb5f2c9" -> "sha256:ad6f6a60ea929f23054d834d82a898286cc1abeb8e35f5a4024049161f5497cc" [label=""];
  "sha256:ad6f6a60ea929f23054d834d82a898286cc1abeb8e35f5a4024049161f5497cc" -> "sha256:f50dd9f888ececa910f541254d1b98657f9357785b83b1ebc5d17e14e1ca9bc1" [label=""];
  "sha256:f50dd9f888ececa910f541254d1b98657f9357785b83b1ebc5d17e14e1ca9bc1" -> "sha256:9abcbfadd4d7e0d07b63d501a7fbe33f39932abcb54fa2c0a4167ec180999e55" [label=""];
  "sha256:9abcbfadd4d7e0d07b63d501a7fbe33f39932abcb54fa2c0a4167ec180999e55" -> "sha256:c42a2f8cd498a92bd57ff034bb05909276f7359a18850640843cd748002960a8" [label=""];
}

