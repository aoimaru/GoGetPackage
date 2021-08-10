[app/sources/426083369.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c3c2be026c4a55c8ab5eb3d365e09db47528dc2c2e5e93010859402ad14eea4b" [label="/bin/sh -c apt-get update && apt-get install -y tahoe-lafs dnsutils openvpn busybox" shape="box"];
  "sha256:5081b77059bb0a1103285f5be562d842ac9207e1a771f5a85c14b35c427e7021" [label="/bin/sh -c mkdir /tahoe && ln -s /tahoe /.tahoe" shape="box"];
  "sha256:f700b3efddd7ce72a9460643beaf1cc25ce07a0495b5fa208ee4ac974302153d" [label="mkdir{path=/tahoe}" shape="note"];
  "sha256:941fd503a8efc2ab27a0bf5f0b0e88b420400046055635cdd3e7bdb854a24337" [label="local://context" shape="ellipse"];
  "sha256:72203244ea49d49a7053d9bee403fe53160e2f1da220c326e9f8aed9cbcbf3a0" [label="copy{src=/bin, dest=/usr/local/bin/}" shape="note"];
  "sha256:c68d6ef1398748c2598ad8b0b0c749c7edfb6b43a57f2d32cc28fefacf834874" [label="/bin/sh -c chmod -R a+x /usr/local/bin" shape="box"];
  "sha256:6e7c71e01d3bb0dce9dec018af33fbbe9d2c88ebe80b582399865768f4553ebb" [label="sha256:6e7c71e01d3bb0dce9dec018af33fbbe9d2c88ebe80b582399865768f4553ebb" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c3c2be026c4a55c8ab5eb3d365e09db47528dc2c2e5e93010859402ad14eea4b" [label=""];
  "sha256:c3c2be026c4a55c8ab5eb3d365e09db47528dc2c2e5e93010859402ad14eea4b" -> "sha256:5081b77059bb0a1103285f5be562d842ac9207e1a771f5a85c14b35c427e7021" [label=""];
  "sha256:5081b77059bb0a1103285f5be562d842ac9207e1a771f5a85c14b35c427e7021" -> "sha256:f700b3efddd7ce72a9460643beaf1cc25ce07a0495b5fa208ee4ac974302153d" [label=""];
  "sha256:f700b3efddd7ce72a9460643beaf1cc25ce07a0495b5fa208ee4ac974302153d" -> "sha256:72203244ea49d49a7053d9bee403fe53160e2f1da220c326e9f8aed9cbcbf3a0" [label=""];
  "sha256:941fd503a8efc2ab27a0bf5f0b0e88b420400046055635cdd3e7bdb854a24337" -> "sha256:72203244ea49d49a7053d9bee403fe53160e2f1da220c326e9f8aed9cbcbf3a0" [label=""];
  "sha256:72203244ea49d49a7053d9bee403fe53160e2f1da220c326e9f8aed9cbcbf3a0" -> "sha256:c68d6ef1398748c2598ad8b0b0c749c7edfb6b43a57f2d32cc28fefacf834874" [label=""];
  "sha256:c68d6ef1398748c2598ad8b0b0c749c7edfb6b43a57f2d32cc28fefacf834874" -> "sha256:6e7c71e01d3bb0dce9dec018af33fbbe9d2c88ebe80b582399865768f4553ebb" [label=""];
}

