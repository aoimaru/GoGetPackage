[app/sources/252778736.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:5a59fd524cef07fc312370c32b54aa6107597439342e7e27a02a89b85bf133a1" [label="local://context" shape="ellipse"];
  "sha256:b02548bd4e7044ec55a70b1e05d3dc24236f91c427a5ce9e5e5a244f4c45385c" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:93947e7158a84fc2e1534fccce8033ace7ecbc2c47d130d92700484731a208c0" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:b9e2ab686421c1739b760cde5ad9054916091eb253068f1007ad31e9c3fba3b4" [label="/bin/sh -c cd /app/ && npm install --dev && npm run dist" shape="box"];
  "sha256:5d97cc0f8bf449ec6764083014b9aeea63e05764b030e44b0d5626390cec4d97" [label="sha256:5d97cc0f8bf449ec6764083014b9aeea63e05764b030e44b0d5626390cec4d97" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:b02548bd4e7044ec55a70b1e05d3dc24236f91c427a5ce9e5e5a244f4c45385c" [label=""];
  "sha256:5a59fd524cef07fc312370c32b54aa6107597439342e7e27a02a89b85bf133a1" -> "sha256:b02548bd4e7044ec55a70b1e05d3dc24236f91c427a5ce9e5e5a244f4c45385c" [label=""];
  "sha256:b02548bd4e7044ec55a70b1e05d3dc24236f91c427a5ce9e5e5a244f4c45385c" -> "sha256:93947e7158a84fc2e1534fccce8033ace7ecbc2c47d130d92700484731a208c0" [label=""];
  "sha256:93947e7158a84fc2e1534fccce8033ace7ecbc2c47d130d92700484731a208c0" -> "sha256:b9e2ab686421c1739b760cde5ad9054916091eb253068f1007ad31e9c3fba3b4" [label=""];
  "sha256:b9e2ab686421c1739b760cde5ad9054916091eb253068f1007ad31e9c3fba3b4" -> "sha256:5d97cc0f8bf449ec6764083014b9aeea63e05764b030e44b0d5626390cec4d97" [label=""];
}

