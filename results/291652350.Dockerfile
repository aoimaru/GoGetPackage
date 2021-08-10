[app/sources/291652350.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7cb0f6c3e9732a776ac6b0dbe11a2797feda8bfcd4006e868f4bbe3c6a88fcf0" [label="local://context" shape="ellipse"];
  "sha256:5c45e1e20c21cdb407f7775441ae2c2800ba4079a97bc9dff6cf655ee67a5c5f" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:69a5f648155bcae5ac86f4648709925895fcd5854124d46b71525791997fc9b2" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:cbbd8b36cefe209ffb7933a04014d7940d1209b7c555ee7df2df710be5f7979e" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:c79be0cc627fcb28a870a43d47643d1c4138ec0d056d07c026ed1115e824bf5c" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:053d136bfdc2d2144a46e340fa6c18c1b917ea7bd47908dbfbb0c8a64fc431c0" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:020ffa65753ad365fa620961bfbab749e1a625d65b55b806230d97702b11b28d" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:eedb2ba92c5f8deea42c843d56314bb0b2c6462bcbc0635d60f4b252d089f655" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:da84b920f5859e4574371603d2df9bb875a15616ff28a7b60633789f41b82fa2" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:90ae1c62980766f1302f2b9a679b0388566234879acd23f31cdc49de221d6a9b" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:b19fb320987fd4b5cb5b59ccf7eb40b3f8f4a84ce08c4601d644e575eb331164" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:95610e2421e97f4aa00443b18b7762de2435f0feb7d2c7fc4c2790f74eccefca" [label="/bin/sh -c /install/install_pi_toolchain.sh" shape="box"];
  "sha256:026079a2a212210a62dfc51a17989e39c5727abf866a3335ca0f099bb7061035" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:03a63083cc3345efdb07d16e095673020ed55f7a352a3b6da07a81302a9759d9" [label="sha256:03a63083cc3345efdb07d16e095673020ed55f7a352a3b6da07a81302a9759d9" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5c45e1e20c21cdb407f7775441ae2c2800ba4079a97bc9dff6cf655ee67a5c5f" [label=""];
  "sha256:7cb0f6c3e9732a776ac6b0dbe11a2797feda8bfcd4006e868f4bbe3c6a88fcf0" -> "sha256:5c45e1e20c21cdb407f7775441ae2c2800ba4079a97bc9dff6cf655ee67a5c5f" [label=""];
  "sha256:5c45e1e20c21cdb407f7775441ae2c2800ba4079a97bc9dff6cf655ee67a5c5f" -> "sha256:69a5f648155bcae5ac86f4648709925895fcd5854124d46b71525791997fc9b2" [label=""];
  "sha256:69a5f648155bcae5ac86f4648709925895fcd5854124d46b71525791997fc9b2" -> "sha256:cbbd8b36cefe209ffb7933a04014d7940d1209b7c555ee7df2df710be5f7979e" [label=""];
  "sha256:cbbd8b36cefe209ffb7933a04014d7940d1209b7c555ee7df2df710be5f7979e" -> "sha256:c79be0cc627fcb28a870a43d47643d1c4138ec0d056d07c026ed1115e824bf5c" [label=""];
  "sha256:c79be0cc627fcb28a870a43d47643d1c4138ec0d056d07c026ed1115e824bf5c" -> "sha256:053d136bfdc2d2144a46e340fa6c18c1b917ea7bd47908dbfbb0c8a64fc431c0" [label=""];
  "sha256:053d136bfdc2d2144a46e340fa6c18c1b917ea7bd47908dbfbb0c8a64fc431c0" -> "sha256:020ffa65753ad365fa620961bfbab749e1a625d65b55b806230d97702b11b28d" [label=""];
  "sha256:020ffa65753ad365fa620961bfbab749e1a625d65b55b806230d97702b11b28d" -> "sha256:eedb2ba92c5f8deea42c843d56314bb0b2c6462bcbc0635d60f4b252d089f655" [label=""];
  "sha256:eedb2ba92c5f8deea42c843d56314bb0b2c6462bcbc0635d60f4b252d089f655" -> "sha256:da84b920f5859e4574371603d2df9bb875a15616ff28a7b60633789f41b82fa2" [label=""];
  "sha256:da84b920f5859e4574371603d2df9bb875a15616ff28a7b60633789f41b82fa2" -> "sha256:90ae1c62980766f1302f2b9a679b0388566234879acd23f31cdc49de221d6a9b" [label=""];
  "sha256:90ae1c62980766f1302f2b9a679b0388566234879acd23f31cdc49de221d6a9b" -> "sha256:b19fb320987fd4b5cb5b59ccf7eb40b3f8f4a84ce08c4601d644e575eb331164" [label=""];
  "sha256:b19fb320987fd4b5cb5b59ccf7eb40b3f8f4a84ce08c4601d644e575eb331164" -> "sha256:95610e2421e97f4aa00443b18b7762de2435f0feb7d2c7fc4c2790f74eccefca" [label=""];
  "sha256:95610e2421e97f4aa00443b18b7762de2435f0feb7d2c7fc4c2790f74eccefca" -> "sha256:026079a2a212210a62dfc51a17989e39c5727abf866a3335ca0f099bb7061035" [label=""];
  "sha256:7cb0f6c3e9732a776ac6b0dbe11a2797feda8bfcd4006e868f4bbe3c6a88fcf0" -> "sha256:026079a2a212210a62dfc51a17989e39c5727abf866a3335ca0f099bb7061035" [label=""];
  "sha256:026079a2a212210a62dfc51a17989e39c5727abf866a3335ca0f099bb7061035" -> "sha256:03a63083cc3345efdb07d16e095673020ed55f7a352a3b6da07a81302a9759d9" [label=""];
}

