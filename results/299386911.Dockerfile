[app/sources/299386911.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:006895dbd751477dba7b45a4b05308c658e0805da2dc4ae97b399c2391352682" [label="local://context" shape="ellipse"];
  "sha256:d0e34167a32ac515c3959f5b9086084f9852393da55a5040a1363ef0a023680f" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:58ba6d18e5e956c44b6858dcf5eabebe7b2ecb5826be3473742aed55f8b19711" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:b6372b89df25102361a024593c7954b1e5d2f19cc374e7ad2336b05c3a0f8cc2" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:45a88b236a9c095a129f6baa3e9d912a303c8d0f3ffa3ce5de1bea9db64c52c6" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:a3aea76f8708db67163afb8dd59c2003d8f8b892372957c13a9bf4ae8839eed2" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:f6bc75fcf31192e3cdb2f3ac79ec14285d5f5cc95334dd5e9f83c3a5426616bc" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:c9b01aff87fc3c634066314873db7acf0ab2c4ca8d6a95d48d6f5514ad1bc79c" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:39adceb0abc56a281367d014c2e03c64a181eb0f00003d034fb25df4a2ff640f" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:2b0cef3a4ce71603deb490b03da6f1b3962aad17306f328fd6296bc8d775f4bf" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:1f3719a13ec88a21c3b9fd06ed1c2cb2df85e66d6dc9aed08c587751fdfb5be6" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:7a8236003b1ab7b696fbc8acf6ad1db51afb472df0ebefb0595e8ee3e710f0a2" [label="/bin/sh -c /install/install_pi_python3_toolchain.sh" shape="box"];
  "sha256:d7a0f4cbb7b28c9298a548a568959755deb32a709d26430506a7e01365f0005e" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:c64a623d99b82af46441cc4e53fc7d3ca3555c043631a2fb92d3526f3323a6d4" [label="sha256:c64a623d99b82af46441cc4e53fc7d3ca3555c043631a2fb92d3526f3323a6d4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d0e34167a32ac515c3959f5b9086084f9852393da55a5040a1363ef0a023680f" [label=""];
  "sha256:006895dbd751477dba7b45a4b05308c658e0805da2dc4ae97b399c2391352682" -> "sha256:d0e34167a32ac515c3959f5b9086084f9852393da55a5040a1363ef0a023680f" [label=""];
  "sha256:d0e34167a32ac515c3959f5b9086084f9852393da55a5040a1363ef0a023680f" -> "sha256:58ba6d18e5e956c44b6858dcf5eabebe7b2ecb5826be3473742aed55f8b19711" [label=""];
  "sha256:58ba6d18e5e956c44b6858dcf5eabebe7b2ecb5826be3473742aed55f8b19711" -> "sha256:b6372b89df25102361a024593c7954b1e5d2f19cc374e7ad2336b05c3a0f8cc2" [label=""];
  "sha256:b6372b89df25102361a024593c7954b1e5d2f19cc374e7ad2336b05c3a0f8cc2" -> "sha256:45a88b236a9c095a129f6baa3e9d912a303c8d0f3ffa3ce5de1bea9db64c52c6" [label=""];
  "sha256:45a88b236a9c095a129f6baa3e9d912a303c8d0f3ffa3ce5de1bea9db64c52c6" -> "sha256:a3aea76f8708db67163afb8dd59c2003d8f8b892372957c13a9bf4ae8839eed2" [label=""];
  "sha256:a3aea76f8708db67163afb8dd59c2003d8f8b892372957c13a9bf4ae8839eed2" -> "sha256:f6bc75fcf31192e3cdb2f3ac79ec14285d5f5cc95334dd5e9f83c3a5426616bc" [label=""];
  "sha256:f6bc75fcf31192e3cdb2f3ac79ec14285d5f5cc95334dd5e9f83c3a5426616bc" -> "sha256:c9b01aff87fc3c634066314873db7acf0ab2c4ca8d6a95d48d6f5514ad1bc79c" [label=""];
  "sha256:c9b01aff87fc3c634066314873db7acf0ab2c4ca8d6a95d48d6f5514ad1bc79c" -> "sha256:39adceb0abc56a281367d014c2e03c64a181eb0f00003d034fb25df4a2ff640f" [label=""];
  "sha256:39adceb0abc56a281367d014c2e03c64a181eb0f00003d034fb25df4a2ff640f" -> "sha256:2b0cef3a4ce71603deb490b03da6f1b3962aad17306f328fd6296bc8d775f4bf" [label=""];
  "sha256:2b0cef3a4ce71603deb490b03da6f1b3962aad17306f328fd6296bc8d775f4bf" -> "sha256:1f3719a13ec88a21c3b9fd06ed1c2cb2df85e66d6dc9aed08c587751fdfb5be6" [label=""];
  "sha256:1f3719a13ec88a21c3b9fd06ed1c2cb2df85e66d6dc9aed08c587751fdfb5be6" -> "sha256:7a8236003b1ab7b696fbc8acf6ad1db51afb472df0ebefb0595e8ee3e710f0a2" [label=""];
  "sha256:7a8236003b1ab7b696fbc8acf6ad1db51afb472df0ebefb0595e8ee3e710f0a2" -> "sha256:d7a0f4cbb7b28c9298a548a568959755deb32a709d26430506a7e01365f0005e" [label=""];
  "sha256:006895dbd751477dba7b45a4b05308c658e0805da2dc4ae97b399c2391352682" -> "sha256:d7a0f4cbb7b28c9298a548a568959755deb32a709d26430506a7e01365f0005e" [label=""];
  "sha256:d7a0f4cbb7b28c9298a548a568959755deb32a709d26430506a7e01365f0005e" -> "sha256:c64a623d99b82af46441cc4e53fc7d3ca3555c043631a2fb92d3526f3323a6d4" [label=""];
}

