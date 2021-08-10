[app/sources/245981488.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:015148650e78e724ccf4c34e449504f22116010d73c3df78fc6a901f5ee390c0" [label="local://context" shape="ellipse"];
  "sha256:9d28aee1aaa6d7244ed116452dff3fec385318050c2c33447af6a92be8257d3d" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:c2ca7966b48692efe6fd5de0241144d1f62898e2f4e30f218d33d1f9d31df7e1" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:5da35cf1f11f0517922110bff71f6488e889d7f1c8af4d7f2c43df2786aa39a5" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:2991ac124c67f17abdddd97c52676deb4d3490ffa264e9d3d8cbc8b7d468b70f" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:aa9d423c6bcbf1f3d062a92c1dcabaafa44fb768554059c1ac0d00cc1c48bb87" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:be79bce7da907d85d2e42ef7d8b9d71853352eb785e1cb9d32e6b8541b6a6db3" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:553f023950146603af03bf1aadda47176db1ae803a24d4044be296b6d5a2ee87" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:b9b52bd8fae62747c2b4b419eeb9e36ba6f46c31eb7f08b673f6ed2fb0e855a8" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:3ba197d6352587659886de0c2f525522fec7a8b36d6a7d5efdc071847e079630" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:ef6c43a159d734c325c20d0ea62e4a16979c0a9c13abbd6f400450a543568448" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:2452563c61165e58241ca917db8117bfcc588546b5a79e2761ecf8411116ee76" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:29fc067fb8f273df83626bb69aa9439b4ae6c5e691f3beb36ffd3b48e8adaee3" [label="sha256:29fc067fb8f273df83626bb69aa9439b4ae6c5e691f3beb36ffd3b48e8adaee3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9d28aee1aaa6d7244ed116452dff3fec385318050c2c33447af6a92be8257d3d" [label=""];
  "sha256:015148650e78e724ccf4c34e449504f22116010d73c3df78fc6a901f5ee390c0" -> "sha256:9d28aee1aaa6d7244ed116452dff3fec385318050c2c33447af6a92be8257d3d" [label=""];
  "sha256:9d28aee1aaa6d7244ed116452dff3fec385318050c2c33447af6a92be8257d3d" -> "sha256:c2ca7966b48692efe6fd5de0241144d1f62898e2f4e30f218d33d1f9d31df7e1" [label=""];
  "sha256:c2ca7966b48692efe6fd5de0241144d1f62898e2f4e30f218d33d1f9d31df7e1" -> "sha256:5da35cf1f11f0517922110bff71f6488e889d7f1c8af4d7f2c43df2786aa39a5" [label=""];
  "sha256:5da35cf1f11f0517922110bff71f6488e889d7f1c8af4d7f2c43df2786aa39a5" -> "sha256:2991ac124c67f17abdddd97c52676deb4d3490ffa264e9d3d8cbc8b7d468b70f" [label=""];
  "sha256:2991ac124c67f17abdddd97c52676deb4d3490ffa264e9d3d8cbc8b7d468b70f" -> "sha256:aa9d423c6bcbf1f3d062a92c1dcabaafa44fb768554059c1ac0d00cc1c48bb87" [label=""];
  "sha256:aa9d423c6bcbf1f3d062a92c1dcabaafa44fb768554059c1ac0d00cc1c48bb87" -> "sha256:be79bce7da907d85d2e42ef7d8b9d71853352eb785e1cb9d32e6b8541b6a6db3" [label=""];
  "sha256:be79bce7da907d85d2e42ef7d8b9d71853352eb785e1cb9d32e6b8541b6a6db3" -> "sha256:553f023950146603af03bf1aadda47176db1ae803a24d4044be296b6d5a2ee87" [label=""];
  "sha256:553f023950146603af03bf1aadda47176db1ae803a24d4044be296b6d5a2ee87" -> "sha256:b9b52bd8fae62747c2b4b419eeb9e36ba6f46c31eb7f08b673f6ed2fb0e855a8" [label=""];
  "sha256:b9b52bd8fae62747c2b4b419eeb9e36ba6f46c31eb7f08b673f6ed2fb0e855a8" -> "sha256:3ba197d6352587659886de0c2f525522fec7a8b36d6a7d5efdc071847e079630" [label=""];
  "sha256:3ba197d6352587659886de0c2f525522fec7a8b36d6a7d5efdc071847e079630" -> "sha256:ef6c43a159d734c325c20d0ea62e4a16979c0a9c13abbd6f400450a543568448" [label=""];
  "sha256:ef6c43a159d734c325c20d0ea62e4a16979c0a9c13abbd6f400450a543568448" -> "sha256:2452563c61165e58241ca917db8117bfcc588546b5a79e2761ecf8411116ee76" [label=""];
  "sha256:015148650e78e724ccf4c34e449504f22116010d73c3df78fc6a901f5ee390c0" -> "sha256:2452563c61165e58241ca917db8117bfcc588546b5a79e2761ecf8411116ee76" [label=""];
  "sha256:2452563c61165e58241ca917db8117bfcc588546b5a79e2761ecf8411116ee76" -> "sha256:29fc067fb8f273df83626bb69aa9439b4ae6c5e691f3beb36ffd3b48e8adaee3" [label=""];
}

