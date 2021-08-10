[app/sources/389946835.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:c864e1e9645a8ad9a6471623d30e81bf63d2b9ea2ae93a2773f29a3cdba6101d" [label="/bin/sh -c apt-get update &&   apt-get install -y --no-install-recommends   acl-dev   autoconf   automake   build-essential   debhelper   devscripts   docbook-xsl   fakeroot   g++   gettext   language-pack-de   language-pack-en   libboost-dev   libboost-system-dev   libboost-test-dev   libboost-thread-dev   libdbus-1-dev   libmount-dev   libpam-dev   libtool   libxml2-dev   libz-dev   xsltproc" shape="box"];
  "sha256:6c9a451bead3f05d110c9ec5936f024bf5b5141cffe78ca8858424ce603ba64e" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:dc8d8d55e7c12f47e7f2b1d144fd16f2f90e97016c39641e77b9ea137216ab9c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0d1fee65e017bb5a366aa253d34b1aa1b3e7d9587b5aadb3c0abf1007e4ab1f7" [label="local://context" shape="ellipse"];
  "sha256:9a4292a2693d6e56e922bb18a35c561c12ab4b3de837aeaa85561e74f76266e6" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:e9f2ea07b58d8b793e4ae264c49e9503742f8a8b5eeffbf00801bc9b8a7a3776" [label="sha256:e9f2ea07b58d8b793e4ae264c49e9503742f8a8b5eeffbf00801bc9b8a7a3776" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:c864e1e9645a8ad9a6471623d30e81bf63d2b9ea2ae93a2773f29a3cdba6101d" [label=""];
  "sha256:c864e1e9645a8ad9a6471623d30e81bf63d2b9ea2ae93a2773f29a3cdba6101d" -> "sha256:6c9a451bead3f05d110c9ec5936f024bf5b5141cffe78ca8858424ce603ba64e" [label=""];
  "sha256:6c9a451bead3f05d110c9ec5936f024bf5b5141cffe78ca8858424ce603ba64e" -> "sha256:dc8d8d55e7c12f47e7f2b1d144fd16f2f90e97016c39641e77b9ea137216ab9c" [label=""];
  "sha256:dc8d8d55e7c12f47e7f2b1d144fd16f2f90e97016c39641e77b9ea137216ab9c" -> "sha256:9a4292a2693d6e56e922bb18a35c561c12ab4b3de837aeaa85561e74f76266e6" [label=""];
  "sha256:0d1fee65e017bb5a366aa253d34b1aa1b3e7d9587b5aadb3c0abf1007e4ab1f7" -> "sha256:9a4292a2693d6e56e922bb18a35c561c12ab4b3de837aeaa85561e74f76266e6" [label=""];
  "sha256:9a4292a2693d6e56e922bb18a35c561c12ab4b3de837aeaa85561e74f76266e6" -> "sha256:e9f2ea07b58d8b793e4ae264c49e9503742f8a8b5eeffbf00801bc9b8a7a3776" [label=""];
}

