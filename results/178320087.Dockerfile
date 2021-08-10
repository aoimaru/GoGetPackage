[app/sources/178320087.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f392e55180125bbf536461b4276d93fc6fd57dd24b1d621d6fca4d4293dca68f" [label="/bin/sh -c apt-get -q update ; apt-get -y -q --no-install-recommends install     ca-certificates     python3     python3-pip" shape="box"];
  "sha256:b748d1f408b2bf102b1d6eeb89cf03c25bbc85d01f600a3dbd0c15ff84bfe09d" [label="/bin/sh -c pip3 install     CherryPy     requests" shape="box"];
  "sha256:f92f103553e5a38362ef5f76369f72a072c13b9c86713cf4feee28758f2d6960" [label="/bin/sh -c ln -s /home/vmagent/app /app" shape="box"];
  "sha256:c29ca6cba705fb4f5f048331758848be347fd9a67f6b6a8babc3ea6b864cc282" [label="mkdir{path=/app}" shape="note"];
  "sha256:13b824d44334caf93d14b412847271b2d6c1a0252379b6630e1484027e9c91f5" [label="local://context" shape="ellipse"];
  "sha256:13985899da24f9f88e5481e4887b38382f5df86ed26d40f610f9ab6c8713d2eb" [label="copy{src=/, dest=/home/vmagent/python_vm_runtime_py3}" shape="note"];
  "sha256:2c3d1894f03d148ef3fd082d4752d6afdac2bb7d3a46878ffe8b34592cceeabe" [label="sha256:2c3d1894f03d148ef3fd082d4752d6afdac2bb7d3a46878ffe8b34592cceeabe" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:f392e55180125bbf536461b4276d93fc6fd57dd24b1d621d6fca4d4293dca68f" [label=""];
  "sha256:f392e55180125bbf536461b4276d93fc6fd57dd24b1d621d6fca4d4293dca68f" -> "sha256:b748d1f408b2bf102b1d6eeb89cf03c25bbc85d01f600a3dbd0c15ff84bfe09d" [label=""];
  "sha256:b748d1f408b2bf102b1d6eeb89cf03c25bbc85d01f600a3dbd0c15ff84bfe09d" -> "sha256:f92f103553e5a38362ef5f76369f72a072c13b9c86713cf4feee28758f2d6960" [label=""];
  "sha256:f92f103553e5a38362ef5f76369f72a072c13b9c86713cf4feee28758f2d6960" -> "sha256:c29ca6cba705fb4f5f048331758848be347fd9a67f6b6a8babc3ea6b864cc282" [label=""];
  "sha256:c29ca6cba705fb4f5f048331758848be347fd9a67f6b6a8babc3ea6b864cc282" -> "sha256:13985899da24f9f88e5481e4887b38382f5df86ed26d40f610f9ab6c8713d2eb" [label=""];
  "sha256:13b824d44334caf93d14b412847271b2d6c1a0252379b6630e1484027e9c91f5" -> "sha256:13985899da24f9f88e5481e4887b38382f5df86ed26d40f610f9ab6c8713d2eb" [label=""];
  "sha256:13985899da24f9f88e5481e4887b38382f5df86ed26d40f610f9ab6c8713d2eb" -> "sha256:2c3d1894f03d148ef3fd082d4752d6afdac2bb7d3a46878ffe8b34592cceeabe" [label=""];
}

