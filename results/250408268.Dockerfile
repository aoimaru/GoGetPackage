[app/sources/250408268.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:db5b70281ac9ed0577bf8db892b6c8f97867722380545a7ba1c55cf271a5e753" [label="local://context" shape="ellipse"];
  "sha256:9e5df878a4b547a15a7aa5513fd1986894e15849dbebea3a66dae20040c40285" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:645561d509c74553f496e56fee8cb6a9cadfb98900554e699b9dbbc8b5f4a11d" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:3fd125c4159046d2b60af32cea858a775699f1cc6fbd018846abe6df0e591a1d" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" | tee -a /etc/apt/sources.list" shape="box"];
  "sha256:598906cd9bc0afe766f21d66ee9dfdd25bb3adc7b07e2e923bea7c6c6ac5093d" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:10c9163041637a6be778198859806ead955a1594f3f835ba1ea4b092a4892f22" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:45917b3150d72561e25fd585eef6a51e763ea7a327861d7e136e221263de1b60" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:63bded6d4c3027e2e9d70d295923b1e6a10d7975e654f8f638d6ce6dfc4bda45" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:932709b6a20950e96f87e671acda9572c36c9b5ee628caa85c4acd8093dbc4b6" [label="sha256:932709b6a20950e96f87e671acda9572c36c9b5ee628caa85c4acd8093dbc4b6" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9e5df878a4b547a15a7aa5513fd1986894e15849dbebea3a66dae20040c40285" [label=""];
  "sha256:db5b70281ac9ed0577bf8db892b6c8f97867722380545a7ba1c55cf271a5e753" -> "sha256:9e5df878a4b547a15a7aa5513fd1986894e15849dbebea3a66dae20040c40285" [label=""];
  "sha256:9e5df878a4b547a15a7aa5513fd1986894e15849dbebea3a66dae20040c40285" -> "sha256:645561d509c74553f496e56fee8cb6a9cadfb98900554e699b9dbbc8b5f4a11d" [label=""];
  "sha256:645561d509c74553f496e56fee8cb6a9cadfb98900554e699b9dbbc8b5f4a11d" -> "sha256:3fd125c4159046d2b60af32cea858a775699f1cc6fbd018846abe6df0e591a1d" [label=""];
  "sha256:3fd125c4159046d2b60af32cea858a775699f1cc6fbd018846abe6df0e591a1d" -> "sha256:598906cd9bc0afe766f21d66ee9dfdd25bb3adc7b07e2e923bea7c6c6ac5093d" [label=""];
  "sha256:598906cd9bc0afe766f21d66ee9dfdd25bb3adc7b07e2e923bea7c6c6ac5093d" -> "sha256:10c9163041637a6be778198859806ead955a1594f3f835ba1ea4b092a4892f22" [label=""];
  "sha256:10c9163041637a6be778198859806ead955a1594f3f835ba1ea4b092a4892f22" -> "sha256:45917b3150d72561e25fd585eef6a51e763ea7a327861d7e136e221263de1b60" [label=""];
  "sha256:45917b3150d72561e25fd585eef6a51e763ea7a327861d7e136e221263de1b60" -> "sha256:63bded6d4c3027e2e9d70d295923b1e6a10d7975e654f8f638d6ce6dfc4bda45" [label=""];
  "sha256:db5b70281ac9ed0577bf8db892b6c8f97867722380545a7ba1c55cf271a5e753" -> "sha256:63bded6d4c3027e2e9d70d295923b1e6a10d7975e654f8f638d6ce6dfc4bda45" [label=""];
  "sha256:63bded6d4c3027e2e9d70d295923b1e6a10d7975e654f8f638d6ce6dfc4bda45" -> "sha256:932709b6a20950e96f87e671acda9572c36c9b5ee628caa85c4acd8093dbc4b6" [label=""];
}

