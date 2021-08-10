[app/sources/204746076.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label="/bin/sh -c apt-get update && apt-get install -yq openssl" shape="box"];
  "sha256:42032425cf4c6eeb3606ab16310f198fa2c882e85b6770326e5f421c0da12b24" [label="local://context" shape="ellipse"];
  "sha256:5e73153f1a1d723a08a69c2ea78fc55ebcaabb7378088fb6a6f39b76b19230e5" [label="copy{src=/make_certs.sh, dest=/}" shape="note"];
  "sha256:44162553c8898feb1a8a951217e56fbcb313bf56afd027f06af817730f968e11" [label="mkdir{path=/data}" shape="note"];
  "sha256:97228214aed59a6060c3bfd6ad0cf83803e64e5d2cafe803302047818696e61b" [label="sha256:97228214aed59a6060c3bfd6ad0cf83803e64e5d2cafe803302047818696e61b" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label=""];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" -> "sha256:5e73153f1a1d723a08a69c2ea78fc55ebcaabb7378088fb6a6f39b76b19230e5" [label=""];
  "sha256:42032425cf4c6eeb3606ab16310f198fa2c882e85b6770326e5f421c0da12b24" -> "sha256:5e73153f1a1d723a08a69c2ea78fc55ebcaabb7378088fb6a6f39b76b19230e5" [label=""];
  "sha256:5e73153f1a1d723a08a69c2ea78fc55ebcaabb7378088fb6a6f39b76b19230e5" -> "sha256:44162553c8898feb1a8a951217e56fbcb313bf56afd027f06af817730f968e11" [label=""];
  "sha256:44162553c8898feb1a8a951217e56fbcb313bf56afd027f06af817730f968e11" -> "sha256:97228214aed59a6060c3bfd6ad0cf83803e64e5d2cafe803302047818696e61b" [label=""];
}

