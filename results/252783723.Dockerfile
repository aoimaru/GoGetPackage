[app/sources/252783723.Dockerfile]
digraph {
  "sha256:7afc419cd08ce8cfbbc947b278f408161bdfd69edd939d2f475876edbccf2189" [label="docker-image://docker.io/progrium/cedarish:cedar" shape="ellipse"];
  "sha256:2243813c7145e5006d3466518953b40e92d6959568e7484254a789266b066638" [label="/bin/sh -c useradd slugbuilder --home-dir /app" shape="box"];
  "sha256:ababff9d44bb8b36c8cddfda014346e8f5a767054d9f2a107bfbe758cc5776c8" [label="local://context" shape="ellipse"];
  "sha256:9e1ea4e901972a219f98973cb63bf8c229fb3f5000f926cec7031a2eda712071" [label="copy{src=/builder, dest=/tmp/builder}" shape="note"];
  "sha256:b0ddfcac7db6058bc258b70aa09c464a9409de61cc984738628f1826b5f80b73" [label="/bin/sh -c /tmp/builder/install-buildpacks" shape="box"];
  "sha256:69c5546838478b451c07a1f109cb02f0452a6277d65b712f7ef4caf0a7bdd455" [label="sha256:69c5546838478b451c07a1f109cb02f0452a6277d65b712f7ef4caf0a7bdd455" shape="plaintext"];
  "sha256:7afc419cd08ce8cfbbc947b278f408161bdfd69edd939d2f475876edbccf2189" -> "sha256:2243813c7145e5006d3466518953b40e92d6959568e7484254a789266b066638" [label=""];
  "sha256:2243813c7145e5006d3466518953b40e92d6959568e7484254a789266b066638" -> "sha256:9e1ea4e901972a219f98973cb63bf8c229fb3f5000f926cec7031a2eda712071" [label=""];
  "sha256:ababff9d44bb8b36c8cddfda014346e8f5a767054d9f2a107bfbe758cc5776c8" -> "sha256:9e1ea4e901972a219f98973cb63bf8c229fb3f5000f926cec7031a2eda712071" [label=""];
  "sha256:9e1ea4e901972a219f98973cb63bf8c229fb3f5000f926cec7031a2eda712071" -> "sha256:b0ddfcac7db6058bc258b70aa09c464a9409de61cc984738628f1826b5f80b73" [label=""];
  "sha256:b0ddfcac7db6058bc258b70aa09c464a9409de61cc984738628f1826b5f80b73" -> "sha256:69c5546838478b451c07a1f109cb02f0452a6277d65b712f7ef4caf0a7bdd455" [label=""];
}

