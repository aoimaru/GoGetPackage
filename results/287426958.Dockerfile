[app/sources/287426958.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:47d1639d8e2ed8259d48796e5e7364f42445a677da26d56fcc8471009d6bfe2f" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ce8fe2c4ba0089ce9dbd14ad1300ac05dde273946ce643cb400bbc575f7702a" [label="local://context" shape="ellipse"];
  "sha256:87cf29ce0bbaafc2c8f0da0559f0a8ff65b27463c0978cfec4a463d7ba4b1956" [label="copy{src=/package*.json, dest=/app/}" shape="note"];
  "sha256:f7bed3ecc1a31abbcab1197bc0a3732934954ee4c1592fa6e25f3ff443f9448a" [label="/bin/sh -c npm install --only=production" shape="box"];
  "sha256:ad54f160695255acb6e4a4be2236d1c11b968a521b08a0a701ac19dc309619e7" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:b2691aeaddb6196f8f8ef3f4c516308932eae500b852bd60cd3a89ee58f798fd" [label="sha256:b2691aeaddb6196f8f8ef3f4c516308932eae500b852bd60cd3a89ee58f798fd" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:47d1639d8e2ed8259d48796e5e7364f42445a677da26d56fcc8471009d6bfe2f" [label=""];
  "sha256:47d1639d8e2ed8259d48796e5e7364f42445a677da26d56fcc8471009d6bfe2f" -> "sha256:87cf29ce0bbaafc2c8f0da0559f0a8ff65b27463c0978cfec4a463d7ba4b1956" [label=""];
  "sha256:5ce8fe2c4ba0089ce9dbd14ad1300ac05dde273946ce643cb400bbc575f7702a" -> "sha256:87cf29ce0bbaafc2c8f0da0559f0a8ff65b27463c0978cfec4a463d7ba4b1956" [label=""];
  "sha256:87cf29ce0bbaafc2c8f0da0559f0a8ff65b27463c0978cfec4a463d7ba4b1956" -> "sha256:f7bed3ecc1a31abbcab1197bc0a3732934954ee4c1592fa6e25f3ff443f9448a" [label=""];
  "sha256:f7bed3ecc1a31abbcab1197bc0a3732934954ee4c1592fa6e25f3ff443f9448a" -> "sha256:ad54f160695255acb6e4a4be2236d1c11b968a521b08a0a701ac19dc309619e7" [label=""];
  "sha256:5ce8fe2c4ba0089ce9dbd14ad1300ac05dde273946ce643cb400bbc575f7702a" -> "sha256:ad54f160695255acb6e4a4be2236d1c11b968a521b08a0a701ac19dc309619e7" [label=""];
  "sha256:ad54f160695255acb6e4a4be2236d1c11b968a521b08a0a701ac19dc309619e7" -> "sha256:b2691aeaddb6196f8f8ef3f4c516308932eae500b852bd60cd3a89ee58f798fd" [label=""];
}

