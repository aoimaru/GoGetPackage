[app/sources/325617328.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ae9784ee67efd5b578ed93756a1e17c11218a43ef9344d6ef32fcd267e786cac" [label="local://context" shape="ellipse"];
  "sha256:86c6887a9b16b3e179ee52e70eb342068d079b8f5440b5c74f7e048488c3f0b9" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:4d4b50b60d1188cede9efd73865185e4e8aaf89642f43fbaf844e7080d90e2e2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b9b99953cd44ed4f957d867ea14afaa1df9e1141b704b9e3b5a313d249290798" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:7fc8fbb7ea99436e7f4eafb29ada3a298183e445bc77a318a30b836385efb26c" [label="sha256:7fc8fbb7ea99436e7f4eafb29ada3a298183e445bc77a318a30b836385efb26c" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" [label=""];
  "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" -> "sha256:86c6887a9b16b3e179ee52e70eb342068d079b8f5440b5c74f7e048488c3f0b9" [label=""];
  "sha256:ae9784ee67efd5b578ed93756a1e17c11218a43ef9344d6ef32fcd267e786cac" -> "sha256:86c6887a9b16b3e179ee52e70eb342068d079b8f5440b5c74f7e048488c3f0b9" [label=""];
  "sha256:86c6887a9b16b3e179ee52e70eb342068d079b8f5440b5c74f7e048488c3f0b9" -> "sha256:4d4b50b60d1188cede9efd73865185e4e8aaf89642f43fbaf844e7080d90e2e2" [label=""];
  "sha256:4d4b50b60d1188cede9efd73865185e4e8aaf89642f43fbaf844e7080d90e2e2" -> "sha256:b9b99953cd44ed4f957d867ea14afaa1df9e1141b704b9e3b5a313d249290798" [label=""];
  "sha256:ae9784ee67efd5b578ed93756a1e17c11218a43ef9344d6ef32fcd267e786cac" -> "sha256:b9b99953cd44ed4f957d867ea14afaa1df9e1141b704b9e3b5a313d249290798" [label=""];
  "sha256:b9b99953cd44ed4f957d867ea14afaa1df9e1141b704b9e3b5a313d249290798" -> "sha256:7fc8fbb7ea99436e7f4eafb29ada3a298183e445bc77a318a30b836385efb26c" [label=""];
}

