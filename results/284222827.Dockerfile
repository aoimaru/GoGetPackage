[app/sources/284222827.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:aa37916be88adf90445405bfae35b23697d0b4b6e1f528d5730a6fb9e9ea7c4d" [label="local://context" shape="ellipse"];
  "sha256:2be09ebb0561beab4348f2bd9c8d006e0f7cf50e891aa21ae7d7a82863bbef35" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:b2809bd692596fde4ed4a7f275cdaea01a454aa1a351ba9c3702fc8cbe41db9b" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:8a71cd2238e62c66ca1c38b9d70fd7d32519b20f4066e5d69a0447ae91b360ea" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:4a1dea81b6c281e6327f95a771d1263acacfdeea907a08d6b1bd6ae1b9742e9d" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:4ba4078980dddf23d9e1591b8445a0f0947a37dae03096feb311423ef9df0517" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:c18ac5a14cbd8093f5cf5e63f539bdad40a23424a95602904686dd8ed983639c" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:97b21a92c46abb2ec5786481bacc8d08e1af1a11f5af88b85f7217276bc64ee6" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:c0e84fb122ac025050881d0fad9b41b26999a973e6f22cc77883226cb5bd2ac5" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:59460c5006dc0c66cfa05541fe026924a74a438295c4ef46004858c968e8f5fc" [label="/bin/sh -c /install/install_hadoop.sh" shape="box"];
  "sha256:99ffe7e1c156e7fbaa5d64fa785c4740db2229189f8279661022c67cd87b7c37" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:c13382250559ab8a5bfe1ba9f0f3fb0ab29ba68e5c80306d74a979fe2c48498b" [label="sha256:c13382250559ab8a5bfe1ba9f0f3fb0ab29ba68e5c80306d74a979fe2c48498b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2be09ebb0561beab4348f2bd9c8d006e0f7cf50e891aa21ae7d7a82863bbef35" [label=""];
  "sha256:aa37916be88adf90445405bfae35b23697d0b4b6e1f528d5730a6fb9e9ea7c4d" -> "sha256:2be09ebb0561beab4348f2bd9c8d006e0f7cf50e891aa21ae7d7a82863bbef35" [label=""];
  "sha256:2be09ebb0561beab4348f2bd9c8d006e0f7cf50e891aa21ae7d7a82863bbef35" -> "sha256:b2809bd692596fde4ed4a7f275cdaea01a454aa1a351ba9c3702fc8cbe41db9b" [label=""];
  "sha256:b2809bd692596fde4ed4a7f275cdaea01a454aa1a351ba9c3702fc8cbe41db9b" -> "sha256:8a71cd2238e62c66ca1c38b9d70fd7d32519b20f4066e5d69a0447ae91b360ea" [label=""];
  "sha256:8a71cd2238e62c66ca1c38b9d70fd7d32519b20f4066e5d69a0447ae91b360ea" -> "sha256:4a1dea81b6c281e6327f95a771d1263acacfdeea907a08d6b1bd6ae1b9742e9d" [label=""];
  "sha256:4a1dea81b6c281e6327f95a771d1263acacfdeea907a08d6b1bd6ae1b9742e9d" -> "sha256:4ba4078980dddf23d9e1591b8445a0f0947a37dae03096feb311423ef9df0517" [label=""];
  "sha256:4ba4078980dddf23d9e1591b8445a0f0947a37dae03096feb311423ef9df0517" -> "sha256:c18ac5a14cbd8093f5cf5e63f539bdad40a23424a95602904686dd8ed983639c" [label=""];
  "sha256:c18ac5a14cbd8093f5cf5e63f539bdad40a23424a95602904686dd8ed983639c" -> "sha256:97b21a92c46abb2ec5786481bacc8d08e1af1a11f5af88b85f7217276bc64ee6" [label=""];
  "sha256:97b21a92c46abb2ec5786481bacc8d08e1af1a11f5af88b85f7217276bc64ee6" -> "sha256:c0e84fb122ac025050881d0fad9b41b26999a973e6f22cc77883226cb5bd2ac5" [label=""];
  "sha256:c0e84fb122ac025050881d0fad9b41b26999a973e6f22cc77883226cb5bd2ac5" -> "sha256:59460c5006dc0c66cfa05541fe026924a74a438295c4ef46004858c968e8f5fc" [label=""];
  "sha256:59460c5006dc0c66cfa05541fe026924a74a438295c4ef46004858c968e8f5fc" -> "sha256:99ffe7e1c156e7fbaa5d64fa785c4740db2229189f8279661022c67cd87b7c37" [label=""];
  "sha256:aa37916be88adf90445405bfae35b23697d0b4b6e1f528d5730a6fb9e9ea7c4d" -> "sha256:99ffe7e1c156e7fbaa5d64fa785c4740db2229189f8279661022c67cd87b7c37" [label=""];
  "sha256:99ffe7e1c156e7fbaa5d64fa785c4740db2229189f8279661022c67cd87b7c37" -> "sha256:c13382250559ab8a5bfe1ba9f0f3fb0ab29ba68e5c80306d74a979fe2c48498b" [label=""];
}

