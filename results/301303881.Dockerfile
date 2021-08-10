[app/sources/301303881.Dockerfile]
digraph {
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9f46112a946964adff5fe397c343c06e48398c4525936b4f1be1254aa4e53830" [label="copy{src=/install/ubuntu_install_core.sh, dest=/install/}" shape="note"];
  "sha256:b7fdad90d4c08be7b949ab5550c8aa63b6570ebe4e2936d95280f22ab6f56906" [label="/bin/sh -c /install/ubuntu_install_core.sh" shape="box"];
  "sha256:3219ef45d97b8b6b457a234bc6a2542a750878e86a4f9ea5beedf905497947ff" [label="copy{src=/install/ubuntu_install_python.sh, dest=/install/}" shape="note"];
  "sha256:4d0cc21c4c8a4c535f23fef26684101e8563235a09bebef2e3343c7a548819e4" [label="/bin/sh -c /install/ubuntu_install_python.sh" shape="box"];
  "sha256:561ea21c89118202490739516f73f88a504be902867391ef641c479872849568" [label="copy{src=/install/ubuntu_install_scala.sh, dest=/install/}" shape="note"];
  "sha256:f4ef89074e072437f2afaf8139ed8bf58f406a8f1a651dac2abdff6e58fa3c37" [label="/bin/sh -c /install/ubuntu_install_scala.sh" shape="box"];
  "sha256:46da6ea4041b9dc3042668b53911217124b4f82c9ec6131155a38bfe485cc3b7" [label="copy{src=/install/ubuntu_install_r.sh, dest=/install/}" shape="note"];
  "sha256:161358e0c0d21f0d1df72c473aef2e01587bd6ca95b9b645cfad11213b15c055" [label="/bin/sh -c /install/ubuntu_install_r.sh" shape="box"];
  "sha256:152d3132d9a8533e459f067783368917b05dbb307e3ee215f08b33ab01213917" [label="copy{src=/install/ubuntu_install_perl.sh, dest=/install/}" shape="note"];
  "sha256:6ef971d429e7d51880bf5b4a93f9baf2d6173f71583e2219fe9db263c13f67e9" [label="/bin/sh -c /install/ubuntu_install_perl.sh" shape="box"];
  "sha256:a138f2703afc1c8ed8893121e3da911d98910d404888d8fa6eb9b76119111bba" [label="sha256:a138f2703afc1c8ed8893121e3da911d98910d404888d8fa6eb9b76119111bba" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9f46112a946964adff5fe397c343c06e48398c4525936b4f1be1254aa4e53830" [label=""];
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" -> "sha256:9f46112a946964adff5fe397c343c06e48398c4525936b4f1be1254aa4e53830" [label=""];
  "sha256:9f46112a946964adff5fe397c343c06e48398c4525936b4f1be1254aa4e53830" -> "sha256:b7fdad90d4c08be7b949ab5550c8aa63b6570ebe4e2936d95280f22ab6f56906" [label=""];
  "sha256:b7fdad90d4c08be7b949ab5550c8aa63b6570ebe4e2936d95280f22ab6f56906" -> "sha256:3219ef45d97b8b6b457a234bc6a2542a750878e86a4f9ea5beedf905497947ff" [label=""];
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" -> "sha256:3219ef45d97b8b6b457a234bc6a2542a750878e86a4f9ea5beedf905497947ff" [label=""];
  "sha256:3219ef45d97b8b6b457a234bc6a2542a750878e86a4f9ea5beedf905497947ff" -> "sha256:4d0cc21c4c8a4c535f23fef26684101e8563235a09bebef2e3343c7a548819e4" [label=""];
  "sha256:4d0cc21c4c8a4c535f23fef26684101e8563235a09bebef2e3343c7a548819e4" -> "sha256:561ea21c89118202490739516f73f88a504be902867391ef641c479872849568" [label=""];
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" -> "sha256:561ea21c89118202490739516f73f88a504be902867391ef641c479872849568" [label=""];
  "sha256:561ea21c89118202490739516f73f88a504be902867391ef641c479872849568" -> "sha256:f4ef89074e072437f2afaf8139ed8bf58f406a8f1a651dac2abdff6e58fa3c37" [label=""];
  "sha256:f4ef89074e072437f2afaf8139ed8bf58f406a8f1a651dac2abdff6e58fa3c37" -> "sha256:46da6ea4041b9dc3042668b53911217124b4f82c9ec6131155a38bfe485cc3b7" [label=""];
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" -> "sha256:46da6ea4041b9dc3042668b53911217124b4f82c9ec6131155a38bfe485cc3b7" [label=""];
  "sha256:46da6ea4041b9dc3042668b53911217124b4f82c9ec6131155a38bfe485cc3b7" -> "sha256:161358e0c0d21f0d1df72c473aef2e01587bd6ca95b9b645cfad11213b15c055" [label=""];
  "sha256:161358e0c0d21f0d1df72c473aef2e01587bd6ca95b9b645cfad11213b15c055" -> "sha256:152d3132d9a8533e459f067783368917b05dbb307e3ee215f08b33ab01213917" [label=""];
  "sha256:bd1f9d7e195fb3ea781f0d59a5a7a6a225a2f32e42166e6dc9c1b65ba14848fc" -> "sha256:152d3132d9a8533e459f067783368917b05dbb307e3ee215f08b33ab01213917" [label=""];
  "sha256:152d3132d9a8533e459f067783368917b05dbb307e3ee215f08b33ab01213917" -> "sha256:6ef971d429e7d51880bf5b4a93f9baf2d6173f71583e2219fe9db263c13f67e9" [label=""];
  "sha256:6ef971d429e7d51880bf5b4a93f9baf2d6173f71583e2219fe9db263c13f67e9" -> "sha256:a138f2703afc1c8ed8893121e3da911d98910d404888d8fa6eb9b76119111bba" [label=""];
}

