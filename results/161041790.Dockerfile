[app/sources/161041790.Dockerfile]
digraph {
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:1f2abf87e87cde69120781030545b8ee600748bf5b245ae62dc6761939b200f0" [label="/bin/sh -c apk update && apk add git" shape="box"];
  "sha256:abe9ea7dcc2d6bb41349cb50e117cda40cd971426fb0cf1c6478e1d19b10a839" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6c53e88cebf6430ef7dfb3f28d9d242aa4e6c6c53c7922f9c3d3e084c5a24b6a" [label="local://context" shape="ellipse"];
  "sha256:4061a598257b07a1f7041105c7d2dd7d79429c5021e20192d53f5ee60efb804c" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:2dffd1ff2d184d124076a2c24d88fe0523316498f76d760b1ef22053f31e2079" [label="/bin/sh -c npm install" shape="box"];
  "sha256:250d4a0c099986eb5ea3e436afe7dbb834e931d0b700a8918a30223547a114d4" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:fca81b542c38c73f22f0232734a2b832ccf7c74e131e191da06895e789232133" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:3bd5cf30f087490b871bffc00c9242142b6acadad4d1e7319421b2752beb0ab5" [label="sha256:3bd5cf30f087490b871bffc00c9242142b6acadad4d1e7319421b2752beb0ab5" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:1f2abf87e87cde69120781030545b8ee600748bf5b245ae62dc6761939b200f0" [label=""];
  "sha256:1f2abf87e87cde69120781030545b8ee600748bf5b245ae62dc6761939b200f0" -> "sha256:abe9ea7dcc2d6bb41349cb50e117cda40cd971426fb0cf1c6478e1d19b10a839" [label=""];
  "sha256:abe9ea7dcc2d6bb41349cb50e117cda40cd971426fb0cf1c6478e1d19b10a839" -> "sha256:4061a598257b07a1f7041105c7d2dd7d79429c5021e20192d53f5ee60efb804c" [label=""];
  "sha256:6c53e88cebf6430ef7dfb3f28d9d242aa4e6c6c53c7922f9c3d3e084c5a24b6a" -> "sha256:4061a598257b07a1f7041105c7d2dd7d79429c5021e20192d53f5ee60efb804c" [label=""];
  "sha256:4061a598257b07a1f7041105c7d2dd7d79429c5021e20192d53f5ee60efb804c" -> "sha256:2dffd1ff2d184d124076a2c24d88fe0523316498f76d760b1ef22053f31e2079" [label=""];
  "sha256:2dffd1ff2d184d124076a2c24d88fe0523316498f76d760b1ef22053f31e2079" -> "sha256:250d4a0c099986eb5ea3e436afe7dbb834e931d0b700a8918a30223547a114d4" [label=""];
  "sha256:6c53e88cebf6430ef7dfb3f28d9d242aa4e6c6c53c7922f9c3d3e084c5a24b6a" -> "sha256:250d4a0c099986eb5ea3e436afe7dbb834e931d0b700a8918a30223547a114d4" [label=""];
  "sha256:250d4a0c099986eb5ea3e436afe7dbb834e931d0b700a8918a30223547a114d4" -> "sha256:fca81b542c38c73f22f0232734a2b832ccf7c74e131e191da06895e789232133" [label=""];
  "sha256:fca81b542c38c73f22f0232734a2b832ccf7c74e131e191da06895e789232133" -> "sha256:3bd5cf30f087490b871bffc00c9242142b6acadad4d1e7319421b2752beb0ab5" [label=""];
}

