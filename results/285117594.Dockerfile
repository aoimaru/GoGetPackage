[app/sources/285117594.Dockerfile]
digraph {
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d228ff3bef3cd818c3bc53e88117d7eb4ba4adb2b04565676d5a62e7cb9a3022" [label="copy{src=/scripts/cross-apt-packages.sh, dest=/scripts/}" shape="note"];
  "sha256:d9025a8721cb6e0ae1a306ab79742fcad876bf61117c809a508c84f2a3ccdb8b" [label="/bin/sh -c sh /scripts/cross-apt-packages.sh" shape="box"];
  "sha256:aea0d779ec333d2b3fd8de28d3d621a7d518282c8d7807967c62095e70c906eb" [label="copy{src=/scripts/make3.sh, dest=/scripts/}" shape="note"];
  "sha256:576e0124f90599324e3066f07c88fd2b641d0cef9940969a8999430a62c6a36a" [label="/bin/sh -c sh /scripts/make3.sh" shape="box"];
  "sha256:c1921e07605cc75ce46c371af5aad5ca1424f9903209b08a4ca9b17fc9fc722d" [label="copy{src=/scripts/crosstool-ng.sh, dest=/scripts/}" shape="note"];
  "sha256:643419ee49a607e3065a7c3db0baacd531f842a7a4cc7fe0b16586bec1824d60" [label="/bin/sh -c sh /scripts/crosstool-ng.sh" shape="box"];
  "sha256:bb8cbebbfe69e03d20d37c8f26000283d1f0d3165c0ae48fbba9602a6abb4cf9" [label="copy{src=/scripts/rustbuild-setup.sh, dest=/scripts/}" shape="note"];
  "sha256:55916826b04bbb94d0adc54dcb718596a9bc00d19f2b7dd04efa583d043481ce" [label="/bin/sh -c sh /scripts/rustbuild-setup.sh" shape="box"];
  "sha256:a21f2399fffcf872d19713637dcaaed2dbf29a9e4a713f5d55ff6a3a0e3f738b" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:0fc5a16ab19ae2552eb6df5e75b711d548f855e914dae5d7cb490a9ea90502a8" [label="copy{src=/dist-powerpc-linux/patches, dest=/tmp/patches/}" shape="note"];
  "sha256:8ac028d06dfc7bc797c26cb9739a8bb5f877cce760360b3489ce7ace3d1519c3" [label="copy{src=/dist-powerpc-linux/powerpc-linux-gnu.config, dest=/tmp/},copy{src=/dist-powerpc-linux/build-powerpc-toolchain.sh, dest=/tmp/}" shape="note"];
  "sha256:4587194a26e81e32dc874cc866f410176f13bdaf65d9cec7f33e453c343bd830" [label="/bin/sh -c ./build-powerpc-toolchain.sh" shape="box"];
  "sha256:a19109704e9ca37bfc9aba42fecdbd44f0a53e96c4379568db1fb9b72c37926a" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:c098e3a2b47f8f3c641f149696d9adaf8dea35c2620aa75d73669968aa517f5c" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:23a60704715a7f1f18562a2628a93c2cf4e5f7a9d0d4d0a806d7ed2a942b8324" [label="sha256:23a60704715a7f1f18562a2628a93c2cf4e5f7a9d0d4d0a806d7ed2a942b8324" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d228ff3bef3cd818c3bc53e88117d7eb4ba4adb2b04565676d5a62e7cb9a3022" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:d228ff3bef3cd818c3bc53e88117d7eb4ba4adb2b04565676d5a62e7cb9a3022" [label=""];
  "sha256:d228ff3bef3cd818c3bc53e88117d7eb4ba4adb2b04565676d5a62e7cb9a3022" -> "sha256:d9025a8721cb6e0ae1a306ab79742fcad876bf61117c809a508c84f2a3ccdb8b" [label=""];
  "sha256:d9025a8721cb6e0ae1a306ab79742fcad876bf61117c809a508c84f2a3ccdb8b" -> "sha256:aea0d779ec333d2b3fd8de28d3d621a7d518282c8d7807967c62095e70c906eb" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:aea0d779ec333d2b3fd8de28d3d621a7d518282c8d7807967c62095e70c906eb" [label=""];
  "sha256:aea0d779ec333d2b3fd8de28d3d621a7d518282c8d7807967c62095e70c906eb" -> "sha256:576e0124f90599324e3066f07c88fd2b641d0cef9940969a8999430a62c6a36a" [label=""];
  "sha256:576e0124f90599324e3066f07c88fd2b641d0cef9940969a8999430a62c6a36a" -> "sha256:c1921e07605cc75ce46c371af5aad5ca1424f9903209b08a4ca9b17fc9fc722d" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:c1921e07605cc75ce46c371af5aad5ca1424f9903209b08a4ca9b17fc9fc722d" [label=""];
  "sha256:c1921e07605cc75ce46c371af5aad5ca1424f9903209b08a4ca9b17fc9fc722d" -> "sha256:643419ee49a607e3065a7c3db0baacd531f842a7a4cc7fe0b16586bec1824d60" [label=""];
  "sha256:643419ee49a607e3065a7c3db0baacd531f842a7a4cc7fe0b16586bec1824d60" -> "sha256:bb8cbebbfe69e03d20d37c8f26000283d1f0d3165c0ae48fbba9602a6abb4cf9" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:bb8cbebbfe69e03d20d37c8f26000283d1f0d3165c0ae48fbba9602a6abb4cf9" [label=""];
  "sha256:bb8cbebbfe69e03d20d37c8f26000283d1f0d3165c0ae48fbba9602a6abb4cf9" -> "sha256:55916826b04bbb94d0adc54dcb718596a9bc00d19f2b7dd04efa583d043481ce" [label=""];
  "sha256:55916826b04bbb94d0adc54dcb718596a9bc00d19f2b7dd04efa583d043481ce" -> "sha256:a21f2399fffcf872d19713637dcaaed2dbf29a9e4a713f5d55ff6a3a0e3f738b" [label=""];
  "sha256:a21f2399fffcf872d19713637dcaaed2dbf29a9e4a713f5d55ff6a3a0e3f738b" -> "sha256:0fc5a16ab19ae2552eb6df5e75b711d548f855e914dae5d7cb490a9ea90502a8" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:0fc5a16ab19ae2552eb6df5e75b711d548f855e914dae5d7cb490a9ea90502a8" [label=""];
  "sha256:0fc5a16ab19ae2552eb6df5e75b711d548f855e914dae5d7cb490a9ea90502a8" -> "sha256:8ac028d06dfc7bc797c26cb9739a8bb5f877cce760360b3489ce7ace3d1519c3" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:8ac028d06dfc7bc797c26cb9739a8bb5f877cce760360b3489ce7ace3d1519c3" [label=""];
  "sha256:8ac028d06dfc7bc797c26cb9739a8bb5f877cce760360b3489ce7ace3d1519c3" -> "sha256:4587194a26e81e32dc874cc866f410176f13bdaf65d9cec7f33e453c343bd830" [label=""];
  "sha256:4587194a26e81e32dc874cc866f410176f13bdaf65d9cec7f33e453c343bd830" -> "sha256:a19109704e9ca37bfc9aba42fecdbd44f0a53e96c4379568db1fb9b72c37926a" [label=""];
  "sha256:8eae90a7d6d22dea2789c5cfc1f055f18e514354e3f0ad6681f2049c2da2d7b1" -> "sha256:a19109704e9ca37bfc9aba42fecdbd44f0a53e96c4379568db1fb9b72c37926a" [label=""];
  "sha256:a19109704e9ca37bfc9aba42fecdbd44f0a53e96c4379568db1fb9b72c37926a" -> "sha256:c098e3a2b47f8f3c641f149696d9adaf8dea35c2620aa75d73669968aa517f5c" [label=""];
  "sha256:c098e3a2b47f8f3c641f149696d9adaf8dea35c2620aa75d73669968aa517f5c" -> "sha256:23a60704715a7f1f18562a2628a93c2cf4e5f7a9d0d4d0a806d7ed2a942b8324" [label=""];
}

