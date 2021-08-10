[app/sources/343395344.Dockerfile]
digraph {
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" [label="docker-image://docker.io/library/buildpack-deps:jessie-curl" shape="ellipse"];
  "sha256:62f3835b94d59591813cbf1a0927a2d086f1c38d56dd0fc185ca12e06677c6e6" [label="/bin/sh -c apt-get update \t&& apt-get install -y unzip libelf1 \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \t&& curl -SL \"https://github.com/facebook/flow/releases/download/v0.15.0/flow-linux64-v0.15.0.zip\" -o \"flow-linux64-v0.15.0.zip\" \t&& unzip \"flow-linux64-v0.15.0.zip\" -d /usr/local \t&& rm \"flow-linux64-v0.15.0.zip\"" shape="box"];
  "sha256:fbc4a018e9ad1ceda289e3bbdc685dc62ffabd7a8837cedbbab3407ababba968" [label="mkdir{path=/app}" shape="note"];
  "sha256:1b18d830ee06f00d4dae8a7f0f249db8c82ecba5b94c015706e83c042e474e8e" [label="sha256:1b18d830ee06f00d4dae8a7f0f249db8c82ecba5b94c015706e83c042e474e8e" shape="plaintext"];
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" -> "sha256:62f3835b94d59591813cbf1a0927a2d086f1c38d56dd0fc185ca12e06677c6e6" [label=""];
  "sha256:62f3835b94d59591813cbf1a0927a2d086f1c38d56dd0fc185ca12e06677c6e6" -> "sha256:fbc4a018e9ad1ceda289e3bbdc685dc62ffabd7a8837cedbbab3407ababba968" [label=""];
  "sha256:fbc4a018e9ad1ceda289e3bbdc685dc62ffabd7a8837cedbbab3407ababba968" -> "sha256:1b18d830ee06f00d4dae8a7f0f249db8c82ecba5b94c015706e83c042e474e8e" [label=""];
}

