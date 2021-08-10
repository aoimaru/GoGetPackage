[app/sources/267311477.Dockerfile]
digraph {
  "sha256:bbc2678baafaaa88e2c312b7150f1c3c8069a714892e4d2780eeed768637fbe7" [label="docker-image://docker.io/library/amazonlinux:latest" shape="ellipse"];
  "sha256:60e7aab4f11030e78e7e5f2c9b2b6196cf0fc5d48de94df8d7d449f04f923103" [label="local://context" shape="ellipse"];
  "sha256:acd6b44baec9e374403b227f8ac8838cdae427c3be13d80eb4c85a7c7dc01446" [label="copy{src=/install/*, dest=/install/}" shape="note"];
  "sha256:4282bf8ca3e71b3c5156500118c06e199fac3555c5bfca674eb786f41a148b9a" [label="/bin/sh -c yum install -y git wget sudo" shape="box"];
  "sha256:b3f607aa4948fcf6c82edc0a2dbd28d32f4fe8a316591f6f49ea977711cbd61b" [label="/bin/sh -c chmod -R 755 install" shape="box"];
  "sha256:b74c3ec0637e2c6359e2b22cd4fc33233d8bdc245ae7c35e20dd3b0929685f47" [label="/bin/sh -c /install/install_opencv.sh" shape="box"];
  "sha256:9763fe88e6b5854193173cf7f256c67316d9b991718a4a2d7ce9c2d0a404ae07" [label="/bin/sh -c /install/install_openblas.sh" shape="box"];
  "sha256:b469a0cf29c04b8a6d628824577d605b96c4a864ce1acbcf5dd8edc96118d8af" [label="/bin/sh -c /install/install_python2.sh" shape="box"];
  "sha256:d4a3f8dd632900d36dd3003fc1ecb8be2129aecb4a46cece88628e7a21392b5a" [label="/bin/sh -c /install/install_python3.sh" shape="box"];
  "sha256:5ec318311a223a0500494c4c031d3a1a5f157fc08579baaf43edc3dcd518551a" [label="/bin/sh -c /install/install_testdeps.sh" shape="box"];
  "sha256:43ae656590db847a0a7153691b422561770aee13ab5f9f8af774622b81614687" [label="/bin/sh -c /install/install_julia.sh" shape="box"];
  "sha256:a4adb5787ac12c4037d577c09f770cc0e1c7d13f9a8576db5280a9bd608ff9f5" [label="/bin/sh -c /install/install_maven.sh" shape="box"];
  "sha256:44abf1aeb5f859314b2fb784a46b350b24b5ce8f5e4b7cd49ef2e069d062034b" [label="/bin/sh -c /install/install_library.sh" shape="box"];
  "sha256:11772ce464dd670990f2a4240415ddcaa1fb6efba5945c164ffb2b53f01e1eb1" [label="sha256:11772ce464dd670990f2a4240415ddcaa1fb6efba5945c164ffb2b53f01e1eb1" shape="plaintext"];
  "sha256:bbc2678baafaaa88e2c312b7150f1c3c8069a714892e4d2780eeed768637fbe7" -> "sha256:acd6b44baec9e374403b227f8ac8838cdae427c3be13d80eb4c85a7c7dc01446" [label=""];
  "sha256:60e7aab4f11030e78e7e5f2c9b2b6196cf0fc5d48de94df8d7d449f04f923103" -> "sha256:acd6b44baec9e374403b227f8ac8838cdae427c3be13d80eb4c85a7c7dc01446" [label=""];
  "sha256:acd6b44baec9e374403b227f8ac8838cdae427c3be13d80eb4c85a7c7dc01446" -> "sha256:4282bf8ca3e71b3c5156500118c06e199fac3555c5bfca674eb786f41a148b9a" [label=""];
  "sha256:4282bf8ca3e71b3c5156500118c06e199fac3555c5bfca674eb786f41a148b9a" -> "sha256:b3f607aa4948fcf6c82edc0a2dbd28d32f4fe8a316591f6f49ea977711cbd61b" [label=""];
  "sha256:b3f607aa4948fcf6c82edc0a2dbd28d32f4fe8a316591f6f49ea977711cbd61b" -> "sha256:b74c3ec0637e2c6359e2b22cd4fc33233d8bdc245ae7c35e20dd3b0929685f47" [label=""];
  "sha256:b74c3ec0637e2c6359e2b22cd4fc33233d8bdc245ae7c35e20dd3b0929685f47" -> "sha256:9763fe88e6b5854193173cf7f256c67316d9b991718a4a2d7ce9c2d0a404ae07" [label=""];
  "sha256:9763fe88e6b5854193173cf7f256c67316d9b991718a4a2d7ce9c2d0a404ae07" -> "sha256:b469a0cf29c04b8a6d628824577d605b96c4a864ce1acbcf5dd8edc96118d8af" [label=""];
  "sha256:b469a0cf29c04b8a6d628824577d605b96c4a864ce1acbcf5dd8edc96118d8af" -> "sha256:d4a3f8dd632900d36dd3003fc1ecb8be2129aecb4a46cece88628e7a21392b5a" [label=""];
  "sha256:d4a3f8dd632900d36dd3003fc1ecb8be2129aecb4a46cece88628e7a21392b5a" -> "sha256:5ec318311a223a0500494c4c031d3a1a5f157fc08579baaf43edc3dcd518551a" [label=""];
  "sha256:5ec318311a223a0500494c4c031d3a1a5f157fc08579baaf43edc3dcd518551a" -> "sha256:43ae656590db847a0a7153691b422561770aee13ab5f9f8af774622b81614687" [label=""];
  "sha256:43ae656590db847a0a7153691b422561770aee13ab5f9f8af774622b81614687" -> "sha256:a4adb5787ac12c4037d577c09f770cc0e1c7d13f9a8576db5280a9bd608ff9f5" [label=""];
  "sha256:a4adb5787ac12c4037d577c09f770cc0e1c7d13f9a8576db5280a9bd608ff9f5" -> "sha256:44abf1aeb5f859314b2fb784a46b350b24b5ce8f5e4b7cd49ef2e069d062034b" [label=""];
  "sha256:44abf1aeb5f859314b2fb784a46b350b24b5ce8f5e4b7cd49ef2e069d062034b" -> "sha256:11772ce464dd670990f2a4240415ddcaa1fb6efba5945c164ffb2b53f01e1eb1" [label=""];
}

