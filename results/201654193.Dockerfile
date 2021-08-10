[app/sources/201654193.Dockerfile]
digraph {
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" [label="docker-image://gcr.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:77b8ff2e35cb43d3037d60ec6c3ccdf0730b38c918afccb3a5404a4737344065" [label="/bin/sh -c pip install scikit-learn" shape="box"];
  "sha256:ddeabebb07c2f0cf55dae885b320c025ed4850eca71070d63322cda721cccc67" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:755ede9e8e999abcf08daf34f1c2f1ffdcead8330f42b9d9e2670df038931ed1" [label="local://context" shape="ellipse"];
  "sha256:bdca1f1a2a8440424206975f26b00b0b9becad1c78c19c56e87948753da489d7" [label="copy{src=/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:1665b59ff2f24217452801c8f7e94251c0fe81eb8ab11c65763e137346a59c51" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:797ca391a7df6be317383c5e9a8b444a8d852e41fda3771540c42280d2596a0b" [label="sha256:797ca391a7df6be317383c5e9a8b444a8d852e41fda3771540c42280d2596a0b" shape="plaintext"];
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" -> "sha256:77b8ff2e35cb43d3037d60ec6c3ccdf0730b38c918afccb3a5404a4737344065" [label=""];
  "sha256:77b8ff2e35cb43d3037d60ec6c3ccdf0730b38c918afccb3a5404a4737344065" -> "sha256:ddeabebb07c2f0cf55dae885b320c025ed4850eca71070d63322cda721cccc67" [label=""];
  "sha256:ddeabebb07c2f0cf55dae885b320c025ed4850eca71070d63322cda721cccc67" -> "sha256:bdca1f1a2a8440424206975f26b00b0b9becad1c78c19c56e87948753da489d7" [label=""];
  "sha256:755ede9e8e999abcf08daf34f1c2f1ffdcead8330f42b9d9e2670df038931ed1" -> "sha256:bdca1f1a2a8440424206975f26b00b0b9becad1c78c19c56e87948753da489d7" [label=""];
  "sha256:bdca1f1a2a8440424206975f26b00b0b9becad1c78c19c56e87948753da489d7" -> "sha256:1665b59ff2f24217452801c8f7e94251c0fe81eb8ab11c65763e137346a59c51" [label=""];
  "sha256:1665b59ff2f24217452801c8f7e94251c0fe81eb8ab11c65763e137346a59c51" -> "sha256:797ca391a7df6be317383c5e9a8b444a8d852e41fda3771540c42280d2596a0b" [label=""];
}

