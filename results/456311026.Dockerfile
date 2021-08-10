[app/sources/456311026.Dockerfile]
digraph {
  "sha256:b8910018ceacaae644967f8146db9178b2b249c183bf52ef45c1afdea3597743" [label="docker-image://docker.io/crossbario/autobahn-python-armhf:latest" shape="ellipse"];
  "sha256:451a6d5f32c1eb1520364a33e0f0b4347293ea31c4c942d1b8de1da7bf61b221" [label="/bin/sh -c pip install pyopenssl service_identity RPi.GPIO &&     rm -rf /app/*" shape="box"];
  "sha256:a7daf05901f7bfeedc848fc85ffeb044f265c5170b3cbec9307b8e47b68aa9e3" [label="local://context" shape="ellipse"];
  "sha256:8e70f4c5a54c86b1d936a8aa8b379eb90d617ac53b56518900dccd3a8bbfdeb0" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:4695616775c1e58e931880dfed74464d2c1502ff9786db501b9189cc663e6131" [label="sha256:4695616775c1e58e931880dfed74464d2c1502ff9786db501b9189cc663e6131" shape="plaintext"];
  "sha256:b8910018ceacaae644967f8146db9178b2b249c183bf52ef45c1afdea3597743" -> "sha256:451a6d5f32c1eb1520364a33e0f0b4347293ea31c4c942d1b8de1da7bf61b221" [label=""];
  "sha256:451a6d5f32c1eb1520364a33e0f0b4347293ea31c4c942d1b8de1da7bf61b221" -> "sha256:8e70f4c5a54c86b1d936a8aa8b379eb90d617ac53b56518900dccd3a8bbfdeb0" [label=""];
  "sha256:a7daf05901f7bfeedc848fc85ffeb044f265c5170b3cbec9307b8e47b68aa9e3" -> "sha256:8e70f4c5a54c86b1d936a8aa8b379eb90d617ac53b56518900dccd3a8bbfdeb0" [label=""];
  "sha256:8e70f4c5a54c86b1d936a8aa8b379eb90d617ac53b56518900dccd3a8bbfdeb0" -> "sha256:4695616775c1e58e931880dfed74464d2c1502ff9786db501b9189cc663e6131" [label=""];
}

