[app/sources/255167213.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:0e67d63b30a6d14ed6538515ae88a83f7559b3817fc59c1304878e287344bff9" [label="local://context" shape="ellipse"];
  "sha256:ca8bad3841018b453405710923b05acdfaeca887c0d903f488a1e6464553bf5b" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:73d650b90b22f04108d0de9967cc48064c0d275a8f0226b9f437b9f6213d3e9b" [label="sha256:73d650b90b22f04108d0de9967cc48064c0d275a8f0226b9f437b9f6213d3e9b" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ca8bad3841018b453405710923b05acdfaeca887c0d903f488a1e6464553bf5b" [label=""];
  "sha256:0e67d63b30a6d14ed6538515ae88a83f7559b3817fc59c1304878e287344bff9" -> "sha256:ca8bad3841018b453405710923b05acdfaeca887c0d903f488a1e6464553bf5b" [label=""];
  "sha256:ca8bad3841018b453405710923b05acdfaeca887c0d903f488a1e6464553bf5b" -> "sha256:73d650b90b22f04108d0de9967cc48064c0d275a8f0226b9f437b9f6213d3e9b" [label=""];
}

