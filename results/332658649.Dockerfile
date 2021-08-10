[app/sources/332658649.Dockerfile]
digraph {
  "sha256:369cedfff1bfb09cce13270fcc7f242c008b7e50c66c8459c920d91feabeced2" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:0b6bac8599749b4e6df080524f6d4908cbe777dfec07899626b5428ba323889b" [label="/bin/sh -c apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:92bdc3b254a0b6796e05c71eaaa69eb8ccc303471021994a6f6c893501004ef9" [label="copy{src=/scripts/install_debs_cmake.sh, dest=/cartographer/scripts/}" shape="note"];
  "sha256:45fb850c712aae74426e5d64c7b39e131a03645b7974290107d6867f0ed874cc" [label="/bin/sh -c cartographer/scripts/install_debs_cmake.sh && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0863503388f60ea18ae42117151cd0c0634cf53a6011f178b0efea01e2b00270" [label="copy{src=/scripts/install_ceres.sh, dest=/cartographer/scripts/}" shape="note"];
  "sha256:df80bd7d89ad093b08524de328e9299187cb3d1e113efdce8d2f224cc43abe19" [label="/bin/sh -c cartographer/scripts/install_ceres.sh && rm -rf ceres-solver" shape="box"];
  "sha256:2d79fe513c95bba2a3eec5f7401dd985d1f1984946ad2ccce5ac3f1889aa8227" [label="copy{src=/scripts/install_proto3.sh, dest=/cartographer/scripts/}" shape="note"];
  "sha256:bd17d47cf72f246ec7ba646a64477b59f1de31dfbe9934fe8d58754cb2ef8580" [label="/bin/sh -c cartographer/scripts/install_proto3.sh && rm -rf protobuf" shape="box"];
  "sha256:26e68a5b5f39a14c51e47ae85e8885324ac0a91be643d2166bfb4abcdc3e8a66" [label="copy{src=/, dest=/cartographer}" shape="note"];
  "sha256:2833b6ba81ef4dbe2ffa3a51bdb9ee1cf86220fdd987acc49c73c172f75d3ebf" [label="/bin/sh -c cartographer/scripts/install_cartographer_cmake.sh && rm -rf cartographer" shape="box"];
  "sha256:8adb61499b7ca29d55ce5eb4fd421993531a3100b0196505625cbde48d26fd21" [label="sha256:8adb61499b7ca29d55ce5eb4fd421993531a3100b0196505625cbde48d26fd21" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0b6bac8599749b4e6df080524f6d4908cbe777dfec07899626b5428ba323889b" [label=""];
  "sha256:0b6bac8599749b4e6df080524f6d4908cbe777dfec07899626b5428ba323889b" -> "sha256:92bdc3b254a0b6796e05c71eaaa69eb8ccc303471021994a6f6c893501004ef9" [label=""];
  "sha256:369cedfff1bfb09cce13270fcc7f242c008b7e50c66c8459c920d91feabeced2" -> "sha256:92bdc3b254a0b6796e05c71eaaa69eb8ccc303471021994a6f6c893501004ef9" [label=""];
  "sha256:92bdc3b254a0b6796e05c71eaaa69eb8ccc303471021994a6f6c893501004ef9" -> "sha256:45fb850c712aae74426e5d64c7b39e131a03645b7974290107d6867f0ed874cc" [label=""];
  "sha256:45fb850c712aae74426e5d64c7b39e131a03645b7974290107d6867f0ed874cc" -> "sha256:0863503388f60ea18ae42117151cd0c0634cf53a6011f178b0efea01e2b00270" [label=""];
  "sha256:369cedfff1bfb09cce13270fcc7f242c008b7e50c66c8459c920d91feabeced2" -> "sha256:0863503388f60ea18ae42117151cd0c0634cf53a6011f178b0efea01e2b00270" [label=""];
  "sha256:0863503388f60ea18ae42117151cd0c0634cf53a6011f178b0efea01e2b00270" -> "sha256:df80bd7d89ad093b08524de328e9299187cb3d1e113efdce8d2f224cc43abe19" [label=""];
  "sha256:df80bd7d89ad093b08524de328e9299187cb3d1e113efdce8d2f224cc43abe19" -> "sha256:2d79fe513c95bba2a3eec5f7401dd985d1f1984946ad2ccce5ac3f1889aa8227" [label=""];
  "sha256:369cedfff1bfb09cce13270fcc7f242c008b7e50c66c8459c920d91feabeced2" -> "sha256:2d79fe513c95bba2a3eec5f7401dd985d1f1984946ad2ccce5ac3f1889aa8227" [label=""];
  "sha256:2d79fe513c95bba2a3eec5f7401dd985d1f1984946ad2ccce5ac3f1889aa8227" -> "sha256:bd17d47cf72f246ec7ba646a64477b59f1de31dfbe9934fe8d58754cb2ef8580" [label=""];
  "sha256:bd17d47cf72f246ec7ba646a64477b59f1de31dfbe9934fe8d58754cb2ef8580" -> "sha256:26e68a5b5f39a14c51e47ae85e8885324ac0a91be643d2166bfb4abcdc3e8a66" [label=""];
  "sha256:369cedfff1bfb09cce13270fcc7f242c008b7e50c66c8459c920d91feabeced2" -> "sha256:26e68a5b5f39a14c51e47ae85e8885324ac0a91be643d2166bfb4abcdc3e8a66" [label=""];
  "sha256:26e68a5b5f39a14c51e47ae85e8885324ac0a91be643d2166bfb4abcdc3e8a66" -> "sha256:2833b6ba81ef4dbe2ffa3a51bdb9ee1cf86220fdd987acc49c73c172f75d3ebf" [label=""];
  "sha256:2833b6ba81ef4dbe2ffa3a51bdb9ee1cf86220fdd987acc49c73c172f75d3ebf" -> "sha256:8adb61499b7ca29d55ce5eb4fd421993531a3100b0196505625cbde48d26fd21" [label=""];
}

