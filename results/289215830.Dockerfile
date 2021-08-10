[app/sources/289215830.Dockerfile]
digraph {
  "sha256:7588c11cafd62c8e07f1daf976243ebdcb543fe4f99d86757a35d666bd245050" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:b3b83caf77ebfb9f40ef8ea0b2506dfea34d940ce83722336828b702ca1f1082" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:ec6775e7766e0b7e96f647541c62f53eb750f3253732350c3f61a0b1faad2551" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     net-tools     ssh     sudo     locales     git     mysql-client     maven" shape="box"];
  "sha256:9434e9174080130f6d0a7563f075e114eb46f68bc533c21831cfcdb8db141988" [label="/bin/sh -c locale-gen zh_CN.UTF-8" shape="box"];
  "sha256:a5eb8da852b8b992a31167e697a3f1583532eb908e37d647f392d78c90e1ce6f" [label="copy{src=/jdk-8u151-linux-x64.tar.gz, dest=/opt/java}" shape="note"];
  "sha256:ce1c0ac4104346229cc29d002191b53962b0f5a4eef2f8dcc3a0588784840601" [label="sha256:ce1c0ac4104346229cc29d002191b53962b0f5a4eef2f8dcc3a0588784840601" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:b3b83caf77ebfb9f40ef8ea0b2506dfea34d940ce83722336828b702ca1f1082" [label=""];
  "sha256:7588c11cafd62c8e07f1daf976243ebdcb543fe4f99d86757a35d666bd245050" -> "sha256:b3b83caf77ebfb9f40ef8ea0b2506dfea34d940ce83722336828b702ca1f1082" [label=""];
  "sha256:b3b83caf77ebfb9f40ef8ea0b2506dfea34d940ce83722336828b702ca1f1082" -> "sha256:ec6775e7766e0b7e96f647541c62f53eb750f3253732350c3f61a0b1faad2551" [label=""];
  "sha256:ec6775e7766e0b7e96f647541c62f53eb750f3253732350c3f61a0b1faad2551" -> "sha256:9434e9174080130f6d0a7563f075e114eb46f68bc533c21831cfcdb8db141988" [label=""];
  "sha256:9434e9174080130f6d0a7563f075e114eb46f68bc533c21831cfcdb8db141988" -> "sha256:a5eb8da852b8b992a31167e697a3f1583532eb908e37d647f392d78c90e1ce6f" [label=""];
  "sha256:7588c11cafd62c8e07f1daf976243ebdcb543fe4f99d86757a35d666bd245050" -> "sha256:a5eb8da852b8b992a31167e697a3f1583532eb908e37d647f392d78c90e1ce6f" [label=""];
  "sha256:a5eb8da852b8b992a31167e697a3f1583532eb908e37d647f392d78c90e1ce6f" -> "sha256:ce1c0ac4104346229cc29d002191b53962b0f5a4eef2f8dcc3a0588784840601" [label=""];
}

