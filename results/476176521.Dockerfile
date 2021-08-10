[app/sources/476176521.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" [label="/bin/sh -c rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems" shape="box"];
  "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" [label="/bin/sh -c curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo" shape="box"];
  "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" [label="/bin/sh -c yum -q -y update" shape="box"];
  "sha256:423f296451894af69d80984ba407f816e1e7eea2e6a6e946f15174952b02888b" [label="/bin/sh -c yum -q -y install zulu-8-8.17.0.7-1" shape="box"];
  "sha256:7799c066991d36f7eae7f9e49932ff8cfaa9eb536255ac683e6b49bc2c505d1f" [label="sha256:7799c066991d36f7eae7f9e49932ff8cfaa9eb536255ac683e6b49bc2c505d1f" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" [label=""];
  "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" -> "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" [label=""];
  "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" -> "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" [label=""];
  "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" -> "sha256:423f296451894af69d80984ba407f816e1e7eea2e6a6e946f15174952b02888b" [label=""];
  "sha256:423f296451894af69d80984ba407f816e1e7eea2e6a6e946f15174952b02888b" -> "sha256:7799c066991d36f7eae7f9e49932ff8cfaa9eb536255ac683e6b49bc2c505d1f" [label=""];
}

