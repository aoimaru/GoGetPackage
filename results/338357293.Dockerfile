[app/sources/338357293.Dockerfile]
digraph {
  "sha256:e55ccc3a46e2bca306ab3b20ec68eaf43a39109b5593eccdc2d39259945c5b6e" [label="docker-image://docker.io/shokku/api:1.0.0" shape="ellipse"];
  "sha256:3525c937ec3811de7b8bc1f7c5babbe38ad98d6694db89b6d05dd5e25f7e764b" [label="mkdir{path=/var/www/api}" shape="note"];
  "sha256:1c8684009c35aac52649ac2cc76b1c47826de15b1a049f7775b5114eb0d1bfc5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b1262d804bda994a6239c129475b2c3aafe397180bd71e010496d95b99a97b3a" [label="local://context" shape="ellipse"];
  "sha256:348d2fba4562b8b12ae838c6b19475810b5d5e7cef791aa65d1f874498c9f3ed" [label="copy{src=/docker/images/api/start-api-dev.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:5b2886a97331e13e0216ef167f978573c7d80a9c1bcb18cfc1e8f87851ad3707" [label="/bin/sh -c chmod +x /usr/local/bin/start-api-dev.sh" shape="box"];
  "sha256:1ca09a475caa4b49210f2878f748aa40b461504ba61833ecbabce13417e7c37f" [label="sha256:1ca09a475caa4b49210f2878f748aa40b461504ba61833ecbabce13417e7c37f" shape="plaintext"];
  "sha256:e55ccc3a46e2bca306ab3b20ec68eaf43a39109b5593eccdc2d39259945c5b6e" -> "sha256:3525c937ec3811de7b8bc1f7c5babbe38ad98d6694db89b6d05dd5e25f7e764b" [label=""];
  "sha256:3525c937ec3811de7b8bc1f7c5babbe38ad98d6694db89b6d05dd5e25f7e764b" -> "sha256:1c8684009c35aac52649ac2cc76b1c47826de15b1a049f7775b5114eb0d1bfc5" [label=""];
  "sha256:1c8684009c35aac52649ac2cc76b1c47826de15b1a049f7775b5114eb0d1bfc5" -> "sha256:348d2fba4562b8b12ae838c6b19475810b5d5e7cef791aa65d1f874498c9f3ed" [label=""];
  "sha256:b1262d804bda994a6239c129475b2c3aafe397180bd71e010496d95b99a97b3a" -> "sha256:348d2fba4562b8b12ae838c6b19475810b5d5e7cef791aa65d1f874498c9f3ed" [label=""];
  "sha256:348d2fba4562b8b12ae838c6b19475810b5d5e7cef791aa65d1f874498c9f3ed" -> "sha256:5b2886a97331e13e0216ef167f978573c7d80a9c1bcb18cfc1e8f87851ad3707" [label=""];
  "sha256:5b2886a97331e13e0216ef167f978573c7d80a9c1bcb18cfc1e8f87851ad3707" -> "sha256:1ca09a475caa4b49210f2878f748aa40b461504ba61833ecbabce13417e7c37f" [label=""];
}

