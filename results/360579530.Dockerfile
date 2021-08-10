[app/sources/360579530.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:24acf21fb1fb7321e25a013542f88218d528c6cf5fad9db60ffeb4ebdce5200c" [label="local://context" shape="ellipse"];
  "sha256:f4242a74811a98f20dc97d008664c91c9cb6cdc3d3b5e35c3da7fecdd78ba1f8" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:06b8a9e892c4ecf0ac1eda1dd8321092cd31e67fa55e303d68cd8c8a036f384b" [label="/bin/sh -c npm install" shape="box"];
  "sha256:28a8bde241a4065b3b26bb00a5dec219304e825ea221fcfa6b1356f3289a1cac" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:3e5af5eba7c6594d959d357044f07492f4eb779e28852eb6cdd6531e03d6657b" [label="/bin/sh -c npm install -g" shape="box"];
  "sha256:06f0b8db8f56379fbe0d1f3d7f5a656df42f4d46908f1a4b206863369237581e" [label="sha256:06f0b8db8f56379fbe0d1f3d7f5a656df42f4d46908f1a4b206863369237581e" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label=""];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" -> "sha256:f4242a74811a98f20dc97d008664c91c9cb6cdc3d3b5e35c3da7fecdd78ba1f8" [label=""];
  "sha256:24acf21fb1fb7321e25a013542f88218d528c6cf5fad9db60ffeb4ebdce5200c" -> "sha256:f4242a74811a98f20dc97d008664c91c9cb6cdc3d3b5e35c3da7fecdd78ba1f8" [label=""];
  "sha256:f4242a74811a98f20dc97d008664c91c9cb6cdc3d3b5e35c3da7fecdd78ba1f8" -> "sha256:06b8a9e892c4ecf0ac1eda1dd8321092cd31e67fa55e303d68cd8c8a036f384b" [label=""];
  "sha256:06b8a9e892c4ecf0ac1eda1dd8321092cd31e67fa55e303d68cd8c8a036f384b" -> "sha256:28a8bde241a4065b3b26bb00a5dec219304e825ea221fcfa6b1356f3289a1cac" [label=""];
  "sha256:24acf21fb1fb7321e25a013542f88218d528c6cf5fad9db60ffeb4ebdce5200c" -> "sha256:28a8bde241a4065b3b26bb00a5dec219304e825ea221fcfa6b1356f3289a1cac" [label=""];
  "sha256:28a8bde241a4065b3b26bb00a5dec219304e825ea221fcfa6b1356f3289a1cac" -> "sha256:3e5af5eba7c6594d959d357044f07492f4eb779e28852eb6cdd6531e03d6657b" [label=""];
  "sha256:3e5af5eba7c6594d959d357044f07492f4eb779e28852eb6cdd6531e03d6657b" -> "sha256:06f0b8db8f56379fbe0d1f3d7f5a656df42f4d46908f1a4b206863369237581e" [label=""];
}

