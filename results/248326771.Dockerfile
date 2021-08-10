[app/sources/248326771.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" [label="/bin/sh -c apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449" shape="box"];
  "sha256:9b70ce4b4eb39449212a05119349bb835f70fc8cf0f676be1cb49943916b666d" [label="/bin/sh -c apt-get update -y     && apt-get install -y software-properties-common     && add-apt-repository \"deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main\"     && apt-get update -y     && apt-get install -y hhvm     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2de6bd701887a3134fa4e23ecc72482c8cc3bec81c9b94187110e8e844bedcba" [label="/bin/sh -c mkdir -p /var/www/laravel" shape="box"];
  "sha256:ba7787423a1fd571d806c231d2582eb33629c610ebba5fc4ba0e319647c05ed8" [label="local://context" shape="ellipse"];
  "sha256:bb2f5296150c6e3b67a786ef0b707401a619063a939cea1ffdbbb0d49a94e8f4" [label="copy{src=/server.ini, dest=/etc/hhvm/server.ini}" shape="note"];
  "sha256:16685ffe3fbdc5a9ab384c4890efe1acefa4710a78dbf8df423c30f3a3e6e730" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:1463a82af6fe69548e1041a0b57aaec8f4ac1f0548906a71c47968c947052fd8" [label="mkdir{path=/var/www/laravel}" shape="note"];
  "sha256:854eb55d2aaf279dfad1dfdc86ec372a9f63a0782ac5fd405866cd3f727064ec" [label="sha256:854eb55d2aaf279dfad1dfdc86ec372a9f63a0782ac5fd405866cd3f727064ec" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" [label=""];
  "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" -> "sha256:9b70ce4b4eb39449212a05119349bb835f70fc8cf0f676be1cb49943916b666d" [label=""];
  "sha256:9b70ce4b4eb39449212a05119349bb835f70fc8cf0f676be1cb49943916b666d" -> "sha256:2de6bd701887a3134fa4e23ecc72482c8cc3bec81c9b94187110e8e844bedcba" [label=""];
  "sha256:2de6bd701887a3134fa4e23ecc72482c8cc3bec81c9b94187110e8e844bedcba" -> "sha256:bb2f5296150c6e3b67a786ef0b707401a619063a939cea1ffdbbb0d49a94e8f4" [label=""];
  "sha256:ba7787423a1fd571d806c231d2582eb33629c610ebba5fc4ba0e319647c05ed8" -> "sha256:bb2f5296150c6e3b67a786ef0b707401a619063a939cea1ffdbbb0d49a94e8f4" [label=""];
  "sha256:bb2f5296150c6e3b67a786ef0b707401a619063a939cea1ffdbbb0d49a94e8f4" -> "sha256:16685ffe3fbdc5a9ab384c4890efe1acefa4710a78dbf8df423c30f3a3e6e730" [label=""];
  "sha256:16685ffe3fbdc5a9ab384c4890efe1acefa4710a78dbf8df423c30f3a3e6e730" -> "sha256:1463a82af6fe69548e1041a0b57aaec8f4ac1f0548906a71c47968c947052fd8" [label=""];
  "sha256:1463a82af6fe69548e1041a0b57aaec8f4ac1f0548906a71c47968c947052fd8" -> "sha256:854eb55d2aaf279dfad1dfdc86ec372a9f63a0782ac5fd405866cd3f727064ec" [label=""];
}

