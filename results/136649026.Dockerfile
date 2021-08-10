[app/sources/136649026.Dockerfile]
digraph {
  "sha256:a98d9519276f2a1c6e36a63a889611834beeda414d14d2c177e7099fbbd27e2f" [label="docker-image://docker.io/library/nodezoo-shared:1" shape="ellipse"];
  "sha256:b69ed432d93ec4206d9f03df901c7a6ee67083ab2ea48ebd5b84cdf693fd60d0" [label="local://context" shape="ellipse"];
  "sha256:7a3f9506ccaf7cfe7c60539a07f625866d77f6cd523730d9e9074c621a5ec6ce" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:5efc8a0ec9caa6c13dc8c4aab8a486e5ba61f3adef4a369b5175a7936b6b425a" [label="sha256:5efc8a0ec9caa6c13dc8c4aab8a486e5ba61f3adef4a369b5175a7936b6b425a" shape="plaintext"];
  "sha256:a98d9519276f2a1c6e36a63a889611834beeda414d14d2c177e7099fbbd27e2f" -> "sha256:7a3f9506ccaf7cfe7c60539a07f625866d77f6cd523730d9e9074c621a5ec6ce" [label=""];
  "sha256:b69ed432d93ec4206d9f03df901c7a6ee67083ab2ea48ebd5b84cdf693fd60d0" -> "sha256:7a3f9506ccaf7cfe7c60539a07f625866d77f6cd523730d9e9074c621a5ec6ce" [label=""];
  "sha256:7a3f9506ccaf7cfe7c60539a07f625866d77f6cd523730d9e9074c621a5ec6ce" -> "sha256:5efc8a0ec9caa6c13dc8c4aab8a486e5ba61f3adef4a369b5175a7936b6b425a" [label=""];
}

