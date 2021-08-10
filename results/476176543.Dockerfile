[app/sources/476176543.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" [label="/bin/sh -c rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems" shape="box"];
  "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" [label="/bin/sh -c curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo" shape="box"];
  "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" [label="/bin/sh -c yum -q -y update" shape="box"];
  "sha256:820f64452ff8208348bc9c132b672f47768dda5b2d8a4a0debfc35683c636251" [label="/bin/sh -c yum -q -y install zulu-8-8.13.0.5-1" shape="box"];
  "sha256:323f892510093aff0ca9c721e2f3814bfbd34e18a7a629f00feb37a3d38afef0" [label="sha256:323f892510093aff0ca9c721e2f3814bfbd34e18a7a629f00feb37a3d38afef0" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" [label=""];
  "sha256:c95605b1e34a0d1702df149f303ea1d47277a96d85e0f5305184b67ed8e4ff0a" -> "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" [label=""];
  "sha256:7271b43d8429076fb64a3a7c56ea8dd7fae1c6140cc1f3c0f7584a36dfe431c2" -> "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" [label=""];
  "sha256:1eabba11b02a0112be602a7403b7a6507855abb220109bb2c759a401f751a44b" -> "sha256:820f64452ff8208348bc9c132b672f47768dda5b2d8a4a0debfc35683c636251" [label=""];
  "sha256:820f64452ff8208348bc9c132b672f47768dda5b2d8a4a0debfc35683c636251" -> "sha256:323f892510093aff0ca9c721e2f3814bfbd34e18a7a629f00feb37a3d38afef0" [label=""];
}

