[app/sources/298365319.Dockerfile]
digraph {
  "sha256:50ea120078db5428f4a45e5c69e149f83ceefd122dc3f50d2f9d6e54cf6f8a21" [label="local://context" shape="ellipse"];
  "sha256:259553d1c3c764ce9698fccc633cfd1f0b0143309d525b2250ba41002fcc0762" [label="docker-image://docker.io/dmcgowan/token-server:simple" shape="ellipse"];
  "sha256:0130dec9ee691426774ba8108f2a0afe4683dd2f640838fe61f4d856e740a674" [label="copy{src=/.htpasswd, dest=/.htpasswd}" shape="note"];
  "sha256:4ad9cbab7718efd6c5ffb6f64a1eb112713a4cda0484199ffc06c420af28fbe8" [label="copy{src=/certs/auth.localregistry.cert, dest=/tls.cert}" shape="note"];
  "sha256:6fe1128aacf6c24c569e2407ef3ba700d96b09db1cefb5b11ca01ae4263a682d" [label="copy{src=/certs/auth.localregistry.key, dest=/tls.key}" shape="note"];
  "sha256:c737e69f012aa973b87a39d1e8111738e5ebd90e50d6fce810bd97ec9c5f5b8f" [label="copy{src=/certs/signing.key, dest=/sign.key}" shape="note"];
  "sha256:cad67f4255fc5b905664b12a13d5373b9cd271a228bb6ca3b308b5d1fec45eeb" [label="sha256:cad67f4255fc5b905664b12a13d5373b9cd271a228bb6ca3b308b5d1fec45eeb" shape="plaintext"];
  "sha256:259553d1c3c764ce9698fccc633cfd1f0b0143309d525b2250ba41002fcc0762" -> "sha256:0130dec9ee691426774ba8108f2a0afe4683dd2f640838fe61f4d856e740a674" [label=""];
  "sha256:50ea120078db5428f4a45e5c69e149f83ceefd122dc3f50d2f9d6e54cf6f8a21" -> "sha256:0130dec9ee691426774ba8108f2a0afe4683dd2f640838fe61f4d856e740a674" [label=""];
  "sha256:0130dec9ee691426774ba8108f2a0afe4683dd2f640838fe61f4d856e740a674" -> "sha256:4ad9cbab7718efd6c5ffb6f64a1eb112713a4cda0484199ffc06c420af28fbe8" [label=""];
  "sha256:50ea120078db5428f4a45e5c69e149f83ceefd122dc3f50d2f9d6e54cf6f8a21" -> "sha256:4ad9cbab7718efd6c5ffb6f64a1eb112713a4cda0484199ffc06c420af28fbe8" [label=""];
  "sha256:4ad9cbab7718efd6c5ffb6f64a1eb112713a4cda0484199ffc06c420af28fbe8" -> "sha256:6fe1128aacf6c24c569e2407ef3ba700d96b09db1cefb5b11ca01ae4263a682d" [label=""];
  "sha256:50ea120078db5428f4a45e5c69e149f83ceefd122dc3f50d2f9d6e54cf6f8a21" -> "sha256:6fe1128aacf6c24c569e2407ef3ba700d96b09db1cefb5b11ca01ae4263a682d" [label=""];
  "sha256:6fe1128aacf6c24c569e2407ef3ba700d96b09db1cefb5b11ca01ae4263a682d" -> "sha256:c737e69f012aa973b87a39d1e8111738e5ebd90e50d6fce810bd97ec9c5f5b8f" [label=""];
  "sha256:50ea120078db5428f4a45e5c69e149f83ceefd122dc3f50d2f9d6e54cf6f8a21" -> "sha256:c737e69f012aa973b87a39d1e8111738e5ebd90e50d6fce810bd97ec9c5f5b8f" [label=""];
  "sha256:c737e69f012aa973b87a39d1e8111738e5ebd90e50d6fce810bd97ec9c5f5b8f" -> "sha256:cad67f4255fc5b905664b12a13d5373b9cd271a228bb6ca3b308b5d1fec45eeb" [label=""];
}

