[app/sources/423654646.Dockerfile]
digraph {
  "sha256:fd57cf4d7ecaa5b38f80411ef3f2aac415698ecafac7525d60830d64eaf2964b" [label="docker-image://docker.io/library/python:3.7-alpine3.8" shape="ellipse"];
  "sha256:2d3bfa373129f91748c6a2b3a0e5494c5c24e58474bf67ccdf50338faff37f14" [label="/bin/sh -c apk add --no-cache gcc musl-dev" shape="box"];
  "sha256:f532c279a2f4d3e8f39febb9f009fd89b8b46f5f920456ab7b9a8b323d88cdc2" [label="local://context" shape="ellipse"];
  "sha256:19a21df6227c3b5c7e5dab07f5dd0e1476ce541e711d28483cea81012b979374" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:b1bbb43b7eb44fc1a41c4a2d47e6d965f74fbf1b4701e0ff8fac2a326436fb7d" [label="/bin/sh -c cd /app &&         pip install -e .[tests]" shape="box"];
  "sha256:0d2a36a14c2d82c0cf82f40b8ea38221a1e87e5857d9c46e8150a373ad3bcf50" [label="sha256:0d2a36a14c2d82c0cf82f40b8ea38221a1e87e5857d9c46e8150a373ad3bcf50" shape="plaintext"];
  "sha256:fd57cf4d7ecaa5b38f80411ef3f2aac415698ecafac7525d60830d64eaf2964b" -> "sha256:2d3bfa373129f91748c6a2b3a0e5494c5c24e58474bf67ccdf50338faff37f14" [label=""];
  "sha256:2d3bfa373129f91748c6a2b3a0e5494c5c24e58474bf67ccdf50338faff37f14" -> "sha256:19a21df6227c3b5c7e5dab07f5dd0e1476ce541e711d28483cea81012b979374" [label=""];
  "sha256:f532c279a2f4d3e8f39febb9f009fd89b8b46f5f920456ab7b9a8b323d88cdc2" -> "sha256:19a21df6227c3b5c7e5dab07f5dd0e1476ce541e711d28483cea81012b979374" [label=""];
  "sha256:19a21df6227c3b5c7e5dab07f5dd0e1476ce541e711d28483cea81012b979374" -> "sha256:b1bbb43b7eb44fc1a41c4a2d47e6d965f74fbf1b4701e0ff8fac2a326436fb7d" [label=""];
  "sha256:b1bbb43b7eb44fc1a41c4a2d47e6d965f74fbf1b4701e0ff8fac2a326436fb7d" -> "sha256:0d2a36a14c2d82c0cf82f40b8ea38221a1e87e5857d9c46e8150a373ad3bcf50" [label=""];
}

