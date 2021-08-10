[app/sources/172469229.Dockerfile]
digraph {
  "sha256:9d92c234c3968ac363b347f0d0c2cb36ab7489aca65670e76d5062145999bb51" [label="docker-image://docker.io/certbot/certbot:latest" shape="ellipse"];
  "sha256:103698bd3565c174b18e5aa447ae02b5c0c413ba50671cf3088b4685a77fcc62" [label="local://context" shape="ellipse"];
  "sha256:d5a59f1865f9ef5d55ed4ff124993d077d9b08c828a3fb5693ecddfce263dc4c" [label="copy{src=/, dest=/src/certbot-dns-rfc2136}" shape="note"];
  "sha256:2e93eb51c27f01b182d31a7dac0c3c9b73b87c2f94da2e64ce7f5a5b60d665bc" [label="/bin/sh -c pip install --constraint docker_constraints.txt --no-cache-dir --editable src/certbot-dns-rfc2136" shape="box"];
  "sha256:66964cac7c56dd641ac79e5f6b75ce221fd4e9da2f55c6e7b09bdfb1a1517e46" [label="sha256:66964cac7c56dd641ac79e5f6b75ce221fd4e9da2f55c6e7b09bdfb1a1517e46" shape="plaintext"];
  "sha256:9d92c234c3968ac363b347f0d0c2cb36ab7489aca65670e76d5062145999bb51" -> "sha256:d5a59f1865f9ef5d55ed4ff124993d077d9b08c828a3fb5693ecddfce263dc4c" [label=""];
  "sha256:103698bd3565c174b18e5aa447ae02b5c0c413ba50671cf3088b4685a77fcc62" -> "sha256:d5a59f1865f9ef5d55ed4ff124993d077d9b08c828a3fb5693ecddfce263dc4c" [label=""];
  "sha256:d5a59f1865f9ef5d55ed4ff124993d077d9b08c828a3fb5693ecddfce263dc4c" -> "sha256:2e93eb51c27f01b182d31a7dac0c3c9b73b87c2f94da2e64ce7f5a5b60d665bc" [label=""];
  "sha256:2e93eb51c27f01b182d31a7dac0c3c9b73b87c2f94da2e64ce7f5a5b60d665bc" -> "sha256:66964cac7c56dd641ac79e5f6b75ce221fd4e9da2f55c6e7b09bdfb1a1517e46" [label=""];
}

