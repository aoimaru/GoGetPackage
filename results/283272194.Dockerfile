[app/sources/283272194.Dockerfile]
digraph {
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" [label="docker-image://docker.io/mhart/alpine-node:8" shape="ellipse"];
  "sha256:900fa979b19e22d6f56e55db70578051f194fcff363443f4ff51e356da73e223" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fa6b15f2cf7472cfd1f74805c9313c5844b56f0c5ea102add13dd460ec968116" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:188e819de54bbde877a30d048f1b1a2e8efc6ee7dcff69dedbdea85c2df3e934" [label="local://context" shape="ellipse"];
  "sha256:a29f0dda43aec792c39aac4ada8a9f494853540cc52f6bb85be27b4c70ed9292" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:d3fe5c3b8d26cb71f4e4eb6f316bd5549fb6ba16e8ab94dfad116fc2d6b52d55" [label="mkdir{path=/usr/src/app/scheduler}" shape="note"];
  "sha256:ee0fcde73e31dceff2af9c73a6ed14ed6e44acb8319ef90530e4b2e81704bdf1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:0cd4610a481cc287df9b6f718b4cca16bc615825c9f8c7a18a583fa45a5306a5" [label="mkdir{path=/usr/src/app/seneca-job-queue}" shape="note"];
  "sha256:2ae6eefc6f7d77e0c3fe0caf7feb29fb485cd2107b701643f1554b2e73609232" [label="/bin/sh -c npm install" shape="box"];
  "sha256:91f5e32609078d8ccaacac46f5c8df6965c64bf07daf2688c415f9174ed2eb3a" [label="sha256:91f5e32609078d8ccaacac46f5c8df6965c64bf07daf2688c415f9174ed2eb3a" shape="plaintext"];
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" -> "sha256:900fa979b19e22d6f56e55db70578051f194fcff363443f4ff51e356da73e223" [label=""];
  "sha256:900fa979b19e22d6f56e55db70578051f194fcff363443f4ff51e356da73e223" -> "sha256:fa6b15f2cf7472cfd1f74805c9313c5844b56f0c5ea102add13dd460ec968116" [label=""];
  "sha256:fa6b15f2cf7472cfd1f74805c9313c5844b56f0c5ea102add13dd460ec968116" -> "sha256:a29f0dda43aec792c39aac4ada8a9f494853540cc52f6bb85be27b4c70ed9292" [label=""];
  "sha256:188e819de54bbde877a30d048f1b1a2e8efc6ee7dcff69dedbdea85c2df3e934" -> "sha256:a29f0dda43aec792c39aac4ada8a9f494853540cc52f6bb85be27b4c70ed9292" [label=""];
  "sha256:a29f0dda43aec792c39aac4ada8a9f494853540cc52f6bb85be27b4c70ed9292" -> "sha256:d3fe5c3b8d26cb71f4e4eb6f316bd5549fb6ba16e8ab94dfad116fc2d6b52d55" [label=""];
  "sha256:d3fe5c3b8d26cb71f4e4eb6f316bd5549fb6ba16e8ab94dfad116fc2d6b52d55" -> "sha256:ee0fcde73e31dceff2af9c73a6ed14ed6e44acb8319ef90530e4b2e81704bdf1" [label=""];
  "sha256:ee0fcde73e31dceff2af9c73a6ed14ed6e44acb8319ef90530e4b2e81704bdf1" -> "sha256:0cd4610a481cc287df9b6f718b4cca16bc615825c9f8c7a18a583fa45a5306a5" [label=""];
  "sha256:0cd4610a481cc287df9b6f718b4cca16bc615825c9f8c7a18a583fa45a5306a5" -> "sha256:2ae6eefc6f7d77e0c3fe0caf7feb29fb485cd2107b701643f1554b2e73609232" [label=""];
  "sha256:2ae6eefc6f7d77e0c3fe0caf7feb29fb485cd2107b701643f1554b2e73609232" -> "sha256:91f5e32609078d8ccaacac46f5c8df6965c64bf07daf2688c415f9174ed2eb3a" [label=""];
}

