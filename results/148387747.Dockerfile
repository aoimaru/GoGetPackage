[app/sources/148387747.Dockerfile]
digraph {
  "sha256:51bcc779269c8697ac5b6e930f92df308185e675998d74ddeace7d772d87c348" [label="docker-image://docker.io/library/elasticsearch:5.6.9" shape="ellipse"];
  "sha256:c54887df364084277fe783bdc5ffcb17102b6b050e20851480699b5b533ee689" [label="/bin/sh -c bin/elasticsearch-plugin install ingest-attachment" shape="box"];
  "sha256:934cb474365203c0ba14510f29b992c05025e1773eff2dcce9fef69366bbe3c8" [label="sha256:934cb474365203c0ba14510f29b992c05025e1773eff2dcce9fef69366bbe3c8" shape="plaintext"];
  "sha256:51bcc779269c8697ac5b6e930f92df308185e675998d74ddeace7d772d87c348" -> "sha256:c54887df364084277fe783bdc5ffcb17102b6b050e20851480699b5b533ee689" [label=""];
  "sha256:c54887df364084277fe783bdc5ffcb17102b6b050e20851480699b5b533ee689" -> "sha256:934cb474365203c0ba14510f29b992c05025e1773eff2dcce9fef69366bbe3c8" [label=""];
}

