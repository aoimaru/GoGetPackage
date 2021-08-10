[app/sources/308310894.Dockerfile]
digraph {
  "sha256:b7a03a0e2a0d6c36e7cb25ac3043204c64829bd7bd284ee021727f727f92ad48" [label="docker-image://docker.io/perrorone/spiderman:latest" shape="ellipse"];
  "sha256:e04334eff2564f6bfc64868d6cf869a058e8ca43981bc3452f85092c8db7e403" [label="/bin/sh -c apk add gcc musl-dev libxslt-dev libffi-dev build-base make linux-headers openssl-dev" shape="box"];
  "sha256:6d4817106c48ff101cf92f20c30e7cd7c40dc009525b457ff10595be90964f50" [label="mkdir{path=/SpiderMan}" shape="note"];
  "sha256:b5a09a332466644a74f1dc629ee111079da28a3ad3b749c47ef922d0b4e30c00" [label="local://context" shape="ellipse"];
  "sha256:9337b6485b6dc27102a9dea54bf9f01fe0c94da139af89d13e11f206b656d88b" [label="copy{src=/, dest=/SpiderMan}" shape="note"];
  "sha256:4563bcd0d3cb524f8aeaf2ae798c67b51ba72681a00136aa7847e79166b97cbb" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:33f0cfe4f7137e18056cafa2b81608b920caaa94495075d775eb68aced26bdf7" [label="sha256:33f0cfe4f7137e18056cafa2b81608b920caaa94495075d775eb68aced26bdf7" shape="plaintext"];
  "sha256:b7a03a0e2a0d6c36e7cb25ac3043204c64829bd7bd284ee021727f727f92ad48" -> "sha256:e04334eff2564f6bfc64868d6cf869a058e8ca43981bc3452f85092c8db7e403" [label=""];
  "sha256:e04334eff2564f6bfc64868d6cf869a058e8ca43981bc3452f85092c8db7e403" -> "sha256:6d4817106c48ff101cf92f20c30e7cd7c40dc009525b457ff10595be90964f50" [label=""];
  "sha256:6d4817106c48ff101cf92f20c30e7cd7c40dc009525b457ff10595be90964f50" -> "sha256:9337b6485b6dc27102a9dea54bf9f01fe0c94da139af89d13e11f206b656d88b" [label=""];
  "sha256:b5a09a332466644a74f1dc629ee111079da28a3ad3b749c47ef922d0b4e30c00" -> "sha256:9337b6485b6dc27102a9dea54bf9f01fe0c94da139af89d13e11f206b656d88b" [label=""];
  "sha256:9337b6485b6dc27102a9dea54bf9f01fe0c94da139af89d13e11f206b656d88b" -> "sha256:4563bcd0d3cb524f8aeaf2ae798c67b51ba72681a00136aa7847e79166b97cbb" [label=""];
  "sha256:4563bcd0d3cb524f8aeaf2ae798c67b51ba72681a00136aa7847e79166b97cbb" -> "sha256:33f0cfe4f7137e18056cafa2b81608b920caaa94495075d775eb68aced26bdf7" [label=""];
}

