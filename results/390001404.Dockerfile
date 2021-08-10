[app/sources/390001404.Dockerfile]
digraph {
  "sha256:b3a3f9219aa8cca6e197e077ddf8ae771e776a6f5a1b96cff606634f45c6de46" [label="docker-image://docker.io/jmfirth/webpack:latest" shape="ellipse"];
  "sha256:dceef2e878786c437bbcb178777103dfc6a782b0341e5626a6bb10af8042fc55" [label="local://context" shape="ellipse"];
  "sha256:8740ba14de933649642c16515c76458e406adfef1f81829d5540b5337edaadd5" [label="copy{src=/build.sh, dest=/build.sh}" shape="note"];
  "sha256:dbbb17b5866ac402bd34c8af5e2b131582b3ff999ee2fd4fecf568c98ec06c61" [label="sha256:dbbb17b5866ac402bd34c8af5e2b131582b3ff999ee2fd4fecf568c98ec06c61" shape="plaintext"];
  "sha256:b3a3f9219aa8cca6e197e077ddf8ae771e776a6f5a1b96cff606634f45c6de46" -> "sha256:8740ba14de933649642c16515c76458e406adfef1f81829d5540b5337edaadd5" [label=""];
  "sha256:dceef2e878786c437bbcb178777103dfc6a782b0341e5626a6bb10af8042fc55" -> "sha256:8740ba14de933649642c16515c76458e406adfef1f81829d5540b5337edaadd5" [label=""];
  "sha256:8740ba14de933649642c16515c76458e406adfef1f81829d5540b5337edaadd5" -> "sha256:dbbb17b5866ac402bd34c8af5e2b131582b3ff999ee2fd4fecf568c98ec06c61" [label=""];
}

