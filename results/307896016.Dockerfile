[app/sources/307896016.Dockerfile]
digraph {
  "sha256:5e525f35d4d304c84cd4b7432c72c87bebb6f2b7d3e7710817c93be8e77f27a4" [label="docker-image://docker.io/ocaml/opam:debian@sha256:d6c15b50ac1380bc8abba14aad71f63ffd04f9fb7ed9237e83a7e559bec9845a" shape="ellipse"];
  "sha256:1732f9c4561f421625271e59255ab3011334720bf3729271aa5f415176b012fa" [label="/bin/sh -c sudo apt-get install vim libgmp-dev -y" shape="box"];
  "sha256:94188eb1e48ebdf6ce651ee9b588f59d52f778c22ceeacb308f154cf6cd9e863" [label="/bin/sh -c opam update" shape="box"];
  "sha256:f22fbf26f82c9d95793428e14d15c5cb0fa425dfee8b4959ed45674fb6a2765d" [label="/bin/sh -c opam install topkg-care opam-publish cmdliner batteries" shape="box"];
  "sha256:26e1e2b07e1a712753c621c9ca1cd33ba01878a91b4d2f9447f4f70d0b00fa47" [label="mkdir{path=/home/opam/pkg}" shape="note"];
  "sha256:3b630be5a5bc250d408312c438173a7181a9f7ff465a2daad93f8de7c9df7453" [label="sha256:3b630be5a5bc250d408312c438173a7181a9f7ff465a2daad93f8de7c9df7453" shape="plaintext"];
  "sha256:5e525f35d4d304c84cd4b7432c72c87bebb6f2b7d3e7710817c93be8e77f27a4" -> "sha256:1732f9c4561f421625271e59255ab3011334720bf3729271aa5f415176b012fa" [label=""];
  "sha256:1732f9c4561f421625271e59255ab3011334720bf3729271aa5f415176b012fa" -> "sha256:94188eb1e48ebdf6ce651ee9b588f59d52f778c22ceeacb308f154cf6cd9e863" [label=""];
  "sha256:94188eb1e48ebdf6ce651ee9b588f59d52f778c22ceeacb308f154cf6cd9e863" -> "sha256:f22fbf26f82c9d95793428e14d15c5cb0fa425dfee8b4959ed45674fb6a2765d" [label=""];
  "sha256:f22fbf26f82c9d95793428e14d15c5cb0fa425dfee8b4959ed45674fb6a2765d" -> "sha256:26e1e2b07e1a712753c621c9ca1cd33ba01878a91b4d2f9447f4f70d0b00fa47" [label=""];
  "sha256:26e1e2b07e1a712753c621c9ca1cd33ba01878a91b4d2f9447f4f70d0b00fa47" -> "sha256:3b630be5a5bc250d408312c438173a7181a9f7ff465a2daad93f8de7c9df7453" [label=""];
}

