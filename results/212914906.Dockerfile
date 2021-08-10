[app/sources/212914906.Dockerfile]
digraph {
  "sha256:2abd37383b26225ae3e80c14d66f166fa84e8516e8fc237ae7d0b22098f61998" [label="https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64" shape="ellipse"];
  "sha256:53504bdeb1e07c312e863de60828d8e39afb8fc38891e967fbfa4c55d2201259" [label="docker-image://docker.io/nodesource/node:4" shape="ellipse"];
  "sha256:872e0ae1a4e51043fdd025b46bf154ec4801c8ce33cc6c2953baa8da5e000084" [label="copy{src=/dumb-init_1.1.1_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:3326ee8bf41203baabbafaaf6950930b03e4c923f201554ca85c113e17db0eac" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:614333c110299203f0708024eda3019f76fcb6efd18acb1627d9149bb02cd28a" [label="sha256:614333c110299203f0708024eda3019f76fcb6efd18acb1627d9149bb02cd28a" shape="plaintext"];
  "sha256:53504bdeb1e07c312e863de60828d8e39afb8fc38891e967fbfa4c55d2201259" -> "sha256:872e0ae1a4e51043fdd025b46bf154ec4801c8ce33cc6c2953baa8da5e000084" [label=""];
  "sha256:2abd37383b26225ae3e80c14d66f166fa84e8516e8fc237ae7d0b22098f61998" -> "sha256:872e0ae1a4e51043fdd025b46bf154ec4801c8ce33cc6c2953baa8da5e000084" [label=""];
  "sha256:872e0ae1a4e51043fdd025b46bf154ec4801c8ce33cc6c2953baa8da5e000084" -> "sha256:3326ee8bf41203baabbafaaf6950930b03e4c923f201554ca85c113e17db0eac" [label=""];
  "sha256:3326ee8bf41203baabbafaaf6950930b03e4c923f201554ca85c113e17db0eac" -> "sha256:614333c110299203f0708024eda3019f76fcb6efd18acb1627d9149bb02cd28a" [label=""];
}

