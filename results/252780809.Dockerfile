[app/sources/252780809.Dockerfile]
digraph {
  "sha256:fca395a79fe1b68e3076ba6cfbfa9283ce51c209f53e85a1b87dc4327401d03d" [label="docker-image://docker.io/badoque/alpine-nginx:latest" shape="ellipse"];
  "sha256:ace1aa89f08624d4321a52e7d6e7040e972a10ec0cccfd5af527518c3dbe7033" [label="local://context" shape="ellipse"];
  "sha256:fb2244a5498ae8843cb8d95ad1a47319869a030b0875359d9fa8ea1d819e5486" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:b9af9a573c43d145c3d98d8e62a1c333c23240e67d2fbf51a2c8d9af0331d4cc" [label="sha256:b9af9a573c43d145c3d98d8e62a1c333c23240e67d2fbf51a2c8d9af0331d4cc" shape="plaintext"];
  "sha256:fca395a79fe1b68e3076ba6cfbfa9283ce51c209f53e85a1b87dc4327401d03d" -> "sha256:fb2244a5498ae8843cb8d95ad1a47319869a030b0875359d9fa8ea1d819e5486" [label=""];
  "sha256:ace1aa89f08624d4321a52e7d6e7040e972a10ec0cccfd5af527518c3dbe7033" -> "sha256:fb2244a5498ae8843cb8d95ad1a47319869a030b0875359d9fa8ea1d819e5486" [label=""];
  "sha256:fb2244a5498ae8843cb8d95ad1a47319869a030b0875359d9fa8ea1d819e5486" -> "sha256:b9af9a573c43d145c3d98d8e62a1c333c23240e67d2fbf51a2c8d9af0331d4cc" [label=""];
}

