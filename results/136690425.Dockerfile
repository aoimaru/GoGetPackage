[app/sources/136690425.Dockerfile]
digraph {
  "sha256:2a1a6b8226be91ad983e69513ba5e0ba707e9e5f5ef5bc45476e6241d7b7b950" [label="docker-image://docker.io/library/golang:1.12.5@sha256:5bc207d20bd9e97c57dc2ad013f2b02d982cc6e411d48bdc79d90bb601696650" shape="ellipse"];
  "sha256:e1508de5aebfde90a86ac4860a2d655c3eac71bda52913be703494f96008fd22" [label="/bin/sh -c apt-get update -y &&     apt-get install -y ca-certificates graphviz" shape="box"];
  "sha256:0c5beb78b29974b153f4a32f032788d3332fabb40c3c88fc9b0814e8709df20a" [label="local://context" shape="ellipse"];
  "sha256:c284a8f9c46f7660abbef3ebc1eae23442ee41454d0bb032d1a8e356da252ae2" [label="copy{src=/pprof-server, dest=/usr/local/bin/pprof-server}" shape="note"];
  "sha256:92946165705b7995a0308b3f1c97aad3b4de61b0cd0901351fe945059529f017" [label="copy{src=/flamegraph.pl, dest=/usr/local/bin/flamegraph.pl}" shape="note"];
  "sha256:b2385045ce64d82097e500507c42293d6ba3cc7cc5935c48d68fef1fc542318f" [label="sha256:b2385045ce64d82097e500507c42293d6ba3cc7cc5935c48d68fef1fc542318f" shape="plaintext"];
  "sha256:2a1a6b8226be91ad983e69513ba5e0ba707e9e5f5ef5bc45476e6241d7b7b950" -> "sha256:e1508de5aebfde90a86ac4860a2d655c3eac71bda52913be703494f96008fd22" [label=""];
  "sha256:e1508de5aebfde90a86ac4860a2d655c3eac71bda52913be703494f96008fd22" -> "sha256:c284a8f9c46f7660abbef3ebc1eae23442ee41454d0bb032d1a8e356da252ae2" [label=""];
  "sha256:0c5beb78b29974b153f4a32f032788d3332fabb40c3c88fc9b0814e8709df20a" -> "sha256:c284a8f9c46f7660abbef3ebc1eae23442ee41454d0bb032d1a8e356da252ae2" [label=""];
  "sha256:c284a8f9c46f7660abbef3ebc1eae23442ee41454d0bb032d1a8e356da252ae2" -> "sha256:92946165705b7995a0308b3f1c97aad3b4de61b0cd0901351fe945059529f017" [label=""];
  "sha256:0c5beb78b29974b153f4a32f032788d3332fabb40c3c88fc9b0814e8709df20a" -> "sha256:92946165705b7995a0308b3f1c97aad3b4de61b0cd0901351fe945059529f017" [label=""];
  "sha256:92946165705b7995a0308b3f1c97aad3b4de61b0cd0901351fe945059529f017" -> "sha256:b2385045ce64d82097e500507c42293d6ba3cc7cc5935c48d68fef1fc542318f" [label=""];
}

