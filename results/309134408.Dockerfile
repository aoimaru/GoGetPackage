[app/sources/309134408.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:2706b9ccc479e3fb2c7b0cb183c398de033444b2fa85689d0780a60ab4ce11d7" [label="/bin/sh -c apk add --no-cache --virtual curl" shape="box"];
  "sha256:06e6222e56999dda932c398e3f40d16af9426111597f3480da9fb31864ef0bc6" [label="mkdir{path=/opt}" shape="note"];
  "sha256:6ccd008db55b89c6ad2bb7bbcc8364d7cbd02b223a48672a46e8ef59715b66bd" [label="local://context" shape="ellipse"];
  "sha256:3ccd7c6dc124f659a90f16a304623efe8157abc48434a45a59957995def5f5fc" [label="copy{src=/package.json, dest=/opt/},copy{src=/package-lock.json*, dest=/opt/}" shape="note"];
  "sha256:2a4f97da588d98fc5529871140dc2a0b572f168583e96f53d62a819878a3b170" [label="/bin/sh -c npm install && npm cache clean --force" shape="box"];
  "sha256:2f27d6b7dff62936b84bda4e5ad5c79f7e1c68f6757a50a8aaf4dae0fdc07060" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:b1e04f3d2b0b7a594d7930b6bf9c9ab49288c69a7b9cc114ce955a873cee2384" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:f4777e352f449ef63689eb6e4f0c6a6e3de2535d083a0f0c9120b05bf87dc6c1" [label="sha256:f4777e352f449ef63689eb6e4f0c6a6e3de2535d083a0f0c9120b05bf87dc6c1" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:2706b9ccc479e3fb2c7b0cb183c398de033444b2fa85689d0780a60ab4ce11d7" [label=""];
  "sha256:2706b9ccc479e3fb2c7b0cb183c398de033444b2fa85689d0780a60ab4ce11d7" -> "sha256:06e6222e56999dda932c398e3f40d16af9426111597f3480da9fb31864ef0bc6" [label=""];
  "sha256:06e6222e56999dda932c398e3f40d16af9426111597f3480da9fb31864ef0bc6" -> "sha256:3ccd7c6dc124f659a90f16a304623efe8157abc48434a45a59957995def5f5fc" [label=""];
  "sha256:6ccd008db55b89c6ad2bb7bbcc8364d7cbd02b223a48672a46e8ef59715b66bd" -> "sha256:3ccd7c6dc124f659a90f16a304623efe8157abc48434a45a59957995def5f5fc" [label=""];
  "sha256:3ccd7c6dc124f659a90f16a304623efe8157abc48434a45a59957995def5f5fc" -> "sha256:2a4f97da588d98fc5529871140dc2a0b572f168583e96f53d62a819878a3b170" [label=""];
  "sha256:2a4f97da588d98fc5529871140dc2a0b572f168583e96f53d62a819878a3b170" -> "sha256:2f27d6b7dff62936b84bda4e5ad5c79f7e1c68f6757a50a8aaf4dae0fdc07060" [label=""];
  "sha256:2f27d6b7dff62936b84bda4e5ad5c79f7e1c68f6757a50a8aaf4dae0fdc07060" -> "sha256:b1e04f3d2b0b7a594d7930b6bf9c9ab49288c69a7b9cc114ce955a873cee2384" [label=""];
  "sha256:6ccd008db55b89c6ad2bb7bbcc8364d7cbd02b223a48672a46e8ef59715b66bd" -> "sha256:b1e04f3d2b0b7a594d7930b6bf9c9ab49288c69a7b9cc114ce955a873cee2384" [label=""];
  "sha256:b1e04f3d2b0b7a594d7930b6bf9c9ab49288c69a7b9cc114ce955a873cee2384" -> "sha256:f4777e352f449ef63689eb6e4f0c6a6e3de2535d083a0f0c9120b05bf87dc6c1" [label=""];
}

