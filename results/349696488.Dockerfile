[app/sources/349696488.Dockerfile]
digraph {
  "sha256:4090fecc285a8722fcebc61bdfa9fc9b84f7da0304b74efb4299a910fbb568f5" [label="docker-image://docker.io/abacosamples/base-ubu:latest" shape="ellipse"];
  "sha256:d25a0edaef31236846495314d69a6ee0c0f75f0e3d990fed66f0559408179d89" [label="local://context" shape="ellipse"];
  "sha256:a87f0f92f598609262d7a5a2fc8bdf9eca2ad343567d0bb8e871408844ad5fb3" [label="copy{src=/myactor.py, dest=/myactor.py}" shape="note"];
  "sha256:bc9f4f45e86b7268db9028d9810fd1e5100c520af6439544abb2b62a2440b66a" [label="sha256:bc9f4f45e86b7268db9028d9810fd1e5100c520af6439544abb2b62a2440b66a" shape="plaintext"];
  "sha256:4090fecc285a8722fcebc61bdfa9fc9b84f7da0304b74efb4299a910fbb568f5" -> "sha256:a87f0f92f598609262d7a5a2fc8bdf9eca2ad343567d0bb8e871408844ad5fb3" [label=""];
  "sha256:d25a0edaef31236846495314d69a6ee0c0f75f0e3d990fed66f0559408179d89" -> "sha256:a87f0f92f598609262d7a5a2fc8bdf9eca2ad343567d0bb8e871408844ad5fb3" [label=""];
  "sha256:a87f0f92f598609262d7a5a2fc8bdf9eca2ad343567d0bb8e871408844ad5fb3" -> "sha256:bc9f4f45e86b7268db9028d9810fd1e5100c520af6439544abb2b62a2440b66a" [label=""];
}

