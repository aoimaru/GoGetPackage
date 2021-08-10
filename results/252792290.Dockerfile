[app/sources/252792290.Dockerfile]
digraph {
  "sha256:fb3d4f8843fc2226e7f7104810b788740a52098c82d8edb9730c0b48e7b21a99" [label="docker-image://docker.io/dancinllama/dockerdx:latest" shape="ellipse"];
  "sha256:bb611e52934af1ef317dbad9c3df519fe82c4a1ba01010248e769e009588293f" [label="/bin/sh -c git clone https://github.com/wadewegner/sfdx-waw-plugin.git && apt-get update && apt-get install -yq curl && curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -yq nodejs build-essential && cd sfdx-waw-plugin && npm install && sfdx plugins:link . && sfdx plugins:install sfdx-waw-plugin && cd .." shape="box"];
  "sha256:be6763e0ba7a63c7345529e9a2b8263c3f01c2c75af3ccb106222c3267edff75" [label="sha256:be6763e0ba7a63c7345529e9a2b8263c3f01c2c75af3ccb106222c3267edff75" shape="plaintext"];
  "sha256:fb3d4f8843fc2226e7f7104810b788740a52098c82d8edb9730c0b48e7b21a99" -> "sha256:bb611e52934af1ef317dbad9c3df519fe82c4a1ba01010248e769e009588293f" [label=""];
  "sha256:bb611e52934af1ef317dbad9c3df519fe82c4a1ba01010248e769e009588293f" -> "sha256:be6763e0ba7a63c7345529e9a2b8263c3f01c2c75af3ccb106222c3267edff75" [label=""];
}

