[app/sources/455483570.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bb6dfaa4f2230263dd7a6717ea01613919a33070891ff7f0abf15974cb110c43" [label="local://context" shape="ellipse"];
  "sha256:9c18af297f0303388c2f1624890eb1867744fd1cd6f35278629dbb5bf32f2e15" [label="copy{src=/package.json, dest=/usr/src/app}" shape="note"];
  "sha256:07a9bb9da42a174b8e21af5e56d2f9bd818942aeba473088ff6a7b149c58fece" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ec50b104a7112fbc29de46dcd3e469bc26dabe60ec5f576d64b49cf663cfb60a" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:2c74979e1adf90a95151e8877c1e834452e5693da7cd42a4dbda771399c450de" [label="sha256:2c74979e1adf90a95151e8877c1e834452e5693da7cd42a4dbda771399c450de" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" [label=""];
  "sha256:ee3d5c1589550ffbaafbef06ea994bd8ab04d03774068044ca2b4eb33bdad9fc" -> "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" [label=""];
  "sha256:0242f7c65e7a45697af81645f5b55210c49e46b7259afc462ad1d6a78c2b541d" -> "sha256:9c18af297f0303388c2f1624890eb1867744fd1cd6f35278629dbb5bf32f2e15" [label=""];
  "sha256:bb6dfaa4f2230263dd7a6717ea01613919a33070891ff7f0abf15974cb110c43" -> "sha256:9c18af297f0303388c2f1624890eb1867744fd1cd6f35278629dbb5bf32f2e15" [label=""];
  "sha256:9c18af297f0303388c2f1624890eb1867744fd1cd6f35278629dbb5bf32f2e15" -> "sha256:07a9bb9da42a174b8e21af5e56d2f9bd818942aeba473088ff6a7b149c58fece" [label=""];
  "sha256:07a9bb9da42a174b8e21af5e56d2f9bd818942aeba473088ff6a7b149c58fece" -> "sha256:ec50b104a7112fbc29de46dcd3e469bc26dabe60ec5f576d64b49cf663cfb60a" [label=""];
  "sha256:bb6dfaa4f2230263dd7a6717ea01613919a33070891ff7f0abf15974cb110c43" -> "sha256:ec50b104a7112fbc29de46dcd3e469bc26dabe60ec5f576d64b49cf663cfb60a" [label=""];
  "sha256:ec50b104a7112fbc29de46dcd3e469bc26dabe60ec5f576d64b49cf663cfb60a" -> "sha256:2c74979e1adf90a95151e8877c1e834452e5693da7cd42a4dbda771399c450de" [label=""];
}

