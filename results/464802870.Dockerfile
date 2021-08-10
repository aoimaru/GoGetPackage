[app/sources/464802870.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:125def0ca4a4c26240b2dad4c437caf43850c662d2e5d600f17fb5a0b9f6f7e9" [label="local://context" shape="ellipse"];
  "sha256:e77ba9ab50b38193e643c7bac4cab73ab16445969e55302fdab742f18701eaab" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:366bfd9c4b0c0a8b1e619f9ef5bbb92c6ffb79d87002b725d6b630c41c0fb982" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3699b96805e6763f9012087725788c44f69647c0e7d37a280cebfb0b3d062587" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:ce12185ff689d6cd5ac45efaf4f03d283f5b66138e23cb8874d6f66234ea9c5b" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:d394fe5a2d60509f05d58b42edd09c8b0e585357ba08fcf860480d678bc4ddcd" [label="sha256:d394fe5a2d60509f05d58b42edd09c8b0e585357ba08fcf860480d678bc4ddcd" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label=""];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" -> "sha256:e77ba9ab50b38193e643c7bac4cab73ab16445969e55302fdab742f18701eaab" [label=""];
  "sha256:125def0ca4a4c26240b2dad4c437caf43850c662d2e5d600f17fb5a0b9f6f7e9" -> "sha256:e77ba9ab50b38193e643c7bac4cab73ab16445969e55302fdab742f18701eaab" [label=""];
  "sha256:e77ba9ab50b38193e643c7bac4cab73ab16445969e55302fdab742f18701eaab" -> "sha256:366bfd9c4b0c0a8b1e619f9ef5bbb92c6ffb79d87002b725d6b630c41c0fb982" [label=""];
  "sha256:366bfd9c4b0c0a8b1e619f9ef5bbb92c6ffb79d87002b725d6b630c41c0fb982" -> "sha256:3699b96805e6763f9012087725788c44f69647c0e7d37a280cebfb0b3d062587" [label=""];
  "sha256:125def0ca4a4c26240b2dad4c437caf43850c662d2e5d600f17fb5a0b9f6f7e9" -> "sha256:3699b96805e6763f9012087725788c44f69647c0e7d37a280cebfb0b3d062587" [label=""];
  "sha256:3699b96805e6763f9012087725788c44f69647c0e7d37a280cebfb0b3d062587" -> "sha256:ce12185ff689d6cd5ac45efaf4f03d283f5b66138e23cb8874d6f66234ea9c5b" [label=""];
  "sha256:ce12185ff689d6cd5ac45efaf4f03d283f5b66138e23cb8874d6f66234ea9c5b" -> "sha256:d394fe5a2d60509f05d58b42edd09c8b0e585357ba08fcf860480d678bc4ddcd" [label=""];
}

