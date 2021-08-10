[app/sources/375217944.Dockerfile]
digraph {
  "sha256:c9190d937ea1bf55d1a6f7bf19ad48507c561c8117556fd421abcfe6e1462230" [label="docker-image://docker.io/library/node:10.15.1-stretch-slim" shape="ellipse"];
  "sha256:0ec849890d3e979f8c659724d97ac634fc14878e9e87c3a8f01a8877425c4a7f" [label="/bin/sh -c apt-get update && apt-get install -y python curl bash build-essential wget \t&& wget https://dl.minio.io/client/mc/release/linux-amd64/mc && chmod +x mc     \t&& mv mc /usr/bin/mc" shape="box"];
  "sha256:ba3ed8b2c70eafb90b10dadb95aa2ba5ea8502123ae152b96c440ef66e06da54" [label="/bin/sh -c curl -sSL https://sdk.cloud.google.com | bash" shape="box"];
  "sha256:8b3553b6939cebf873baa959d1fee90a40d478e93a27a3ae220d3016d36b0862" [label="mkdir{path=/app}" shape="note"];
  "sha256:c41fcec861c4e4c8f81ce4b5c7a29f871221d839fdf8e82e47e17e7fd5abb200" [label="local://context" shape="ellipse"];
  "sha256:88346c7f238063049d79f0d2b0787270e477b2749870b204ee5fba1ea6917c09" [label="copy{src=/site.tar.gz, dest=/app/}" shape="note"];
  "sha256:95138464102af143abd4ba237595b5657fa803e4c2a041d554d53ec6b75dd9aa" [label="copy{src=/splat-sidecar, dest=/app/}" shape="note"];
  "sha256:f0f5e30232fdbab31dc66356b37ad67fd9fde8a8f43a79538de46ad4f4c5fe2c" [label="copy{src=/handler.sh, dest=/app/}" shape="note"];
  "sha256:bdd6181198d9a973996fd566ed29c74ed8e497312eea716df10c1a035eb398c8" [label="/bin/sh -c tar xzvf site.tar.gz && cd site-legacy && cd /app/site-legacy/ && npm install    && cd .. && chmod 755 splat-sidecar handler.sh" shape="box"];
  "sha256:27ac7131bf8f1d52dd43b5182d67c6f3bbc43836a0db98627313fd0db73ce4c5" [label="sha256:27ac7131bf8f1d52dd43b5182d67c6f3bbc43836a0db98627313fd0db73ce4c5" shape="plaintext"];
  "sha256:c9190d937ea1bf55d1a6f7bf19ad48507c561c8117556fd421abcfe6e1462230" -> "sha256:0ec849890d3e979f8c659724d97ac634fc14878e9e87c3a8f01a8877425c4a7f" [label=""];
  "sha256:0ec849890d3e979f8c659724d97ac634fc14878e9e87c3a8f01a8877425c4a7f" -> "sha256:ba3ed8b2c70eafb90b10dadb95aa2ba5ea8502123ae152b96c440ef66e06da54" [label=""];
  "sha256:ba3ed8b2c70eafb90b10dadb95aa2ba5ea8502123ae152b96c440ef66e06da54" -> "sha256:8b3553b6939cebf873baa959d1fee90a40d478e93a27a3ae220d3016d36b0862" [label=""];
  "sha256:8b3553b6939cebf873baa959d1fee90a40d478e93a27a3ae220d3016d36b0862" -> "sha256:88346c7f238063049d79f0d2b0787270e477b2749870b204ee5fba1ea6917c09" [label=""];
  "sha256:c41fcec861c4e4c8f81ce4b5c7a29f871221d839fdf8e82e47e17e7fd5abb200" -> "sha256:88346c7f238063049d79f0d2b0787270e477b2749870b204ee5fba1ea6917c09" [label=""];
  "sha256:88346c7f238063049d79f0d2b0787270e477b2749870b204ee5fba1ea6917c09" -> "sha256:95138464102af143abd4ba237595b5657fa803e4c2a041d554d53ec6b75dd9aa" [label=""];
  "sha256:c41fcec861c4e4c8f81ce4b5c7a29f871221d839fdf8e82e47e17e7fd5abb200" -> "sha256:95138464102af143abd4ba237595b5657fa803e4c2a041d554d53ec6b75dd9aa" [label=""];
  "sha256:95138464102af143abd4ba237595b5657fa803e4c2a041d554d53ec6b75dd9aa" -> "sha256:f0f5e30232fdbab31dc66356b37ad67fd9fde8a8f43a79538de46ad4f4c5fe2c" [label=""];
  "sha256:c41fcec861c4e4c8f81ce4b5c7a29f871221d839fdf8e82e47e17e7fd5abb200" -> "sha256:f0f5e30232fdbab31dc66356b37ad67fd9fde8a8f43a79538de46ad4f4c5fe2c" [label=""];
  "sha256:f0f5e30232fdbab31dc66356b37ad67fd9fde8a8f43a79538de46ad4f4c5fe2c" -> "sha256:bdd6181198d9a973996fd566ed29c74ed8e497312eea716df10c1a035eb398c8" [label=""];
  "sha256:bdd6181198d9a973996fd566ed29c74ed8e497312eea716df10c1a035eb398c8" -> "sha256:27ac7131bf8f1d52dd43b5182d67c6f3bbc43836a0db98627313fd0db73ce4c5" [label=""];
}

