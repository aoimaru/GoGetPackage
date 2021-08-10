[app/sources/376521444.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:2f68aca02752a84dec2e4a08f2f3eeda4b35c4c6eb77d66b28ea9d3f31b71337" [label="local://context" shape="ellipse"];
  "sha256:7475ea7f4e03b9eb8e1a9fdb6e93775c48c0d9319c263f138e3132560e71a4f9" [label="copy{src=/target/config.jar, dest=/app.jar}" shape="note"];
  "sha256:397d9350f44165875be1e9beeb821848dbdd0b73237b7b0106d0840fff99dbc2" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:a2462ad6984aea26d30cbf53ef7f19e9dfbdfd5cbc5a609f23f19f6ca90c5dfc" [label="sha256:a2462ad6984aea26d30cbf53ef7f19e9dfbdfd5cbc5a609f23f19f6ca90c5dfc" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:7475ea7f4e03b9eb8e1a9fdb6e93775c48c0d9319c263f138e3132560e71a4f9" [label=""];
  "sha256:2f68aca02752a84dec2e4a08f2f3eeda4b35c4c6eb77d66b28ea9d3f31b71337" -> "sha256:7475ea7f4e03b9eb8e1a9fdb6e93775c48c0d9319c263f138e3132560e71a4f9" [label=""];
  "sha256:7475ea7f4e03b9eb8e1a9fdb6e93775c48c0d9319c263f138e3132560e71a4f9" -> "sha256:397d9350f44165875be1e9beeb821848dbdd0b73237b7b0106d0840fff99dbc2" [label=""];
  "sha256:397d9350f44165875be1e9beeb821848dbdd0b73237b7b0106d0840fff99dbc2" -> "sha256:a2462ad6984aea26d30cbf53ef7f19e9dfbdfd5cbc5a609f23f19f6ca90c5dfc" [label=""];
}

