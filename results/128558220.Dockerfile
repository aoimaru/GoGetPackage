[app/sources/128558220.Dockerfile]
digraph {
  "sha256:b6b342266a8facd911cac65ca3babd64d103c6557a8512fc0b065eced3366a5d" [label="local://context" shape="ellipse"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" [label="docker-image://docker.io/phusion/baseimage:0.11" shape="ellipse"];
  "sha256:d357f90a0d2a189b3cb53f32ba6de8bd1321d347c30c579e6e4e5334463a1963" [label="copy{src=/nanoblog-linux-amd64, dest=/usr/bin/nanoblog}" shape="note"];
  "sha256:d32a6a88361b620bd3b7f9d1cc12fc91980fc5525e341dcba0977c00b2cdd6fe" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:8cfb44f2f26f103b0c7b5abddaf9debe2dc0d4b9ea5ab6df9c4b9b473e5290e9" [label="/bin/sh -c apt-get update && apt-get install -y tzdata" shape="box"];
  "sha256:b2b5de05107a951138265d8abadf9aa58f0b5e38110edd08127accbf1af84c16" [label="/bin/sh -c chmod +x /usr/bin/nanoblog /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:662b8407b4009145872067e603375ac5e81f41abb631cf6e5619839b1a60419c" [label="sha256:662b8407b4009145872067e603375ac5e81f41abb631cf6e5619839b1a60419c" shape="plaintext"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" -> "sha256:d357f90a0d2a189b3cb53f32ba6de8bd1321d347c30c579e6e4e5334463a1963" [label=""];
  "sha256:b6b342266a8facd911cac65ca3babd64d103c6557a8512fc0b065eced3366a5d" -> "sha256:d357f90a0d2a189b3cb53f32ba6de8bd1321d347c30c579e6e4e5334463a1963" [label=""];
  "sha256:d357f90a0d2a189b3cb53f32ba6de8bd1321d347c30c579e6e4e5334463a1963" -> "sha256:d32a6a88361b620bd3b7f9d1cc12fc91980fc5525e341dcba0977c00b2cdd6fe" [label=""];
  "sha256:b6b342266a8facd911cac65ca3babd64d103c6557a8512fc0b065eced3366a5d" -> "sha256:d32a6a88361b620bd3b7f9d1cc12fc91980fc5525e341dcba0977c00b2cdd6fe" [label=""];
  "sha256:d32a6a88361b620bd3b7f9d1cc12fc91980fc5525e341dcba0977c00b2cdd6fe" -> "sha256:8cfb44f2f26f103b0c7b5abddaf9debe2dc0d4b9ea5ab6df9c4b9b473e5290e9" [label=""];
  "sha256:8cfb44f2f26f103b0c7b5abddaf9debe2dc0d4b9ea5ab6df9c4b9b473e5290e9" -> "sha256:b2b5de05107a951138265d8abadf9aa58f0b5e38110edd08127accbf1af84c16" [label=""];
  "sha256:b2b5de05107a951138265d8abadf9aa58f0b5e38110edd08127accbf1af84c16" -> "sha256:662b8407b4009145872067e603375ac5e81f41abb631cf6e5619839b1a60419c" [label=""];
}

