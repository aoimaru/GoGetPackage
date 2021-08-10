[app/sources/318997314.Dockerfile]
digraph {
  "sha256:2dc277a426404d3e99c9465b94549167e758bd85f4295a568f94e9139ccbb5ea" [label="docker-image://docker.io/library/debian:9.4" shape="ellipse"];
  "sha256:10811652bd6d6ba8899e112e796d87f6053cba6cdd6d535721bd104b8b995546" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales openssl curl" shape="box"];
  "sha256:c29cb244bc15c316e9754d1fd3f8ac8ee37c87cd3a11dd6d086c8351f386482b" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     dpkg-reconfigure --frontend=noninteractive locales &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:24256173ba5c5f25ed47b85d860c7c331569fff07d27f80a008f00b9cbe97d84" [label="/bin/sh -c adduser --disabled-login --home /grinbox --gecos \"\" grinbox" shape="box"];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" [label="local://context" shape="ellipse"];
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" [label="docker-image://docker.io/library/rust:1.32.0" shape="ellipse"];
  "sha256:18d14db7a133536d34a9e125c49d31e8b70d53e178d17c7918dcb2a9e01cac98" [label="/bin/sh -c set -ex &&     apt-get update &&     apt-get --no-install-recommends --yes install     clang     libclang-dev     llvm-dev     libncurses5     libncursesw5     cmake     git" shape="box"];
  "sha256:06e9b8279f51008fa669a0d223f9d408cfc7d2d55c2b67bd6825a46c918e8fc2" [label="/bin/sh -c USER=root cargo new --bin grinbox" shape="box"];
  "sha256:80704a470915e33a781c569a596e8ae77ed8aaa6d3772b284cee481cbccbc36b" [label="mkdir{path=/grinbox}" shape="note"];
  "sha256:f580ad4a1e77d6bc0803ee5fab574d7252ba3cd4f4dc3325b1e590a544fc83d9" [label="copy{src=/Cargo.lock, dest=/grinbox/Cargo.lock}" shape="note"];
  "sha256:09699dbf9b2801b1ca8756d09b49ee5e64db0507406e4f0fb1aec249ae1ebbba" [label="copy{src=/Cargo.toml, dest=/grinbox/Cargo.toml}" shape="note"];
  "sha256:1b28fc77cd2dfd14c4e917c900b32c51955915f54b7e19fd9d906b995d9b2b30" [label="copy{src=/grinboxlib, dest=/grinbox/grinboxlib}" shape="note"];
  "sha256:a9698781480435632a9dc496a77262a86b963e08484cf80a20c0c5816288affa" [label="/bin/sh -c cargo build --release" shape="box"];
  "sha256:113efd6e4ec08579b520b07457ca615ad17b2f0635b686a6be1e4341940e3ed4" [label="/bin/sh -c rm src/*.rs" shape="box"];
  "sha256:0ba7f64f304d2665437e5c250639fbb062f403adf202ae6d8ce2470c55ade8ea" [label="copy{src=/src, dest=/grinbox/src}" shape="note"];
  "sha256:cfabd21abdae776024498335a6000fb92132546e0310671af15cee1ce5987213" [label="/bin/sh -c rm ./target/release/deps/grinbox*" shape="box"];
  "sha256:2a3c7621d59211dff8f737945b98a17afd5d768cfac41c0a24ced4b8d3bce0da" [label="/bin/sh -c cargo build --release" shape="box"];
  "sha256:8d1ec79ddc0e9fff6140b30e784279192f2b38c6e20caf21af281d21354f1179" [label="copy{src=/grinbox/grinbox/target/release/grinbox, dest=/grinbox/grinbox}" shape="note"];
  "sha256:a13aff4fa9d863f6f526434d1c515ea7b7e2d176f0dc7c43410c35028e8dbd37" [label="mkdir{path=/grinbox}" shape="note"];
  "sha256:8bec8cf57dd45340d6fc6e9f7954529a4abb5f192385ebc1b30d21633ddc8f9b" [label="copy{src=/start.sh, dest=/grinbox/start.sh}" shape="note"];
  "sha256:826cb0eefa90498e5abda1665921c2d0706348928f6c9e8622ba9c97f70e429a" [label="sha256:826cb0eefa90498e5abda1665921c2d0706348928f6c9e8622ba9c97f70e429a" shape="plaintext"];
  "sha256:2dc277a426404d3e99c9465b94549167e758bd85f4295a568f94e9139ccbb5ea" -> "sha256:10811652bd6d6ba8899e112e796d87f6053cba6cdd6d535721bd104b8b995546" [label=""];
  "sha256:10811652bd6d6ba8899e112e796d87f6053cba6cdd6d535721bd104b8b995546" -> "sha256:c29cb244bc15c316e9754d1fd3f8ac8ee37c87cd3a11dd6d086c8351f386482b" [label=""];
  "sha256:c29cb244bc15c316e9754d1fd3f8ac8ee37c87cd3a11dd6d086c8351f386482b" -> "sha256:24256173ba5c5f25ed47b85d860c7c331569fff07d27f80a008f00b9cbe97d84" [label=""];
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" -> "sha256:18d14db7a133536d34a9e125c49d31e8b70d53e178d17c7918dcb2a9e01cac98" [label=""];
  "sha256:18d14db7a133536d34a9e125c49d31e8b70d53e178d17c7918dcb2a9e01cac98" -> "sha256:06e9b8279f51008fa669a0d223f9d408cfc7d2d55c2b67bd6825a46c918e8fc2" [label=""];
  "sha256:06e9b8279f51008fa669a0d223f9d408cfc7d2d55c2b67bd6825a46c918e8fc2" -> "sha256:80704a470915e33a781c569a596e8ae77ed8aaa6d3772b284cee481cbccbc36b" [label=""];
  "sha256:80704a470915e33a781c569a596e8ae77ed8aaa6d3772b284cee481cbccbc36b" -> "sha256:f580ad4a1e77d6bc0803ee5fab574d7252ba3cd4f4dc3325b1e590a544fc83d9" [label=""];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" -> "sha256:f580ad4a1e77d6bc0803ee5fab574d7252ba3cd4f4dc3325b1e590a544fc83d9" [label=""];
  "sha256:f580ad4a1e77d6bc0803ee5fab574d7252ba3cd4f4dc3325b1e590a544fc83d9" -> "sha256:09699dbf9b2801b1ca8756d09b49ee5e64db0507406e4f0fb1aec249ae1ebbba" [label=""];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" -> "sha256:09699dbf9b2801b1ca8756d09b49ee5e64db0507406e4f0fb1aec249ae1ebbba" [label=""];
  "sha256:09699dbf9b2801b1ca8756d09b49ee5e64db0507406e4f0fb1aec249ae1ebbba" -> "sha256:1b28fc77cd2dfd14c4e917c900b32c51955915f54b7e19fd9d906b995d9b2b30" [label=""];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" -> "sha256:1b28fc77cd2dfd14c4e917c900b32c51955915f54b7e19fd9d906b995d9b2b30" [label=""];
  "sha256:1b28fc77cd2dfd14c4e917c900b32c51955915f54b7e19fd9d906b995d9b2b30" -> "sha256:a9698781480435632a9dc496a77262a86b963e08484cf80a20c0c5816288affa" [label=""];
  "sha256:a9698781480435632a9dc496a77262a86b963e08484cf80a20c0c5816288affa" -> "sha256:113efd6e4ec08579b520b07457ca615ad17b2f0635b686a6be1e4341940e3ed4" [label=""];
  "sha256:113efd6e4ec08579b520b07457ca615ad17b2f0635b686a6be1e4341940e3ed4" -> "sha256:0ba7f64f304d2665437e5c250639fbb062f403adf202ae6d8ce2470c55ade8ea" [label=""];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" -> "sha256:0ba7f64f304d2665437e5c250639fbb062f403adf202ae6d8ce2470c55ade8ea" [label=""];
  "sha256:0ba7f64f304d2665437e5c250639fbb062f403adf202ae6d8ce2470c55ade8ea" -> "sha256:cfabd21abdae776024498335a6000fb92132546e0310671af15cee1ce5987213" [label=""];
  "sha256:cfabd21abdae776024498335a6000fb92132546e0310671af15cee1ce5987213" -> "sha256:2a3c7621d59211dff8f737945b98a17afd5d768cfac41c0a24ced4b8d3bce0da" [label=""];
  "sha256:24256173ba5c5f25ed47b85d860c7c331569fff07d27f80a008f00b9cbe97d84" -> "sha256:8d1ec79ddc0e9fff6140b30e784279192f2b38c6e20caf21af281d21354f1179" [label=""];
  "sha256:2a3c7621d59211dff8f737945b98a17afd5d768cfac41c0a24ced4b8d3bce0da" -> "sha256:8d1ec79ddc0e9fff6140b30e784279192f2b38c6e20caf21af281d21354f1179" [label=""];
  "sha256:8d1ec79ddc0e9fff6140b30e784279192f2b38c6e20caf21af281d21354f1179" -> "sha256:a13aff4fa9d863f6f526434d1c515ea7b7e2d176f0dc7c43410c35028e8dbd37" [label=""];
  "sha256:a13aff4fa9d863f6f526434d1c515ea7b7e2d176f0dc7c43410c35028e8dbd37" -> "sha256:8bec8cf57dd45340d6fc6e9f7954529a4abb5f192385ebc1b30d21633ddc8f9b" [label=""];
  "sha256:9c72132f10210a5f86b62cd08fd726a266935c73e9ad0e323e879eb61b49d0a6" -> "sha256:8bec8cf57dd45340d6fc6e9f7954529a4abb5f192385ebc1b30d21633ddc8f9b" [label=""];
  "sha256:8bec8cf57dd45340d6fc6e9f7954529a4abb5f192385ebc1b30d21633ddc8f9b" -> "sha256:826cb0eefa90498e5abda1665921c2d0706348928f6c9e8622ba9c97f70e429a" [label=""];
}

