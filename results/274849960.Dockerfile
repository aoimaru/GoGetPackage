[app/sources/274849960.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:40cf67171337e2fc06a9c16ce7fe5e10527c00ea528c8a507327078c157edbe1" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common python-software-properties" shape="box"];
  "sha256:6089c63143a19ce6d6d1190653ce4d63b9347f4bc451b11eb5a964facad35fae" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java" shape="box"];
  "sha256:e21a101dc8b678b1a39503199030a95c963d30c02c4a37349c0290f9233836e7" [label="/bin/sh -c apt-get update && apt-get -y install   autoconf   build-essential   curl   libtool   make   openjdk-8-jdk   vim" shape="box"];
  "sha256:c4782caaa67a73d8d75ec66700e7c3894de263e388e315c26cd2749da401bca0" [label="/bin/sh -c echo \"deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8\" > /etc/apt/sources.list.d/bazel.list" shape="box"];
  "sha256:ecf167f3ee54209746caaf2a75d065a0f97f3f9d88d1df1ae4a07611588e49e4" [label="/bin/sh -c curl https://bazel.build/bazel-release.pub.gpg | apt-key add -" shape="box"];
  "sha256:dff11ac89754e7cab74d86127869551a0e43c8edeff75eb6cc88f154ea65a1fa" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:505337212df6e4ad71bb6257f03f3699f1d6322014759056abb9dd53003adc22" [label="/bin/sh -c apt-get -y install bazel" shape="box"];
  "sha256:8958cf9b2fde2be8b00956d809e337c8c3a92f4e181306a306a747bb9d84ef05" [label="/bin/sh -c curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/0.4.4/bazel-0.4.4-installer-linux-x86_64.sh" shape="box"];
  "sha256:185ccb661f3cc98948a573ba916a7f4b16cf019fb5dd94eeb988c2f304145045" [label="/bin/sh -c chmod +x ./bazel-0.4.4-installer-linux-x86_64.sh" shape="box"];
  "sha256:ccf5af220de2281acd7aa8d169bcf3db149ff60811df4f26237c39c584971957" [label="/bin/sh -c ./bazel-0.4.4-installer-linux-x86_64.sh" shape="box"];
  "sha256:9e2629cfe97d6b9a1f21e99859baa1a1edf62adb4acbd6b5dcb8ee1f514ff88b" [label="/bin/sh -c mkdir -p /var/local/jenkins" shape="box"];
  "sha256:7117c34c2f999bf4c4df30fa065a50a36dfe8b09dc06f31e7a68282b2d19dd03" [label="sha256:7117c34c2f999bf4c4df30fa065a50a36dfe8b09dc06f31e7a68282b2d19dd03" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:40cf67171337e2fc06a9c16ce7fe5e10527c00ea528c8a507327078c157edbe1" [label=""];
  "sha256:40cf67171337e2fc06a9c16ce7fe5e10527c00ea528c8a507327078c157edbe1" -> "sha256:6089c63143a19ce6d6d1190653ce4d63b9347f4bc451b11eb5a964facad35fae" [label=""];
  "sha256:6089c63143a19ce6d6d1190653ce4d63b9347f4bc451b11eb5a964facad35fae" -> "sha256:e21a101dc8b678b1a39503199030a95c963d30c02c4a37349c0290f9233836e7" [label=""];
  "sha256:e21a101dc8b678b1a39503199030a95c963d30c02c4a37349c0290f9233836e7" -> "sha256:c4782caaa67a73d8d75ec66700e7c3894de263e388e315c26cd2749da401bca0" [label=""];
  "sha256:c4782caaa67a73d8d75ec66700e7c3894de263e388e315c26cd2749da401bca0" -> "sha256:ecf167f3ee54209746caaf2a75d065a0f97f3f9d88d1df1ae4a07611588e49e4" [label=""];
  "sha256:ecf167f3ee54209746caaf2a75d065a0f97f3f9d88d1df1ae4a07611588e49e4" -> "sha256:dff11ac89754e7cab74d86127869551a0e43c8edeff75eb6cc88f154ea65a1fa" [label=""];
  "sha256:dff11ac89754e7cab74d86127869551a0e43c8edeff75eb6cc88f154ea65a1fa" -> "sha256:505337212df6e4ad71bb6257f03f3699f1d6322014759056abb9dd53003adc22" [label=""];
  "sha256:505337212df6e4ad71bb6257f03f3699f1d6322014759056abb9dd53003adc22" -> "sha256:8958cf9b2fde2be8b00956d809e337c8c3a92f4e181306a306a747bb9d84ef05" [label=""];
  "sha256:8958cf9b2fde2be8b00956d809e337c8c3a92f4e181306a306a747bb9d84ef05" -> "sha256:185ccb661f3cc98948a573ba916a7f4b16cf019fb5dd94eeb988c2f304145045" [label=""];
  "sha256:185ccb661f3cc98948a573ba916a7f4b16cf019fb5dd94eeb988c2f304145045" -> "sha256:ccf5af220de2281acd7aa8d169bcf3db149ff60811df4f26237c39c584971957" [label=""];
  "sha256:ccf5af220de2281acd7aa8d169bcf3db149ff60811df4f26237c39c584971957" -> "sha256:9e2629cfe97d6b9a1f21e99859baa1a1edf62adb4acbd6b5dcb8ee1f514ff88b" [label=""];
  "sha256:9e2629cfe97d6b9a1f21e99859baa1a1edf62adb4acbd6b5dcb8ee1f514ff88b" -> "sha256:7117c34c2f999bf4c4df30fa065a50a36dfe8b09dc06f31e7a68282b2d19dd03" [label=""];
}

