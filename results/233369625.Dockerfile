[app/sources/233369625.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4b6c19192ad5f1243f640092324de70494dd23a231f99889ddf9aafb16b17035" [label="local://context" shape="ellipse"];
  "sha256:e75341161b5bb52671236b3011443fb0239d25489e323ba025ad5150464f3689" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:fd078cba4529992413957e4ce856fbf19f58161efccd5fbee76ab529e3def084" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:19ca8c0065d49457da61c80f7990b2de5fdc5348306211121aae21b039225950" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:e9bb6b861919f03b25e9b6d967719e08f1f10cce866092652ad300136b2be4ab" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:da2acba14159028a4d81085f9ccf523415947a6df8f58592802b7aa477372fae" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:e58cbbb43d9eed9d6e880e8cd42008ca619ecb2f105f93bc7c3730f034620478" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:cd40631154857d1abb0858a549575f05e770815e3add849db54c16008c433df8" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:16be6b0a1819821084715f81aab009ec5168864c1ed0d7e77e966b20d146b19d" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:359d2e4e726ae7c60e41a95708e5759ef466902c8d142e7005418479e7635454" [label="/bin/sh -c /install/install_hadoop.sh" shape="box"];
  "sha256:afaad6812d50f2bf68773cdc9e7e34559f9893d358235193fbc986a3880b32b0" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:36a530283ec75d591c88283dd45a71fdfbc055e10efa68aa4dde614d52862413" [label="sha256:36a530283ec75d591c88283dd45a71fdfbc055e10efa68aa4dde614d52862413" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e75341161b5bb52671236b3011443fb0239d25489e323ba025ad5150464f3689" [label=""];
  "sha256:4b6c19192ad5f1243f640092324de70494dd23a231f99889ddf9aafb16b17035" -> "sha256:e75341161b5bb52671236b3011443fb0239d25489e323ba025ad5150464f3689" [label=""];
  "sha256:e75341161b5bb52671236b3011443fb0239d25489e323ba025ad5150464f3689" -> "sha256:fd078cba4529992413957e4ce856fbf19f58161efccd5fbee76ab529e3def084" [label=""];
  "sha256:fd078cba4529992413957e4ce856fbf19f58161efccd5fbee76ab529e3def084" -> "sha256:19ca8c0065d49457da61c80f7990b2de5fdc5348306211121aae21b039225950" [label=""];
  "sha256:19ca8c0065d49457da61c80f7990b2de5fdc5348306211121aae21b039225950" -> "sha256:e9bb6b861919f03b25e9b6d967719e08f1f10cce866092652ad300136b2be4ab" [label=""];
  "sha256:e9bb6b861919f03b25e9b6d967719e08f1f10cce866092652ad300136b2be4ab" -> "sha256:da2acba14159028a4d81085f9ccf523415947a6df8f58592802b7aa477372fae" [label=""];
  "sha256:da2acba14159028a4d81085f9ccf523415947a6df8f58592802b7aa477372fae" -> "sha256:e58cbbb43d9eed9d6e880e8cd42008ca619ecb2f105f93bc7c3730f034620478" [label=""];
  "sha256:e58cbbb43d9eed9d6e880e8cd42008ca619ecb2f105f93bc7c3730f034620478" -> "sha256:cd40631154857d1abb0858a549575f05e770815e3add849db54c16008c433df8" [label=""];
  "sha256:cd40631154857d1abb0858a549575f05e770815e3add849db54c16008c433df8" -> "sha256:16be6b0a1819821084715f81aab009ec5168864c1ed0d7e77e966b20d146b19d" [label=""];
  "sha256:16be6b0a1819821084715f81aab009ec5168864c1ed0d7e77e966b20d146b19d" -> "sha256:359d2e4e726ae7c60e41a95708e5759ef466902c8d142e7005418479e7635454" [label=""];
  "sha256:359d2e4e726ae7c60e41a95708e5759ef466902c8d142e7005418479e7635454" -> "sha256:afaad6812d50f2bf68773cdc9e7e34559f9893d358235193fbc986a3880b32b0" [label=""];
  "sha256:4b6c19192ad5f1243f640092324de70494dd23a231f99889ddf9aafb16b17035" -> "sha256:afaad6812d50f2bf68773cdc9e7e34559f9893d358235193fbc986a3880b32b0" [label=""];
  "sha256:afaad6812d50f2bf68773cdc9e7e34559f9893d358235193fbc986a3880b32b0" -> "sha256:36a530283ec75d591c88283dd45a71fdfbc055e10efa68aa4dde614d52862413" [label=""];
}

