[app/sources/235155179.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:730e3c87f379e6f103b378b1f99551cd69fb9f8106c9751f1e7462413fe01438" [label="/bin/sh -c apt-get update -qq     && apt-get install -y -q libreoffice     && apt-get remove -q -y libreoffice-gnome" shape="box"];
  "sha256:01bd9e7cdbb10f5e78661146c4ebb7316bc6458ef1921a4794d841dee45d48f8" [label="/bin/sh -c apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*.deb /var/cache/apt/*cache.bin" shape="box"];
  "sha256:097456c757f5dcdd462297240da462dba3d246ed4181807f5a8510ee26ea9d50" [label="/bin/sh -c useradd --create-home --shell /bin/bash converter     && chown converter:converter /usr/bin/libreoffice" shape="box"];
  "sha256:46d3e797bc5bbe63a173727d422a189db54d721c1ad48ea833e6ecdd9d01cdb6" [label="mkdir{path=/home/converter}" shape="note"];
  "sha256:c0bb7259e0a81cbde2a4197adcec8d37ac6922e099e60c16d1a32bd77da1d0a2" [label="sha256:c0bb7259e0a81cbde2a4197adcec8d37ac6922e099e60c16d1a32bd77da1d0a2" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:730e3c87f379e6f103b378b1f99551cd69fb9f8106c9751f1e7462413fe01438" [label=""];
  "sha256:730e3c87f379e6f103b378b1f99551cd69fb9f8106c9751f1e7462413fe01438" -> "sha256:01bd9e7cdbb10f5e78661146c4ebb7316bc6458ef1921a4794d841dee45d48f8" [label=""];
  "sha256:01bd9e7cdbb10f5e78661146c4ebb7316bc6458ef1921a4794d841dee45d48f8" -> "sha256:097456c757f5dcdd462297240da462dba3d246ed4181807f5a8510ee26ea9d50" [label=""];
  "sha256:097456c757f5dcdd462297240da462dba3d246ed4181807f5a8510ee26ea9d50" -> "sha256:46d3e797bc5bbe63a173727d422a189db54d721c1ad48ea833e6ecdd9d01cdb6" [label=""];
  "sha256:46d3e797bc5bbe63a173727d422a189db54d721c1ad48ea833e6ecdd9d01cdb6" -> "sha256:c0bb7259e0a81cbde2a4197adcec8d37ac6922e099e60c16d1a32bd77da1d0a2" [label=""];
}

