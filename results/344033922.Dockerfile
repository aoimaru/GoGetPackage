[app/sources/344033922.Dockerfile]
digraph {
  "sha256:a351868f558aecce985f1f7becea167236cef7ab9de2ade919f76cd1d9eff9ea" [label="docker-image://docker.io/tatsushid/tinycore-node:8.9" shape="ellipse"];
  "sha256:ed1be61907b7c001fac1eaacd6e99e295c1847e7b1eb5874dc2997bc60789fd9" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:aa7e8bf9e42bbe0316818774953c331d751c9184c2a5565c90ff766d78a60d1a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ff5a865594da4cb50569aa0f6834f0261aa4c4e2c7c2ee3900e9278bb34fa294" [label="sha256:ff5a865594da4cb50569aa0f6834f0261aa4c4e2c7c2ee3900e9278bb34fa294" shape="plaintext"];
  "sha256:a351868f558aecce985f1f7becea167236cef7ab9de2ade919f76cd1d9eff9ea" -> "sha256:ed1be61907b7c001fac1eaacd6e99e295c1847e7b1eb5874dc2997bc60789fd9" [label=""];
  "sha256:ed1be61907b7c001fac1eaacd6e99e295c1847e7b1eb5874dc2997bc60789fd9" -> "sha256:aa7e8bf9e42bbe0316818774953c331d751c9184c2a5565c90ff766d78a60d1a" [label=""];
  "sha256:aa7e8bf9e42bbe0316818774953c331d751c9184c2a5565c90ff766d78a60d1a" -> "sha256:ff5a865594da4cb50569aa0f6834f0261aa4c4e2c7c2ee3900e9278bb34fa294" [label=""];
}

