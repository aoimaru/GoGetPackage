[app/sources/437731462.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6f27b661d03a715df74bf127560df5f7364b1ec145790205cb2a465d17d2ee5a" [label="local://context" shape="ellipse"];
  "sha256:a2d3dc5da9ac9e9cbe10c36b2f13cea1a89b4b8067c3edbf2ad27f8d3df8d99d" [label="copy{src=/docker/contestrus/base.sh, dest=/base.sh}" shape="note"];
  "sha256:2d38391cc84f5f49517f9fc23ee459996f560dfe1a954e27b054d8e2cdec0d66" [label="/bin/sh -c /base.sh" shape="box"];
  "sha256:5905ae1a62072aa7dfa433a244cf5c6fdb8b1f60a1d03e226cfa8585fd83aa41" [label="copy{src=/docker/contestrus/ruby.sh, dest=/ruby.sh}" shape="note"];
  "sha256:f5557145eaf97ecde5b37367f34a92153934f7f0f53b3211e242a6b73f0c7a75" [label="/bin/sh -c /ruby.sh" shape="box"];
  "sha256:994c9c0a1e892b26df19ea86da151ca61b14e338d985746c1b170409921351b5" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:96d884c2e41f8c74f5fd1262df0393d8ba33465b0277e603450ab1046ea18d66" [label="/bin/sh -c /app/docker/contestrus/provision.sh" shape="box"];
  "sha256:0f7f211254a070cea5a172a2ef09e2f28600d67b69b5fba51dfa48bbf7d1d93e" [label="sha256:0f7f211254a070cea5a172a2ef09e2f28600d67b69b5fba51dfa48bbf7d1d93e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a2d3dc5da9ac9e9cbe10c36b2f13cea1a89b4b8067c3edbf2ad27f8d3df8d99d" [label=""];
  "sha256:6f27b661d03a715df74bf127560df5f7364b1ec145790205cb2a465d17d2ee5a" -> "sha256:a2d3dc5da9ac9e9cbe10c36b2f13cea1a89b4b8067c3edbf2ad27f8d3df8d99d" [label=""];
  "sha256:a2d3dc5da9ac9e9cbe10c36b2f13cea1a89b4b8067c3edbf2ad27f8d3df8d99d" -> "sha256:2d38391cc84f5f49517f9fc23ee459996f560dfe1a954e27b054d8e2cdec0d66" [label=""];
  "sha256:2d38391cc84f5f49517f9fc23ee459996f560dfe1a954e27b054d8e2cdec0d66" -> "sha256:5905ae1a62072aa7dfa433a244cf5c6fdb8b1f60a1d03e226cfa8585fd83aa41" [label=""];
  "sha256:6f27b661d03a715df74bf127560df5f7364b1ec145790205cb2a465d17d2ee5a" -> "sha256:5905ae1a62072aa7dfa433a244cf5c6fdb8b1f60a1d03e226cfa8585fd83aa41" [label=""];
  "sha256:5905ae1a62072aa7dfa433a244cf5c6fdb8b1f60a1d03e226cfa8585fd83aa41" -> "sha256:f5557145eaf97ecde5b37367f34a92153934f7f0f53b3211e242a6b73f0c7a75" [label=""];
  "sha256:f5557145eaf97ecde5b37367f34a92153934f7f0f53b3211e242a6b73f0c7a75" -> "sha256:994c9c0a1e892b26df19ea86da151ca61b14e338d985746c1b170409921351b5" [label=""];
  "sha256:6f27b661d03a715df74bf127560df5f7364b1ec145790205cb2a465d17d2ee5a" -> "sha256:994c9c0a1e892b26df19ea86da151ca61b14e338d985746c1b170409921351b5" [label=""];
  "sha256:994c9c0a1e892b26df19ea86da151ca61b14e338d985746c1b170409921351b5" -> "sha256:96d884c2e41f8c74f5fd1262df0393d8ba33465b0277e603450ab1046ea18d66" [label=""];
  "sha256:96d884c2e41f8c74f5fd1262df0393d8ba33465b0277e603450ab1046ea18d66" -> "sha256:0f7f211254a070cea5a172a2ef09e2f28600d67b69b5fba51dfa48bbf7d1d93e" [label=""];
}

