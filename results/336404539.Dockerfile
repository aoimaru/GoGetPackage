[app/sources/336404539.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:13bac78aee2f0cdc28a56643bbf87b39193e1ead8d0a08d6aabd3255264fb88a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:786dea93cb3b4f16facf59bf6eb3fc5f2186d293ece968770a1e4310b7c9ad38" [label="/bin/sh -c apt-get install -y --no-install-recommends build-essential" shape="box"];
  "sha256:18735c03d3627e7fe8a6ca6ddf6e16729a8a24c553ba2dc1d8648b977b61ae5f" [label="/bin/sh -c apt-get install -y --no-install-recommends cmake" shape="box"];
  "sha256:10c051395cf7d6ed3f99cba7d392c22f9b0ec5dc677c8089064794ac1127787b" [label="/bin/sh -c apt-get install -y --no-install-recommends git" shape="box"];
  "sha256:a5d91c2d836d092bfce137ec6f19d4c75efce9ec25db26972a959d5baa033825" [label="/bin/sh -c apt-get install -y --no-install-recommends libgoogle-glog-dev" shape="box"];
  "sha256:319f6f4763713f258281b96d890da0b42407196995a880d8bd037a93e8dcd400" [label="/bin/sh -c apt-get install -y --no-install-recommends libgtest-dev" shape="box"];
  "sha256:d46cf869c471539f14c2e4cea5442cef77a7b83a045b36f2ade8cb3966c61a52" [label="/bin/sh -c apt-get install -y --no-install-recommends automake" shape="box"];
  "sha256:70db97d7945d1923625cded080bafed8e8fc6af6183e84e3b36e1276d7d2d07e" [label="/bin/sh -c apt-get install -y --no-install-recommends libgmp3-dev" shape="box"];
  "sha256:055dd91fc7cdb416ac5319e575ffc5e2a24bd1a2d723409e514efb0420d58995" [label="/bin/sh -c apt-get install -y --no-install-recommends libtool" shape="box"];
  "sha256:4d9701835dd16aaec21a7579eccd4cc7c381c29790a830d9b2b83465c9a19239" [label="/bin/sh -c apt-get install -y --no-install-recommends ssh" shape="box"];
  "sha256:c9c0ce9dde3d809ec485470d750acd2b6b0f2e155376dcb080c4e7cc0a8c5485" [label="/bin/sh -c apt-get install -y --no-install-recommends libyaml-dev" shape="box"];
  "sha256:c45a5eb6ea72d2bdae1c4b6e37c3d5454262f0718ee1bb5c07dd7ae8fd218677" [label="/bin/sh -c apt-get install -y --no-install-recommends realpath" shape="box"];
  "sha256:47d2a4bb8d6ce0784a36d1c3af5c8d622332058666c03ee20fc2d4a84a6c2368" [label="/bin/sh -c apt-get install -y --no-install-recommends wget" shape="box"];
  "sha256:1eb838cbc73f346e39857bddb7f8eb74f7e5a858a5499c6f53711d5697cb3fd5" [label="/bin/sh -c apt-get install -y --no-install-recommends valgrind" shape="box"];
  "sha256:07f537db0bfe1b75d43eb47d7996781df2796c15516d22e5c50a6c6df31c2816" [label="/bin/sh -c apt-get install -y --no-install-recommends software-properties-common" shape="box"];
  "sha256:52f639a6cfacc97c3d0af544344c736d7f27fe15b765765cd5d707fd01c89c07" [label="/bin/sh -c apt-get install -y --no-install-recommends subversion" shape="box"];
  "sha256:655fde4dcc9be5310980b79975eb987d7c40fb0a67fce5d1d31b956de9ba0111" [label="/bin/sh -c apt-get install -y --no-install-recommends unzip" shape="box"];
  "sha256:994a583a4e0c6df82a5080198e3001a5e6c705e2d3842ed35499616b02ae7274" [label="sha256:994a583a4e0c6df82a5080198e3001a5e6c705e2d3842ed35499616b02ae7274" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:13bac78aee2f0cdc28a56643bbf87b39193e1ead8d0a08d6aabd3255264fb88a" [label=""];
  "sha256:13bac78aee2f0cdc28a56643bbf87b39193e1ead8d0a08d6aabd3255264fb88a" -> "sha256:786dea93cb3b4f16facf59bf6eb3fc5f2186d293ece968770a1e4310b7c9ad38" [label=""];
  "sha256:786dea93cb3b4f16facf59bf6eb3fc5f2186d293ece968770a1e4310b7c9ad38" -> "sha256:18735c03d3627e7fe8a6ca6ddf6e16729a8a24c553ba2dc1d8648b977b61ae5f" [label=""];
  "sha256:18735c03d3627e7fe8a6ca6ddf6e16729a8a24c553ba2dc1d8648b977b61ae5f" -> "sha256:10c051395cf7d6ed3f99cba7d392c22f9b0ec5dc677c8089064794ac1127787b" [label=""];
  "sha256:10c051395cf7d6ed3f99cba7d392c22f9b0ec5dc677c8089064794ac1127787b" -> "sha256:a5d91c2d836d092bfce137ec6f19d4c75efce9ec25db26972a959d5baa033825" [label=""];
  "sha256:a5d91c2d836d092bfce137ec6f19d4c75efce9ec25db26972a959d5baa033825" -> "sha256:319f6f4763713f258281b96d890da0b42407196995a880d8bd037a93e8dcd400" [label=""];
  "sha256:319f6f4763713f258281b96d890da0b42407196995a880d8bd037a93e8dcd400" -> "sha256:d46cf869c471539f14c2e4cea5442cef77a7b83a045b36f2ade8cb3966c61a52" [label=""];
  "sha256:d46cf869c471539f14c2e4cea5442cef77a7b83a045b36f2ade8cb3966c61a52" -> "sha256:70db97d7945d1923625cded080bafed8e8fc6af6183e84e3b36e1276d7d2d07e" [label=""];
  "sha256:70db97d7945d1923625cded080bafed8e8fc6af6183e84e3b36e1276d7d2d07e" -> "sha256:055dd91fc7cdb416ac5319e575ffc5e2a24bd1a2d723409e514efb0420d58995" [label=""];
  "sha256:055dd91fc7cdb416ac5319e575ffc5e2a24bd1a2d723409e514efb0420d58995" -> "sha256:4d9701835dd16aaec21a7579eccd4cc7c381c29790a830d9b2b83465c9a19239" [label=""];
  "sha256:4d9701835dd16aaec21a7579eccd4cc7c381c29790a830d9b2b83465c9a19239" -> "sha256:c9c0ce9dde3d809ec485470d750acd2b6b0f2e155376dcb080c4e7cc0a8c5485" [label=""];
  "sha256:c9c0ce9dde3d809ec485470d750acd2b6b0f2e155376dcb080c4e7cc0a8c5485" -> "sha256:c45a5eb6ea72d2bdae1c4b6e37c3d5454262f0718ee1bb5c07dd7ae8fd218677" [label=""];
  "sha256:c45a5eb6ea72d2bdae1c4b6e37c3d5454262f0718ee1bb5c07dd7ae8fd218677" -> "sha256:47d2a4bb8d6ce0784a36d1c3af5c8d622332058666c03ee20fc2d4a84a6c2368" [label=""];
  "sha256:47d2a4bb8d6ce0784a36d1c3af5c8d622332058666c03ee20fc2d4a84a6c2368" -> "sha256:1eb838cbc73f346e39857bddb7f8eb74f7e5a858a5499c6f53711d5697cb3fd5" [label=""];
  "sha256:1eb838cbc73f346e39857bddb7f8eb74f7e5a858a5499c6f53711d5697cb3fd5" -> "sha256:07f537db0bfe1b75d43eb47d7996781df2796c15516d22e5c50a6c6df31c2816" [label=""];
  "sha256:07f537db0bfe1b75d43eb47d7996781df2796c15516d22e5c50a6c6df31c2816" -> "sha256:52f639a6cfacc97c3d0af544344c736d7f27fe15b765765cd5d707fd01c89c07" [label=""];
  "sha256:52f639a6cfacc97c3d0af544344c736d7f27fe15b765765cd5d707fd01c89c07" -> "sha256:655fde4dcc9be5310980b79975eb987d7c40fb0a67fce5d1d31b956de9ba0111" [label=""];
  "sha256:655fde4dcc9be5310980b79975eb987d7c40fb0a67fce5d1d31b956de9ba0111" -> "sha256:994a583a4e0c6df82a5080198e3001a5e6c705e2d3842ed35499616b02ae7274" [label=""];
}

