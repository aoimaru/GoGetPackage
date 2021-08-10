[app/sources/463260051.Dockerfile]
digraph {
  "sha256:f43cc9cb0445a0536bfa2fcecd136da5b816415490f961c0f7827882606df755" [label="docker-image://docker.io/library/node:8.9.4-alpine" shape="ellipse"];
  "sha256:d0e2faa4ae43d67aa9abea86af74845d8efd7dc7ee8f289b4e127ff4959e5a41" [label="local://context" shape="ellipse"];
  "sha256:6b5cd1924596273bca81c9e191f97dfd9bf5c7f03f35307a41cb2a7be731d99d" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:3c0aaa2c8ee965c8152cececd176eef3d2f58307d401d201e814e5034dcfc95f" [label="/bin/sh -c npm i && mkdir /ng-app && mv ./node_modules ./ng-app" shape="box"];
  "sha256:b23b2e337bddbb4b10de0b10fab5ab7b8183312e0a0b3c868ff2ca0f0c76cc36" [label="mkdir{path=/ng-app}" shape="note"];
  "sha256:6aeba1f77a8b8eb2a5d21ea102e8acb7630aa554917e55885d28f5d20e75176b" [label="copy{src=/, dest=/ng-app/}" shape="note"];
  "sha256:ba2c24de2e829ce6c39a5550680715b17eb8aa37ed10eb7c18b49fe1cd5bb22d" [label="sha256:ba2c24de2e829ce6c39a5550680715b17eb8aa37ed10eb7c18b49fe1cd5bb22d" shape="plaintext"];
  "sha256:f43cc9cb0445a0536bfa2fcecd136da5b816415490f961c0f7827882606df755" -> "sha256:6b5cd1924596273bca81c9e191f97dfd9bf5c7f03f35307a41cb2a7be731d99d" [label=""];
  "sha256:d0e2faa4ae43d67aa9abea86af74845d8efd7dc7ee8f289b4e127ff4959e5a41" -> "sha256:6b5cd1924596273bca81c9e191f97dfd9bf5c7f03f35307a41cb2a7be731d99d" [label=""];
  "sha256:6b5cd1924596273bca81c9e191f97dfd9bf5c7f03f35307a41cb2a7be731d99d" -> "sha256:3c0aaa2c8ee965c8152cececd176eef3d2f58307d401d201e814e5034dcfc95f" [label=""];
  "sha256:3c0aaa2c8ee965c8152cececd176eef3d2f58307d401d201e814e5034dcfc95f" -> "sha256:b23b2e337bddbb4b10de0b10fab5ab7b8183312e0a0b3c868ff2ca0f0c76cc36" [label=""];
  "sha256:b23b2e337bddbb4b10de0b10fab5ab7b8183312e0a0b3c868ff2ca0f0c76cc36" -> "sha256:6aeba1f77a8b8eb2a5d21ea102e8acb7630aa554917e55885d28f5d20e75176b" [label=""];
  "sha256:d0e2faa4ae43d67aa9abea86af74845d8efd7dc7ee8f289b4e127ff4959e5a41" -> "sha256:6aeba1f77a8b8eb2a5d21ea102e8acb7630aa554917e55885d28f5d20e75176b" [label=""];
  "sha256:6aeba1f77a8b8eb2a5d21ea102e8acb7630aa554917e55885d28f5d20e75176b" -> "sha256:ba2c24de2e829ce6c39a5550680715b17eb8aa37ed10eb7c18b49fe1cd5bb22d" [label=""];
}

