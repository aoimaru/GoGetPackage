[app/sources/176635018.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:f8c457e7b4a33a9aac232d9638c1f9d7bef872a4b844a930223e1a5ac456d509" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:c2bd038217e7b6fb8903c5a99181178ca4f2ed6287aadae959ec708b2b6afb33" [label="mkdir{path=/code}" shape="note"];
  "sha256:cc5c232af5c3988298db82b2b5b2bcc1b3dabcb63a03017c9abde39d90740265" [label="local://context" shape="ellipse"];
  "sha256:80c96e71ea8d9a6ff21d7e2135ccf1b5e62ea9a37620f67127d52c2113a793ce" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:1cc0b3fe9ad4f5c70ac37d6ecc3497bd9cf07d6a2a7adcc27dcbc3ed7efd5c20" [label="/bin/sh -c apk add --no-cache postgresql-libs &&     apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev &&     python3 -m pip install -r requirements.txt --no-cache-dir &&     apk --purge del .build-deps" shape="box"];
  "sha256:1cd2cc39b6248497922939c3a0957376e7365883445a22acc94506a7bfc85815" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:3232c61b51797850fe3074e33c7bfeb4870b62b9fd9dbc8251de73ab6640658f" [label="sha256:3232c61b51797850fe3074e33c7bfeb4870b62b9fd9dbc8251de73ab6640658f" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:f8c457e7b4a33a9aac232d9638c1f9d7bef872a4b844a930223e1a5ac456d509" [label=""];
  "sha256:f8c457e7b4a33a9aac232d9638c1f9d7bef872a4b844a930223e1a5ac456d509" -> "sha256:c2bd038217e7b6fb8903c5a99181178ca4f2ed6287aadae959ec708b2b6afb33" [label=""];
  "sha256:c2bd038217e7b6fb8903c5a99181178ca4f2ed6287aadae959ec708b2b6afb33" -> "sha256:80c96e71ea8d9a6ff21d7e2135ccf1b5e62ea9a37620f67127d52c2113a793ce" [label=""];
  "sha256:cc5c232af5c3988298db82b2b5b2bcc1b3dabcb63a03017c9abde39d90740265" -> "sha256:80c96e71ea8d9a6ff21d7e2135ccf1b5e62ea9a37620f67127d52c2113a793ce" [label=""];
  "sha256:80c96e71ea8d9a6ff21d7e2135ccf1b5e62ea9a37620f67127d52c2113a793ce" -> "sha256:1cc0b3fe9ad4f5c70ac37d6ecc3497bd9cf07d6a2a7adcc27dcbc3ed7efd5c20" [label=""];
  "sha256:1cc0b3fe9ad4f5c70ac37d6ecc3497bd9cf07d6a2a7adcc27dcbc3ed7efd5c20" -> "sha256:1cd2cc39b6248497922939c3a0957376e7365883445a22acc94506a7bfc85815" [label=""];
  "sha256:cc5c232af5c3988298db82b2b5b2bcc1b3dabcb63a03017c9abde39d90740265" -> "sha256:1cd2cc39b6248497922939c3a0957376e7365883445a22acc94506a7bfc85815" [label=""];
  "sha256:1cd2cc39b6248497922939c3a0957376e7365883445a22acc94506a7bfc85815" -> "sha256:3232c61b51797850fe3074e33c7bfeb4870b62b9fd9dbc8251de73ab6640658f" [label=""];
}

