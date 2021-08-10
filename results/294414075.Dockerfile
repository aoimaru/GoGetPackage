[app/sources/294414075.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:95e11b18fa330dc61118a838a7e90e6c4d281cc135a84e7f0135a93490ca547f" [label="local://context" shape="ellipse"];
  "sha256:fae314cde7c76333ebf60550b659d8e6895d1039b977c95bcff8dab4c3fa04be" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:55fd95d17c21591cbe38bd85bc016b6cfe975c7f6019b45aa8e074493d7dd765" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f379f47b0b48f6304fe6acaca22d3cd622a3ce1ce69313ef6aaef9e90983e8ec" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:cdb486e4bbe05669847e4c93d7fd9010193f34c8c413bdd340ccab925be551c9" [label="sha256:cdb486e4bbe05669847e4c93d7fd9010193f34c8c413bdd340ccab925be551c9" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" [label=""];
  "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" -> "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" [label=""];
  "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" -> "sha256:fae314cde7c76333ebf60550b659d8e6895d1039b977c95bcff8dab4c3fa04be" [label=""];
  "sha256:95e11b18fa330dc61118a838a7e90e6c4d281cc135a84e7f0135a93490ca547f" -> "sha256:fae314cde7c76333ebf60550b659d8e6895d1039b977c95bcff8dab4c3fa04be" [label=""];
  "sha256:fae314cde7c76333ebf60550b659d8e6895d1039b977c95bcff8dab4c3fa04be" -> "sha256:55fd95d17c21591cbe38bd85bc016b6cfe975c7f6019b45aa8e074493d7dd765" [label=""];
  "sha256:55fd95d17c21591cbe38bd85bc016b6cfe975c7f6019b45aa8e074493d7dd765" -> "sha256:f379f47b0b48f6304fe6acaca22d3cd622a3ce1ce69313ef6aaef9e90983e8ec" [label=""];
  "sha256:95e11b18fa330dc61118a838a7e90e6c4d281cc135a84e7f0135a93490ca547f" -> "sha256:f379f47b0b48f6304fe6acaca22d3cd622a3ce1ce69313ef6aaef9e90983e8ec" [label=""];
  "sha256:f379f47b0b48f6304fe6acaca22d3cd622a3ce1ce69313ef6aaef9e90983e8ec" -> "sha256:cdb486e4bbe05669847e4c93d7fd9010193f34c8c413bdd340ccab925be551c9" [label=""];
}

