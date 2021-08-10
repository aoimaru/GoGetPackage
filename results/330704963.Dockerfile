[app/sources/330704963.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:aafbbb9c78b5447f6b0557dcb854880f23577852e996703f6b43ba826c3af8d0" [label="local://context" shape="ellipse"];
  "sha256:64de888a64827c05d62dbc205847720ce4f83024525941d2bebaa16d1935c55a" [label="copy{src=/qa.qanary_component-DiambiguationClass-OKBQA-0.0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:4fb30cff3c2509209543dbbe120c6eca5570ac40015b692d94a84b39a9c9f4be" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:43cfa99d7f7998b74dc26edd941fa39e6ab905cfa88c5e0e2cd7fdea919dad1c" [label="sha256:43cfa99d7f7998b74dc26edd941fa39e6ab905cfa88c5e0e2cd7fdea919dad1c" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:64de888a64827c05d62dbc205847720ce4f83024525941d2bebaa16d1935c55a" [label=""];
  "sha256:aafbbb9c78b5447f6b0557dcb854880f23577852e996703f6b43ba826c3af8d0" -> "sha256:64de888a64827c05d62dbc205847720ce4f83024525941d2bebaa16d1935c55a" [label=""];
  "sha256:64de888a64827c05d62dbc205847720ce4f83024525941d2bebaa16d1935c55a" -> "sha256:4fb30cff3c2509209543dbbe120c6eca5570ac40015b692d94a84b39a9c9f4be" [label=""];
  "sha256:4fb30cff3c2509209543dbbe120c6eca5570ac40015b692d94a84b39a9c9f4be" -> "sha256:43cfa99d7f7998b74dc26edd941fa39e6ab905cfa88c5e0e2cd7fdea919dad1c" [label=""];
}

