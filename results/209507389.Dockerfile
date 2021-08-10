[app/sources/209507389.Dockerfile]
digraph {
  "sha256:b71812f0c0c6cb7d1b73bbaf8974e473e497a1c565b5926ea548de3e6508a691" [label="docker-image://docker.io/wurstmeister/kafka:0.10.1.0-1@sha256:534c031f2a1966bce097273bf3e4b8faf8578ac3c26257d9b86e6ab4116c886b" shape="ellipse"];
  "sha256:73374fcb1ab2b3f9ae35508665f466f0c5f884a01fe266898b6c65aad6812090" [label="local://context" shape="ellipse"];
  "sha256:c4471050e3376df4ce6cf93bf5591549c7d7651a1dcdab1f24c2fdfe52a14a69" [label="copy{src=/wait-and-start.sh, dest=/usr/bin/wait-and-start.sh}" shape="note"];
  "sha256:bca93cf2ebac01f228b1ff8727c830383993534fc3a21b395f563f3a98315281" [label="/bin/sh -c chmod a+x /usr/bin/wait-and-start.sh" shape="box"];
  "sha256:c5119394c2d2672dfd5729f4aa170226f2700f187773e62b594db2cd60e5850a" [label="sha256:c5119394c2d2672dfd5729f4aa170226f2700f187773e62b594db2cd60e5850a" shape="plaintext"];
  "sha256:b71812f0c0c6cb7d1b73bbaf8974e473e497a1c565b5926ea548de3e6508a691" -> "sha256:c4471050e3376df4ce6cf93bf5591549c7d7651a1dcdab1f24c2fdfe52a14a69" [label=""];
  "sha256:73374fcb1ab2b3f9ae35508665f466f0c5f884a01fe266898b6c65aad6812090" -> "sha256:c4471050e3376df4ce6cf93bf5591549c7d7651a1dcdab1f24c2fdfe52a14a69" [label=""];
  "sha256:c4471050e3376df4ce6cf93bf5591549c7d7651a1dcdab1f24c2fdfe52a14a69" -> "sha256:bca93cf2ebac01f228b1ff8727c830383993534fc3a21b395f563f3a98315281" [label=""];
  "sha256:bca93cf2ebac01f228b1ff8727c830383993534fc3a21b395f563f3a98315281" -> "sha256:c5119394c2d2672dfd5729f4aa170226f2700f187773e62b594db2cd60e5850a" [label=""];
}

