[app/sources/318303173.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:8203b8fd0f1dc59d8f528147ffa79c117fb0fd6fced3e6cafba08bf2b942e63f" [label="/bin/sh -c apt-get update && apt-get -y install netcat && apt-get clean" shape="box"];
  "sha256:e49a11748d38419048f3a33a1f6a3fbbf6cca68273ce7cc3186f9784ec1bfac8" [label="mkdir{path=/app}" shape="note"];
  "sha256:956dad74c646564d889e57464ab650f6bff6209751e16a2c3395073bd82af6e9" [label="local://context" shape="ellipse"];
  "sha256:aafd7eecb87c8970e3d9f85081e79286a1c71da625ed31c884a0d38414d1f947" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:45a169db6170fa5306de749374c325b4a747a744a34d42a4876360d070771582" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:3da3e975e70ff546df0290d54eae5fd0b0a531820618d4bac71d44d4d4f42ab0" [label="copy{src=/config.yml, dest=/app/}" shape="note"];
  "sha256:1d1fa9e15f2dd670d2923f6af8545d17d55b35c5955e6aa7184a53670c44d99c" [label="copy{src=/run.sh, dest=/app/}" shape="note"];
  "sha256:e52585ee5e122a3787e4c3b6a45234eca029e3f6988817909b920556ca9fe355" [label="copy{src=/gateway.py, dest=/app/}" shape="note"];
  "sha256:34bad8e83598cb49fdc05a4c2bc2ca5d38f9ec5875eb9514f8a8a338ef77051d" [label="/bin/sh -c chmod +x ./run.sh" shape="box"];
  "sha256:d980821d689ec932d39721830eebcaca7818a92618ecb9201b21c5418c98af20" [label="sha256:d980821d689ec932d39721830eebcaca7818a92618ecb9201b21c5418c98af20" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:8203b8fd0f1dc59d8f528147ffa79c117fb0fd6fced3e6cafba08bf2b942e63f" [label=""];
  "sha256:8203b8fd0f1dc59d8f528147ffa79c117fb0fd6fced3e6cafba08bf2b942e63f" -> "sha256:e49a11748d38419048f3a33a1f6a3fbbf6cca68273ce7cc3186f9784ec1bfac8" [label=""];
  "sha256:e49a11748d38419048f3a33a1f6a3fbbf6cca68273ce7cc3186f9784ec1bfac8" -> "sha256:aafd7eecb87c8970e3d9f85081e79286a1c71da625ed31c884a0d38414d1f947" [label=""];
  "sha256:956dad74c646564d889e57464ab650f6bff6209751e16a2c3395073bd82af6e9" -> "sha256:aafd7eecb87c8970e3d9f85081e79286a1c71da625ed31c884a0d38414d1f947" [label=""];
  "sha256:aafd7eecb87c8970e3d9f85081e79286a1c71da625ed31c884a0d38414d1f947" -> "sha256:45a169db6170fa5306de749374c325b4a747a744a34d42a4876360d070771582" [label=""];
  "sha256:45a169db6170fa5306de749374c325b4a747a744a34d42a4876360d070771582" -> "sha256:3da3e975e70ff546df0290d54eae5fd0b0a531820618d4bac71d44d4d4f42ab0" [label=""];
  "sha256:956dad74c646564d889e57464ab650f6bff6209751e16a2c3395073bd82af6e9" -> "sha256:3da3e975e70ff546df0290d54eae5fd0b0a531820618d4bac71d44d4d4f42ab0" [label=""];
  "sha256:3da3e975e70ff546df0290d54eae5fd0b0a531820618d4bac71d44d4d4f42ab0" -> "sha256:1d1fa9e15f2dd670d2923f6af8545d17d55b35c5955e6aa7184a53670c44d99c" [label=""];
  "sha256:956dad74c646564d889e57464ab650f6bff6209751e16a2c3395073bd82af6e9" -> "sha256:1d1fa9e15f2dd670d2923f6af8545d17d55b35c5955e6aa7184a53670c44d99c" [label=""];
  "sha256:1d1fa9e15f2dd670d2923f6af8545d17d55b35c5955e6aa7184a53670c44d99c" -> "sha256:e52585ee5e122a3787e4c3b6a45234eca029e3f6988817909b920556ca9fe355" [label=""];
  "sha256:956dad74c646564d889e57464ab650f6bff6209751e16a2c3395073bd82af6e9" -> "sha256:e52585ee5e122a3787e4c3b6a45234eca029e3f6988817909b920556ca9fe355" [label=""];
  "sha256:e52585ee5e122a3787e4c3b6a45234eca029e3f6988817909b920556ca9fe355" -> "sha256:34bad8e83598cb49fdc05a4c2bc2ca5d38f9ec5875eb9514f8a8a338ef77051d" [label=""];
  "sha256:34bad8e83598cb49fdc05a4c2bc2ca5d38f9ec5875eb9514f8a8a338ef77051d" -> "sha256:d980821d689ec932d39721830eebcaca7818a92618ecb9201b21c5418c98af20" [label=""];
}

