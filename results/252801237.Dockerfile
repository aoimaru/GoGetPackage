[app/sources/252801237.Dockerfile]
digraph {
  "sha256:7ab894fb01e4bc981980c890a6089470771ca16660f37421a281d3ec5873eb06" [label="local://context" shape="ellipse"];
  "sha256:fdc1ebf3606e4939b0b317cd21406766e602fc82d6128c041820c70a87894d67" [label="docker-image://docker.io/zotonic/zotonic:0.x" shape="ellipse"];
  "sha256:347954be510d27dbe3c9778001fb2e9b951f7c4543334b451fb739beb2dfb329" [label="copy{src=/, dest=/opt/ginger}" shape="note"];
  "sha256:249a7f06aa75c62b66658e32153a20b4eb19e7c6d207d6e52f634cea8b115093" [label="copy{src=/docker/prod/etc_zotonic, dest=/etc/zotonic}" shape="note"];
  "sha256:71cf5c7113785df75c4f4eb4480446851c09f9a4443cd89891af06d963c3d542" [label="mkdir{path=/opt/zotonic}" shape="note"];
  "sha256:c80f840416847e455c985c039cdfa7735369fe014cb57b588061c673a157aff1" [label="/bin/sh -c apk add --virtual build-deps --no-cache $BUILD_APKS && apk add --no-cache s6 bash && DEBUG=1 make && apk del build-deps" shape="box"];
  "sha256:ccd69c80d2533b2f907a5f09374a2a8be7b50f1d24bbaf6681cf3209af657dca" [label="/bin/sh -c chown -R zotonic /opt/ginger" shape="box"];
  "sha256:23eb147644501932edb2fddeaf94907dc40747d6e48a91f0a34df86dab65cdfc" [label="copy{src=/docker/prod/s6, dest=/etc/s6}" shape="note"];
  "sha256:2b80e43417ed37633904195343d33e4d058d05935e74572aca7a25d73ffbe193" [label="sha256:2b80e43417ed37633904195343d33e4d058d05935e74572aca7a25d73ffbe193" shape="plaintext"];
  "sha256:fdc1ebf3606e4939b0b317cd21406766e602fc82d6128c041820c70a87894d67" -> "sha256:347954be510d27dbe3c9778001fb2e9b951f7c4543334b451fb739beb2dfb329" [label=""];
  "sha256:7ab894fb01e4bc981980c890a6089470771ca16660f37421a281d3ec5873eb06" -> "sha256:347954be510d27dbe3c9778001fb2e9b951f7c4543334b451fb739beb2dfb329" [label=""];
  "sha256:347954be510d27dbe3c9778001fb2e9b951f7c4543334b451fb739beb2dfb329" -> "sha256:249a7f06aa75c62b66658e32153a20b4eb19e7c6d207d6e52f634cea8b115093" [label=""];
  "sha256:7ab894fb01e4bc981980c890a6089470771ca16660f37421a281d3ec5873eb06" -> "sha256:249a7f06aa75c62b66658e32153a20b4eb19e7c6d207d6e52f634cea8b115093" [label=""];
  "sha256:249a7f06aa75c62b66658e32153a20b4eb19e7c6d207d6e52f634cea8b115093" -> "sha256:71cf5c7113785df75c4f4eb4480446851c09f9a4443cd89891af06d963c3d542" [label=""];
  "sha256:71cf5c7113785df75c4f4eb4480446851c09f9a4443cd89891af06d963c3d542" -> "sha256:c80f840416847e455c985c039cdfa7735369fe014cb57b588061c673a157aff1" [label=""];
  "sha256:c80f840416847e455c985c039cdfa7735369fe014cb57b588061c673a157aff1" -> "sha256:ccd69c80d2533b2f907a5f09374a2a8be7b50f1d24bbaf6681cf3209af657dca" [label=""];
  "sha256:ccd69c80d2533b2f907a5f09374a2a8be7b50f1d24bbaf6681cf3209af657dca" -> "sha256:23eb147644501932edb2fddeaf94907dc40747d6e48a91f0a34df86dab65cdfc" [label=""];
  "sha256:7ab894fb01e4bc981980c890a6089470771ca16660f37421a281d3ec5873eb06" -> "sha256:23eb147644501932edb2fddeaf94907dc40747d6e48a91f0a34df86dab65cdfc" [label=""];
  "sha256:23eb147644501932edb2fddeaf94907dc40747d6e48a91f0a34df86dab65cdfc" -> "sha256:2b80e43417ed37633904195343d33e4d058d05935e74572aca7a25d73ffbe193" [label=""];
}

