[app/sources/298057661.Dockerfile]
digraph {
  "sha256:26fef163c869220234f29c9af807d1d2e408d3c97932341be83cd087aec2888f" [label="local://context" shape="ellipse"];
  "sha256:e20a8ff81d0ed5dc203d2ac3ff1eb6115cda1b5f400d4f192709068edaac0556" [label="copy{src=/selenoid-ui, dest=/}" shape="note"];
  "sha256:ad0a1022b4f1bd26affa5f6cb72a4e5d50a3b9f06e04f7d6188dcaf18e4fef64" [label="sha256:ad0a1022b4f1bd26affa5f6cb72a4e5d50a3b9f06e04f7d6188dcaf18e4fef64" shape="plaintext"];
  "sha256:26fef163c869220234f29c9af807d1d2e408d3c97932341be83cd087aec2888f" -> "sha256:e20a8ff81d0ed5dc203d2ac3ff1eb6115cda1b5f400d4f192709068edaac0556" [label=""];
  "sha256:e20a8ff81d0ed5dc203d2ac3ff1eb6115cda1b5f400d4f192709068edaac0556" -> "sha256:ad0a1022b4f1bd26affa5f6cb72a4e5d50a3b9f06e04f7d6188dcaf18e4fef64" [label=""];
}

