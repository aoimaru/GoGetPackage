[app/sources/309935334.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:e5ebade97cf442689532b04b62d6c93c190b096ecdaaf7d8b511338cb98004c6" [label="local://context" shape="ellipse"];
  "sha256:066c2799da9747d55ba9c3a02611de26103b4ef48f5a2dc320cc9b144913d1a8" [label="copy{src=/operator-manager, dest=/}" shape="note"];
  "sha256:8f85ec1375509b9132b9c7363558f45454e9e98ae88b0d699f379e23c6e506d3" [label="sha256:8f85ec1375509b9132b9c7363558f45454e9e98ae88b0d699f379e23c6e506d3" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:066c2799da9747d55ba9c3a02611de26103b4ef48f5a2dc320cc9b144913d1a8" [label=""];
  "sha256:e5ebade97cf442689532b04b62d6c93c190b096ecdaaf7d8b511338cb98004c6" -> "sha256:066c2799da9747d55ba9c3a02611de26103b4ef48f5a2dc320cc9b144913d1a8" [label=""];
  "sha256:066c2799da9747d55ba9c3a02611de26103b4ef48f5a2dc320cc9b144913d1a8" -> "sha256:8f85ec1375509b9132b9c7363558f45454e9e98ae88b0d699f379e23c6e506d3" [label=""];
}

