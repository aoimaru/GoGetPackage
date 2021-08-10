[app/sources/135436335.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:acf6c4773dce5e02997736aedef3611d159f23b93b84111779eb4ad64a541377" [label="/bin/sh -c apt-get install -yq sudo" shape="box"];
  "sha256:c978238adcfb711e968615936bbff63ad9335ff7abbcea91d2b9123b242ea886" [label="/bin/sh -c useradd -G sudo,users dockerx" shape="box"];
  "sha256:806951c250df0954322f35c24a2f55dabfad250703ce3122f282cb7f3c7c34db" [label="/bin/sh -c echo \"dockerx:docker\" | chpasswd" shape="box"];
  "sha256:5c6f1a85abd4ec189c69a5c032872f2567d78fe55ac57d1c6f6c8b9f867b701d" [label="sha256:5c6f1a85abd4ec189c69a5c032872f2567d78fe55ac57d1c6f6c8b9f867b701d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:acf6c4773dce5e02997736aedef3611d159f23b93b84111779eb4ad64a541377" [label=""];
  "sha256:acf6c4773dce5e02997736aedef3611d159f23b93b84111779eb4ad64a541377" -> "sha256:c978238adcfb711e968615936bbff63ad9335ff7abbcea91d2b9123b242ea886" [label=""];
  "sha256:c978238adcfb711e968615936bbff63ad9335ff7abbcea91d2b9123b242ea886" -> "sha256:806951c250df0954322f35c24a2f55dabfad250703ce3122f282cb7f3c7c34db" [label=""];
  "sha256:806951c250df0954322f35c24a2f55dabfad250703ce3122f282cb7f3c7c34db" -> "sha256:5c6f1a85abd4ec189c69a5c032872f2567d78fe55ac57d1c6f6c8b9f867b701d" [label=""];
}

