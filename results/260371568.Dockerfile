[app/sources/260371568.Dockerfile]
digraph {
  "sha256:93297020e50c2c47d89096975ba08f262d26746108e5eb3f781c5f99b0326043" [label="docker-image://docker.io/library/python:2.7.12" shape="ellipse"];
  "sha256:9bc7072c708628d806119fa49a3ce44ab7ad8efc1d93aa9e06d55d4209022a17" [label="/bin/sh -c pip install dpkt PyNacl" shape="box"];
  "sha256:f4807a0de2da16b51b1971d9c807fdcd2a158cb28bdc049e9c551eafd7d6a0db" [label="local://context" shape="ellipse"];
  "sha256:5d97e097fe3253ef1ea61ccb3ac43ecc654862077e51e2ca6bd358cbb29ded6c" [label="copy{src=/overflowd.py, dest=/overflowd/overflowd.py}" shape="note"];
  "sha256:531e78d365a41083806a69942fe4fec3fc866faa8294cffebab9a0bddf2513e7" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:f89285f65ff099e7afe4c8345c5fbda10c2754329c219713fecadeebca266c04" [label="sha256:f89285f65ff099e7afe4c8345c5fbda10c2754329c219713fecadeebca266c04" shape="plaintext"];
  "sha256:93297020e50c2c47d89096975ba08f262d26746108e5eb3f781c5f99b0326043" -> "sha256:9bc7072c708628d806119fa49a3ce44ab7ad8efc1d93aa9e06d55d4209022a17" [label=""];
  "sha256:9bc7072c708628d806119fa49a3ce44ab7ad8efc1d93aa9e06d55d4209022a17" -> "sha256:5d97e097fe3253ef1ea61ccb3ac43ecc654862077e51e2ca6bd358cbb29ded6c" [label=""];
  "sha256:f4807a0de2da16b51b1971d9c807fdcd2a158cb28bdc049e9c551eafd7d6a0db" -> "sha256:5d97e097fe3253ef1ea61ccb3ac43ecc654862077e51e2ca6bd358cbb29ded6c" [label=""];
  "sha256:5d97e097fe3253ef1ea61ccb3ac43ecc654862077e51e2ca6bd358cbb29ded6c" -> "sha256:531e78d365a41083806a69942fe4fec3fc866faa8294cffebab9a0bddf2513e7" [label=""];
  "sha256:531e78d365a41083806a69942fe4fec3fc866faa8294cffebab9a0bddf2513e7" -> "sha256:f89285f65ff099e7afe4c8345c5fbda10c2754329c219713fecadeebca266c04" [label=""];
}

