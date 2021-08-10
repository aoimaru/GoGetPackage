[app/sources/247473986.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:3333b9dc7295fb7ba1051e123d92436f8629baaa64811f532dbc6307cb28abcd" [label="local://context" shape="ellipse"];
  "sha256:727a94c0d34d3121e4cfa0bf3e644a173b31d00641db348cc888ddf13968ad99" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:8e2cd36687795fd43cb391811202ddbc5a849d8cf488a8fbac549c61318edb84" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:e5ad05bb088ed8d2e26e2caa97e3bf557f984cda17d55fd5480b9d7d9e35577a" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:8c32df71e079afee23fd31c727e1a5ba70a7847fb10964bc11e3c2fe41cb1c41" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:c16e1992230cb56e137ab2985f16c7091753b22eafac51f7affc8be4bc62b5d1" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:8c96f9bd3eec21c35830b9c5d05575e8372b3dd6424a2a671f13315bf2630c24" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:f7a3ed67dbc2296e1eeafbc117dd4dd69f699642e7186f72e33fa546689e67e1" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:2f948b3908e97c91733a0074541ed21f4ec8e3c7ae2643fa5c53a90c9bc6e31a" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:777a6ea05f5a666abc047843442a9db25b4d3b0cf524d4280a5d49ff22527bd4" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:82ee69e59baf3e619c8d49affb914f894d11ae05e6373004de21c26ff0cd9735" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:a4b4c0a0f287623ef4230f745f5d316088bf7c8e968146ea16c43f33808a9a1b" [label="/bin/sh -c /install/install_pi_toolchain.sh" shape="box"];
  "sha256:b7d283d8dfb2d766b721a2da86a52fe4a42d41033d289ec72e6a092f0ce62cba" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:a1e7dafb64a1287b8d965c9a13a839029d4c17ac0256344daea4d73602e4cfb9" [label="sha256:a1e7dafb64a1287b8d965c9a13a839029d4c17ac0256344daea4d73602e4cfb9" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:727a94c0d34d3121e4cfa0bf3e644a173b31d00641db348cc888ddf13968ad99" [label=""];
  "sha256:3333b9dc7295fb7ba1051e123d92436f8629baaa64811f532dbc6307cb28abcd" -> "sha256:727a94c0d34d3121e4cfa0bf3e644a173b31d00641db348cc888ddf13968ad99" [label=""];
  "sha256:727a94c0d34d3121e4cfa0bf3e644a173b31d00641db348cc888ddf13968ad99" -> "sha256:8e2cd36687795fd43cb391811202ddbc5a849d8cf488a8fbac549c61318edb84" [label=""];
  "sha256:8e2cd36687795fd43cb391811202ddbc5a849d8cf488a8fbac549c61318edb84" -> "sha256:e5ad05bb088ed8d2e26e2caa97e3bf557f984cda17d55fd5480b9d7d9e35577a" [label=""];
  "sha256:e5ad05bb088ed8d2e26e2caa97e3bf557f984cda17d55fd5480b9d7d9e35577a" -> "sha256:8c32df71e079afee23fd31c727e1a5ba70a7847fb10964bc11e3c2fe41cb1c41" [label=""];
  "sha256:8c32df71e079afee23fd31c727e1a5ba70a7847fb10964bc11e3c2fe41cb1c41" -> "sha256:c16e1992230cb56e137ab2985f16c7091753b22eafac51f7affc8be4bc62b5d1" [label=""];
  "sha256:c16e1992230cb56e137ab2985f16c7091753b22eafac51f7affc8be4bc62b5d1" -> "sha256:8c96f9bd3eec21c35830b9c5d05575e8372b3dd6424a2a671f13315bf2630c24" [label=""];
  "sha256:8c96f9bd3eec21c35830b9c5d05575e8372b3dd6424a2a671f13315bf2630c24" -> "sha256:f7a3ed67dbc2296e1eeafbc117dd4dd69f699642e7186f72e33fa546689e67e1" [label=""];
  "sha256:f7a3ed67dbc2296e1eeafbc117dd4dd69f699642e7186f72e33fa546689e67e1" -> "sha256:2f948b3908e97c91733a0074541ed21f4ec8e3c7ae2643fa5c53a90c9bc6e31a" [label=""];
  "sha256:2f948b3908e97c91733a0074541ed21f4ec8e3c7ae2643fa5c53a90c9bc6e31a" -> "sha256:777a6ea05f5a666abc047843442a9db25b4d3b0cf524d4280a5d49ff22527bd4" [label=""];
  "sha256:777a6ea05f5a666abc047843442a9db25b4d3b0cf524d4280a5d49ff22527bd4" -> "sha256:82ee69e59baf3e619c8d49affb914f894d11ae05e6373004de21c26ff0cd9735" [label=""];
  "sha256:82ee69e59baf3e619c8d49affb914f894d11ae05e6373004de21c26ff0cd9735" -> "sha256:a4b4c0a0f287623ef4230f745f5d316088bf7c8e968146ea16c43f33808a9a1b" [label=""];
  "sha256:a4b4c0a0f287623ef4230f745f5d316088bf7c8e968146ea16c43f33808a9a1b" -> "sha256:b7d283d8dfb2d766b721a2da86a52fe4a42d41033d289ec72e6a092f0ce62cba" [label=""];
  "sha256:3333b9dc7295fb7ba1051e123d92436f8629baaa64811f532dbc6307cb28abcd" -> "sha256:b7d283d8dfb2d766b721a2da86a52fe4a42d41033d289ec72e6a092f0ce62cba" [label=""];
  "sha256:b7d283d8dfb2d766b721a2da86a52fe4a42d41033d289ec72e6a092f0ce62cba" -> "sha256:a1e7dafb64a1287b8d965c9a13a839029d4c17ac0256344daea4d73602e4cfb9" [label=""];
}

