[app/sources/388315918.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3c43c457e9dd1d6075ab253c5f8671c05a9963e1e0d57dc181e3d7cb850f6133" [label="local://context" shape="ellipse"];
  "sha256:0dd176e694f58262dcf722ad14d86aa10c78e03330ca782f79a99fcf49a0418e" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:321fb371a0d6b4300c0184af911435db391f5d885c7421017a6738855c89abc0" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:db19248e90ac523ee0e1df6ef3722b97ac6c6b1694ce19245153a05573670164" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" |     tee -a /etc/apt/sources.list" shape="box"];
  "sha256:e67d325efbc3c973fe91ae1359f1bc9c0650e0ac14dd6fe7ce7d3bc3ebe3029d" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends -t jessie-backports         openjdk-8-jre-headless ca-certificates-java &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f72657c043cf924ddfadcb83343fdf94cfa9c5b3a5736643664ac8a2844e571e" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:c4cf63a5d77a58a96f8dbc701f5ba5d298412409894d9b2f9a3bb79ee1ad0e29" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:727977ebf5d2a2e135e68e6b9f20cc0b7997b5744ca297b797112063b0da614a" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:cc4042704005444e3fd2b5ff1dfb6518e5402dc92bb73dbfef3468bda2f9ce07" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:923f5db1e89c5baafe9cd2a95e43cf2d720db1e428052fd99181a7e235d987d3" [label="/bin/sh -c pip install --upgrade virtualenv" shape="box"];
  "sha256:2527d70b4a5846fd26459dc7e63a6b90f6612fb800af1dc945272acc4bdb6aef" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:ad9f9cc89b041f7284fb973e693a2a6cc3485a3a354ed432b976c794c1f413b7" [label="sha256:ad9f9cc89b041f7284fb973e693a2a6cc3485a3a354ed432b976c794c1f413b7" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0dd176e694f58262dcf722ad14d86aa10c78e03330ca782f79a99fcf49a0418e" [label=""];
  "sha256:3c43c457e9dd1d6075ab253c5f8671c05a9963e1e0d57dc181e3d7cb850f6133" -> "sha256:0dd176e694f58262dcf722ad14d86aa10c78e03330ca782f79a99fcf49a0418e" [label=""];
  "sha256:0dd176e694f58262dcf722ad14d86aa10c78e03330ca782f79a99fcf49a0418e" -> "sha256:321fb371a0d6b4300c0184af911435db391f5d885c7421017a6738855c89abc0" [label=""];
  "sha256:321fb371a0d6b4300c0184af911435db391f5d885c7421017a6738855c89abc0" -> "sha256:db19248e90ac523ee0e1df6ef3722b97ac6c6b1694ce19245153a05573670164" [label=""];
  "sha256:db19248e90ac523ee0e1df6ef3722b97ac6c6b1694ce19245153a05573670164" -> "sha256:e67d325efbc3c973fe91ae1359f1bc9c0650e0ac14dd6fe7ce7d3bc3ebe3029d" [label=""];
  "sha256:e67d325efbc3c973fe91ae1359f1bc9c0650e0ac14dd6fe7ce7d3bc3ebe3029d" -> "sha256:f72657c043cf924ddfadcb83343fdf94cfa9c5b3a5736643664ac8a2844e571e" [label=""];
  "sha256:f72657c043cf924ddfadcb83343fdf94cfa9c5b3a5736643664ac8a2844e571e" -> "sha256:c4cf63a5d77a58a96f8dbc701f5ba5d298412409894d9b2f9a3bb79ee1ad0e29" [label=""];
  "sha256:c4cf63a5d77a58a96f8dbc701f5ba5d298412409894d9b2f9a3bb79ee1ad0e29" -> "sha256:727977ebf5d2a2e135e68e6b9f20cc0b7997b5744ca297b797112063b0da614a" [label=""];
  "sha256:727977ebf5d2a2e135e68e6b9f20cc0b7997b5744ca297b797112063b0da614a" -> "sha256:cc4042704005444e3fd2b5ff1dfb6518e5402dc92bb73dbfef3468bda2f9ce07" [label=""];
  "sha256:cc4042704005444e3fd2b5ff1dfb6518e5402dc92bb73dbfef3468bda2f9ce07" -> "sha256:923f5db1e89c5baafe9cd2a95e43cf2d720db1e428052fd99181a7e235d987d3" [label=""];
  "sha256:923f5db1e89c5baafe9cd2a95e43cf2d720db1e428052fd99181a7e235d987d3" -> "sha256:2527d70b4a5846fd26459dc7e63a6b90f6612fb800af1dc945272acc4bdb6aef" [label=""];
  "sha256:3c43c457e9dd1d6075ab253c5f8671c05a9963e1e0d57dc181e3d7cb850f6133" -> "sha256:2527d70b4a5846fd26459dc7e63a6b90f6612fb800af1dc945272acc4bdb6aef" [label=""];
  "sha256:2527d70b4a5846fd26459dc7e63a6b90f6612fb800af1dc945272acc4bdb6aef" -> "sha256:ad9f9cc89b041f7284fb973e693a2a6cc3485a3a354ed432b976c794c1f413b7" [label=""];
}

