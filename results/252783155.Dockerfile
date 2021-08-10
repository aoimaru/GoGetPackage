[app/sources/252783155.Dockerfile]
digraph {
  "sha256:9b7e71416452419c9c8c2a46ddd831b86c727218844a71cdb36f8a101f44ed23" [label="docker-image://docker.io/library/ubuntu:15.10" shape="ellipse"];
  "sha256:de313aab2af60287275480fb5fdbaaf633a65c566f3fa63182758887fe5c6941" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:a45ad4364b831f988d19fe6aae26195e89b5342f9dada473c8ad204d11fb78d1" [label="/bin/sh -c echo >/etc/apt/sources.list.d/heroku.list deb http://toolbelt.heroku.com/ubuntu ./" shape="box"];
  "sha256:5d8ef356b612e63fbbc9d7d6be2c2c5a8668d39825dc2bc4673bf16832d03a98" [label="/bin/sh -c curl -sL https://toolbelt.heroku.com/apt/release.key | apt-key add -" shape="box"];
  "sha256:9364828f068181510148d1c8f285ffc7233e2a75c6935b689fa630192ca91649" [label="/bin/sh -c apt-get update && apt-get install -y heroku-toolbelt ruby" shape="box"];
  "sha256:819c7b2f6e473b32cc4754ba95fc4b11933992443dd906172f271b79765cf608" [label="sha256:819c7b2f6e473b32cc4754ba95fc4b11933992443dd906172f271b79765cf608" shape="plaintext"];
  "sha256:9b7e71416452419c9c8c2a46ddd831b86c727218844a71cdb36f8a101f44ed23" -> "sha256:de313aab2af60287275480fb5fdbaaf633a65c566f3fa63182758887fe5c6941" [label=""];
  "sha256:de313aab2af60287275480fb5fdbaaf633a65c566f3fa63182758887fe5c6941" -> "sha256:a45ad4364b831f988d19fe6aae26195e89b5342f9dada473c8ad204d11fb78d1" [label=""];
  "sha256:a45ad4364b831f988d19fe6aae26195e89b5342f9dada473c8ad204d11fb78d1" -> "sha256:5d8ef356b612e63fbbc9d7d6be2c2c5a8668d39825dc2bc4673bf16832d03a98" [label=""];
  "sha256:5d8ef356b612e63fbbc9d7d6be2c2c5a8668d39825dc2bc4673bf16832d03a98" -> "sha256:9364828f068181510148d1c8f285ffc7233e2a75c6935b689fa630192ca91649" [label=""];
  "sha256:9364828f068181510148d1c8f285ffc7233e2a75c6935b689fa630192ca91649" -> "sha256:819c7b2f6e473b32cc4754ba95fc4b11933992443dd906172f271b79765cf608" [label=""];
}

