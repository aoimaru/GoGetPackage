[app/sources/180354715.Dockerfile]
digraph {
  "sha256:95ae9e97f40b4221e46d68af61ffb7e1f86ff0b9da30629317b1572212530a89" [label="docker-image://docker.io/library/centos:5.11" shape="ellipse"];
  "sha256:f5798cd63589f27bdd05090fa7b0bb74518e29c7083922a0b41e5e763b675b89" [label="local://context" shape="ellipse"];
  "sha256:6a988f483fa3fc5bf5054a3f0f4e0de2a28c5d110315f0f7630fda143fbd3253" [label="copy{src=/redis-2.8.19-1.el5.remi.x86_64.rpm, dest=/redis-server.rpm}" shape="note"];
  "sha256:4a896ca918fbff4221f04ea7e8f6c64a5816799c1db1df283b9007ec7ddaf38d" [label="copy{src=/jemalloc-3.6.0-2.el5.x86_64.rpm, dest=/jemalloc.rpm}" shape="note"];
  "sha256:de31cd44efeadedcb0b723522fff788620740d459294ff1197374265a69cdf4e" [label="/bin/sh -c rpm -i jemalloc.rpm redis-server.rpm" shape="box"];
  "sha256:f3c6b0e289b60410d3e79a385709a54cdeb1600ac4513c5c47f10fc4f1bf2738" [label="sha256:f3c6b0e289b60410d3e79a385709a54cdeb1600ac4513c5c47f10fc4f1bf2738" shape="plaintext"];
  "sha256:95ae9e97f40b4221e46d68af61ffb7e1f86ff0b9da30629317b1572212530a89" -> "sha256:6a988f483fa3fc5bf5054a3f0f4e0de2a28c5d110315f0f7630fda143fbd3253" [label=""];
  "sha256:f5798cd63589f27bdd05090fa7b0bb74518e29c7083922a0b41e5e763b675b89" -> "sha256:6a988f483fa3fc5bf5054a3f0f4e0de2a28c5d110315f0f7630fda143fbd3253" [label=""];
  "sha256:6a988f483fa3fc5bf5054a3f0f4e0de2a28c5d110315f0f7630fda143fbd3253" -> "sha256:4a896ca918fbff4221f04ea7e8f6c64a5816799c1db1df283b9007ec7ddaf38d" [label=""];
  "sha256:f5798cd63589f27bdd05090fa7b0bb74518e29c7083922a0b41e5e763b675b89" -> "sha256:4a896ca918fbff4221f04ea7e8f6c64a5816799c1db1df283b9007ec7ddaf38d" [label=""];
  "sha256:4a896ca918fbff4221f04ea7e8f6c64a5816799c1db1df283b9007ec7ddaf38d" -> "sha256:de31cd44efeadedcb0b723522fff788620740d459294ff1197374265a69cdf4e" [label=""];
  "sha256:de31cd44efeadedcb0b723522fff788620740d459294ff1197374265a69cdf4e" -> "sha256:f3c6b0e289b60410d3e79a385709a54cdeb1600ac4513c5c47f10fc4f1bf2738" [label=""];
}

