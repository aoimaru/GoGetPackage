[app/sources/251282971.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:7766913a8e846dec0b113f0f3496dc723dfad7e6815b64192be1b664b1d64fda" [label="/bin/sh -c apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5072E1F5  && echo 'deb http://repo.mysql.com/apt/debian/ jessie mysql-5.6' > /etc/apt/sources.list.d/mysql.list  && apt-get update  && DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends       bzip2       libmysqlclient18       mysql-client       mysql-server  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:981648255ac0bb32437951e7af0502a1948b800d7ef437f4d1c4d4091e179aac" [label="local://context" shape="ellipse"];
  "sha256:b0dc7a356ed6309338fbe08cca4444dda222262bd4e3068f5d03838bfb0784d3" [label="copy{src=/lite/vt, dest=/vt}" shape="note"];
  "sha256:9ac36933055e40c2a1f4e898456e165798c53f3af5b6c01fe7472316c48b293b" [label="/bin/sh -c groupadd -r vitess && useradd -r -g vitess vitess &&     mkdir -p /vt/vtdataroot && chown -R vitess:vitess /vt" shape="box"];
  "sha256:88da29496d34336768a5d74b42469d1b2e082ddb073bdfd36a9e373f71ef7180" [label="sha256:88da29496d34336768a5d74b42469d1b2e082ddb073bdfd36a9e373f71ef7180" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:7766913a8e846dec0b113f0f3496dc723dfad7e6815b64192be1b664b1d64fda" [label=""];
  "sha256:7766913a8e846dec0b113f0f3496dc723dfad7e6815b64192be1b664b1d64fda" -> "sha256:b0dc7a356ed6309338fbe08cca4444dda222262bd4e3068f5d03838bfb0784d3" [label=""];
  "sha256:981648255ac0bb32437951e7af0502a1948b800d7ef437f4d1c4d4091e179aac" -> "sha256:b0dc7a356ed6309338fbe08cca4444dda222262bd4e3068f5d03838bfb0784d3" [label=""];
  "sha256:b0dc7a356ed6309338fbe08cca4444dda222262bd4e3068f5d03838bfb0784d3" -> "sha256:9ac36933055e40c2a1f4e898456e165798c53f3af5b6c01fe7472316c48b293b" [label=""];
  "sha256:9ac36933055e40c2a1f4e898456e165798c53f3af5b6c01fe7472316c48b293b" -> "sha256:88da29496d34336768a5d74b42469d1b2e082ddb073bdfd36a9e373f71ef7180" [label=""];
}

