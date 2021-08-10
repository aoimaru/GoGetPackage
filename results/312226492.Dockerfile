[app/sources/312226492.Dockerfile]
digraph {
  "sha256:6c1eb2012987db09826a6cd591bbc542b316224e9cbecb4e49cb90b917c6ecea" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:004ef4c1ad7334ead66bcac65bb956f269ad643aee785750c498ff477d149729" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:4bbeae1dd91fbc4f5ab02843965358144659b8bfafb736d9fb2c6ab7449f4aea" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:2526ce667ebd83c714d905de82db341db21fa811498fb10adaeb99beec975cd8" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:dc23f323b859ca8e9b7b2e63ddd64e3d728aaae9f16acfa85c72d377d272ecfc" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:6a604108fd637196c7ea25804cc4bfcf3f58a6652e39f54d162a7b77af14bc7b" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:0c3974a162cb69bd079df6d5fa65173c976a92703025b4f42cbb6ce76641749d" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:158fcbd376c0adbd91e50a0bd11f651f94b3d0921f4a9d21f4fc7582f8374879" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:21613ee2327534ab6526816e2ab1731329a9dc450e3d91bb7e3811eababc5ac7" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:e1a187dfc5927cd07ced09812ae40b1e2f1b3adfeaf7654678b076bd2c5b9cf9" [label="/bin/sh -c /install/install_mpi.sh" shape="box"];
  "sha256:ac41da89c4966425d4ff7e0e19f8d88a19a4d778dc33f2d3c96d950ae21a2284" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:8a96d08473c6fbb2819946aed94677172018f0acf857ca59d393900a191ca46e" [label="sha256:8a96d08473c6fbb2819946aed94677172018f0acf857ca59d393900a191ca46e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:004ef4c1ad7334ead66bcac65bb956f269ad643aee785750c498ff477d149729" [label=""];
  "sha256:6c1eb2012987db09826a6cd591bbc542b316224e9cbecb4e49cb90b917c6ecea" -> "sha256:004ef4c1ad7334ead66bcac65bb956f269ad643aee785750c498ff477d149729" [label=""];
  "sha256:004ef4c1ad7334ead66bcac65bb956f269ad643aee785750c498ff477d149729" -> "sha256:4bbeae1dd91fbc4f5ab02843965358144659b8bfafb736d9fb2c6ab7449f4aea" [label=""];
  "sha256:4bbeae1dd91fbc4f5ab02843965358144659b8bfafb736d9fb2c6ab7449f4aea" -> "sha256:2526ce667ebd83c714d905de82db341db21fa811498fb10adaeb99beec975cd8" [label=""];
  "sha256:2526ce667ebd83c714d905de82db341db21fa811498fb10adaeb99beec975cd8" -> "sha256:dc23f323b859ca8e9b7b2e63ddd64e3d728aaae9f16acfa85c72d377d272ecfc" [label=""];
  "sha256:dc23f323b859ca8e9b7b2e63ddd64e3d728aaae9f16acfa85c72d377d272ecfc" -> "sha256:6a604108fd637196c7ea25804cc4bfcf3f58a6652e39f54d162a7b77af14bc7b" [label=""];
  "sha256:6a604108fd637196c7ea25804cc4bfcf3f58a6652e39f54d162a7b77af14bc7b" -> "sha256:0c3974a162cb69bd079df6d5fa65173c976a92703025b4f42cbb6ce76641749d" [label=""];
  "sha256:0c3974a162cb69bd079df6d5fa65173c976a92703025b4f42cbb6ce76641749d" -> "sha256:158fcbd376c0adbd91e50a0bd11f651f94b3d0921f4a9d21f4fc7582f8374879" [label=""];
  "sha256:158fcbd376c0adbd91e50a0bd11f651f94b3d0921f4a9d21f4fc7582f8374879" -> "sha256:21613ee2327534ab6526816e2ab1731329a9dc450e3d91bb7e3811eababc5ac7" [label=""];
  "sha256:21613ee2327534ab6526816e2ab1731329a9dc450e3d91bb7e3811eababc5ac7" -> "sha256:e1a187dfc5927cd07ced09812ae40b1e2f1b3adfeaf7654678b076bd2c5b9cf9" [label=""];
  "sha256:e1a187dfc5927cd07ced09812ae40b1e2f1b3adfeaf7654678b076bd2c5b9cf9" -> "sha256:ac41da89c4966425d4ff7e0e19f8d88a19a4d778dc33f2d3c96d950ae21a2284" [label=""];
  "sha256:6c1eb2012987db09826a6cd591bbc542b316224e9cbecb4e49cb90b917c6ecea" -> "sha256:ac41da89c4966425d4ff7e0e19f8d88a19a4d778dc33f2d3c96d950ae21a2284" [label=""];
  "sha256:ac41da89c4966425d4ff7e0e19f8d88a19a4d778dc33f2d3c96d950ae21a2284" -> "sha256:8a96d08473c6fbb2819946aed94677172018f0acf857ca59d393900a191ca46e" [label=""];
}

