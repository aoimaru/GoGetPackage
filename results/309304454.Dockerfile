[app/sources/309304454.Dockerfile]
digraph {
  "sha256:ae127458aea56d88769b473ccbb70c22a25f9576623845d398c15108b4d1d421" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:468331a64f70a9c37790d7df65311b171ceae1c1d1ec8025c4d78eefa9fe32fa" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:d0e9092a558c23e8ffc9365d9070128d622d1f0c4961f5210cadf0edfe95a844" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:82c844e4713525f09065e645d9e230e5741494154f62f91b35a11b1a9b287b8d" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:d9fb2bc581c14f52bdadb498f40919c31ffa09eb5356846f450c85515c8b31ab" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:56558ebd3737c11c91012b7b942948fbfcb4585c192a4eb9316452f64d13b637" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:3ec63b86a17b7e8f52ab43d1d7aa0a5166e585ee2b67a77439f9725d8c2d0f73" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:4530370856b262040d71c8d817b13b39475dd9956256f3648d9248382b1295b9" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:a9ba3db517432c4db05089054b72ea9468320bba253957f24d0265973bf1eac3" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:76dcbe2c2c982b1482b782b29c9af15b2f40b8dee5f2b5103759e8b374c1824d" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:4b759aec599ed52eaba1c7d4e9c40443c6c4171333c08bb497e64949698c29ee" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:2f5b031570a3ea0678d174429e8bfe6b39b9f9522256240372d7a9cf0eb742cc" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:b167c55de46c38b21be478ca2248140fdfbd10f65c97f04c5c79e90c5219ffe3" [label="sha256:b167c55de46c38b21be478ca2248140fdfbd10f65c97f04c5c79e90c5219ffe3" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:468331a64f70a9c37790d7df65311b171ceae1c1d1ec8025c4d78eefa9fe32fa" [label=""];
  "sha256:ae127458aea56d88769b473ccbb70c22a25f9576623845d398c15108b4d1d421" -> "sha256:468331a64f70a9c37790d7df65311b171ceae1c1d1ec8025c4d78eefa9fe32fa" [label=""];
  "sha256:468331a64f70a9c37790d7df65311b171ceae1c1d1ec8025c4d78eefa9fe32fa" -> "sha256:d0e9092a558c23e8ffc9365d9070128d622d1f0c4961f5210cadf0edfe95a844" [label=""];
  "sha256:d0e9092a558c23e8ffc9365d9070128d622d1f0c4961f5210cadf0edfe95a844" -> "sha256:82c844e4713525f09065e645d9e230e5741494154f62f91b35a11b1a9b287b8d" [label=""];
  "sha256:82c844e4713525f09065e645d9e230e5741494154f62f91b35a11b1a9b287b8d" -> "sha256:d9fb2bc581c14f52bdadb498f40919c31ffa09eb5356846f450c85515c8b31ab" [label=""];
  "sha256:d9fb2bc581c14f52bdadb498f40919c31ffa09eb5356846f450c85515c8b31ab" -> "sha256:56558ebd3737c11c91012b7b942948fbfcb4585c192a4eb9316452f64d13b637" [label=""];
  "sha256:56558ebd3737c11c91012b7b942948fbfcb4585c192a4eb9316452f64d13b637" -> "sha256:3ec63b86a17b7e8f52ab43d1d7aa0a5166e585ee2b67a77439f9725d8c2d0f73" [label=""];
  "sha256:3ec63b86a17b7e8f52ab43d1d7aa0a5166e585ee2b67a77439f9725d8c2d0f73" -> "sha256:4530370856b262040d71c8d817b13b39475dd9956256f3648d9248382b1295b9" [label=""];
  "sha256:4530370856b262040d71c8d817b13b39475dd9956256f3648d9248382b1295b9" -> "sha256:a9ba3db517432c4db05089054b72ea9468320bba253957f24d0265973bf1eac3" [label=""];
  "sha256:a9ba3db517432c4db05089054b72ea9468320bba253957f24d0265973bf1eac3" -> "sha256:76dcbe2c2c982b1482b782b29c9af15b2f40b8dee5f2b5103759e8b374c1824d" [label=""];
  "sha256:76dcbe2c2c982b1482b782b29c9af15b2f40b8dee5f2b5103759e8b374c1824d" -> "sha256:4b759aec599ed52eaba1c7d4e9c40443c6c4171333c08bb497e64949698c29ee" [label=""];
  "sha256:4b759aec599ed52eaba1c7d4e9c40443c6c4171333c08bb497e64949698c29ee" -> "sha256:2f5b031570a3ea0678d174429e8bfe6b39b9f9522256240372d7a9cf0eb742cc" [label=""];
  "sha256:ae127458aea56d88769b473ccbb70c22a25f9576623845d398c15108b4d1d421" -> "sha256:2f5b031570a3ea0678d174429e8bfe6b39b9f9522256240372d7a9cf0eb742cc" [label=""];
  "sha256:2f5b031570a3ea0678d174429e8bfe6b39b9f9522256240372d7a9cf0eb742cc" -> "sha256:b167c55de46c38b21be478ca2248140fdfbd10f65c97f04c5c79e90c5219ffe3" [label=""];
}

