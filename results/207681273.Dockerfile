[app/sources/207681273.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7d33e16efc37f9ff9c79ab4945abee3799b88c1da8f9bfb7c25c286292d5190e" [label="local://context" shape="ellipse"];
  "sha256:3015ce4a0a4d05a75f84d91445b4fa666bbfa17e179dff09aad5a485d6f6e3d8" [label="copy{src=/Pipfile, dest=/usr/src/app/},copy{src=/Pipfile.lock, dest=/usr/src/app/},copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2ef0220e2714a8bf0c1d9a6cad20e2618a9e36b15bad06cba232fed64b5d6d18" [label="/bin/sh -c apk update &&  apk add postgresql-libs &&  apk add --virtual .build-deps gcc musl-dev postgresql-dev &&  pip install pipenv &&  pipenv install --system --ignore-pipfile &&  apk --purge del .build-deps" shape="box"];
  "sha256:fde038e10f0f860b664430ca1bb2cf735a89b321b7c43068048caf880f7de5bb" [label="sha256:fde038e10f0f860b664430ca1bb2cf735a89b321b7c43068048caf880f7de5bb" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" [label=""];
  "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" -> "sha256:3015ce4a0a4d05a75f84d91445b4fa666bbfa17e179dff09aad5a485d6f6e3d8" [label=""];
  "sha256:7d33e16efc37f9ff9c79ab4945abee3799b88c1da8f9bfb7c25c286292d5190e" -> "sha256:3015ce4a0a4d05a75f84d91445b4fa666bbfa17e179dff09aad5a485d6f6e3d8" [label=""];
  "sha256:3015ce4a0a4d05a75f84d91445b4fa666bbfa17e179dff09aad5a485d6f6e3d8" -> "sha256:2ef0220e2714a8bf0c1d9a6cad20e2618a9e36b15bad06cba232fed64b5d6d18" [label=""];
  "sha256:2ef0220e2714a8bf0c1d9a6cad20e2618a9e36b15bad06cba232fed64b5d6d18" -> "sha256:fde038e10f0f860b664430ca1bb2cf735a89b321b7c43068048caf880f7de5bb" [label=""];
}

