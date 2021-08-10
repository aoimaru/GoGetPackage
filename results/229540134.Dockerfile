[app/sources/229540134.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:29a62d56cf24e43d76f978da411ace9979b59c28cbb4308b997b74fa47efa160" [label="local://context" shape="ellipse"];
  "sha256:eb5594363567da97b114ed60ebaa878a30a76709083d0db617299b477aaed635" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:e493c03faad145c579529361756f71eaa2b5dfb29a6b5d2121661ae49a38cf6a" [label="sha256:e493c03faad145c579529361756f71eaa2b5dfb29a6b5d2121661ae49a38cf6a" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:eb5594363567da97b114ed60ebaa878a30a76709083d0db617299b477aaed635" [label=""];
  "sha256:29a62d56cf24e43d76f978da411ace9979b59c28cbb4308b997b74fa47efa160" -> "sha256:eb5594363567da97b114ed60ebaa878a30a76709083d0db617299b477aaed635" [label=""];
  "sha256:eb5594363567da97b114ed60ebaa878a30a76709083d0db617299b477aaed635" -> "sha256:e493c03faad145c579529361756f71eaa2b5dfb29a6b5d2121661ae49a38cf6a" [label=""];
}

