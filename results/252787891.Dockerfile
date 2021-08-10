[app/sources/252787891.Dockerfile]
digraph {
  "sha256:63ae215bf8cd70bde8f800cdb88d559cda687af532dcf554fdec6374a868d9ae" [label="local://context" shape="ellipse"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:4afa7264a5f00c87d4274e373e145b9bb40599263ee8845305e373bb5340c519" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:1bb86b76cfd4aa65fb67198271e01592f7705597fe96467307a9870a77efd353" [label="mkdir{path=/app}" shape="note"];
  "sha256:35667687cf84446af8e73a3256752d8d26e51c1ad582f69bc445929d8bc66c8b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:80e37f6854632649b309f6de36745dac720a7093083cf89888d3575933e9f0fb" [label="/bin/sh -c npm install" shape="box"];
  "sha256:005269e44583880836ff2045256052c49d87f495b6958821833a0a4e2db798ad" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3d65e2c6a4a04dc83a61d9a901aa1f08f8c8b27897647a0a815b4eb05c181cb5" [label="sha256:3d65e2c6a4a04dc83a61d9a901aa1f08f8c8b27897647a0a815b4eb05c181cb5" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:4afa7264a5f00c87d4274e373e145b9bb40599263ee8845305e373bb5340c519" [label=""];
  "sha256:4afa7264a5f00c87d4274e373e145b9bb40599263ee8845305e373bb5340c519" -> "sha256:1bb86b76cfd4aa65fb67198271e01592f7705597fe96467307a9870a77efd353" [label=""];
  "sha256:1bb86b76cfd4aa65fb67198271e01592f7705597fe96467307a9870a77efd353" -> "sha256:35667687cf84446af8e73a3256752d8d26e51c1ad582f69bc445929d8bc66c8b" [label=""];
  "sha256:63ae215bf8cd70bde8f800cdb88d559cda687af532dcf554fdec6374a868d9ae" -> "sha256:35667687cf84446af8e73a3256752d8d26e51c1ad582f69bc445929d8bc66c8b" [label=""];
  "sha256:35667687cf84446af8e73a3256752d8d26e51c1ad582f69bc445929d8bc66c8b" -> "sha256:80e37f6854632649b309f6de36745dac720a7093083cf89888d3575933e9f0fb" [label=""];
  "sha256:80e37f6854632649b309f6de36745dac720a7093083cf89888d3575933e9f0fb" -> "sha256:005269e44583880836ff2045256052c49d87f495b6958821833a0a4e2db798ad" [label=""];
  "sha256:63ae215bf8cd70bde8f800cdb88d559cda687af532dcf554fdec6374a868d9ae" -> "sha256:005269e44583880836ff2045256052c49d87f495b6958821833a0a4e2db798ad" [label=""];
  "sha256:005269e44583880836ff2045256052c49d87f495b6958821833a0a4e2db798ad" -> "sha256:3d65e2c6a4a04dc83a61d9a901aa1f08f8c8b27897647a0a815b4eb05c181cb5" [label=""];
}

