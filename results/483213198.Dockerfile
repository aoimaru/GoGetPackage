[app/sources/483213198.Dockerfile]
digraph {
  "sha256:2f412dbc66df94fa0248dd03384d307dcfa0c931f0d6f980f0315d2ce764830a" [label="docker-image://docker.io/komljen/ubuntu:latest" shape="ellipse"];
  "sha256:e5211a3d6a5746e161e5196652646f3d6e56aefc62af80a0ef861f97c6d040da" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java &&   apt-get update &&   echo oracle-java${JAVA_VERSION}-installer shared/accepted-oracle-license-v1-1 select true        | /usr/bin/debconf-set-selections &&   apt-get -y install           oracle-java${JAVA_VERSION}-installer &&   rm -rf /var/lib/apt/lists/* &&   rm /var/cache/oracle-jdk${JAVA_VERSION}-installer/jdk-*.tar.gz" shape="box"];
  "sha256:e302a2b0430fdc130ef9ee74aca9c4540bb6d576ec2595936b85fef7f8aef042" [label="/bin/sh -c update-alternatives --display java" shape="box"];
  "sha256:767fec81d9a5ade5a78861e732e2527e042f087e9773b22c59c36ffc7d62e867" [label="sha256:767fec81d9a5ade5a78861e732e2527e042f087e9773b22c59c36ffc7d62e867" shape="plaintext"];
  "sha256:2f412dbc66df94fa0248dd03384d307dcfa0c931f0d6f980f0315d2ce764830a" -> "sha256:e5211a3d6a5746e161e5196652646f3d6e56aefc62af80a0ef861f97c6d040da" [label=""];
  "sha256:e5211a3d6a5746e161e5196652646f3d6e56aefc62af80a0ef861f97c6d040da" -> "sha256:e302a2b0430fdc130ef9ee74aca9c4540bb6d576ec2595936b85fef7f8aef042" [label=""];
  "sha256:e302a2b0430fdc130ef9ee74aca9c4540bb6d576ec2595936b85fef7f8aef042" -> "sha256:767fec81d9a5ade5a78861e732e2527e042f087e9773b22c59c36ffc7d62e867" [label=""];
}

