[app/sources/261606954.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:4f59ebfe07aba5b6f84dabe45ec17d116f5882f45349f62d74d0800343909dd9" [label="mkdir{path=/usr/share/app}" shape="note"];
  "sha256:4016a0843a714f2bbfbc9df3c049e269c96d0f43c97089fbbea0521d760d1162" [label="local://context" shape="ellipse"];
  "sha256:4126d56e22cb2132c189485f56cac15b8f0d5454eaf6547bf21be842ac132454" [label="copy{src=/package.json, dest=/usr/share/app/},copy{src=/package-lock.json, dest=/usr/share/app/}" shape="note"];
  "sha256:fb26bc04d4a6e2ccad6f5bcae9254c9a42feeb24ed2f00e588bc5eb92648c454" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4af3b0b3edc89033d8717407a7f682a4c48e29e15772082ee199c4d0bcd1451b" [label="copy{src=/, dest=/usr/share/app/}" shape="note"];
  "sha256:6e523f7f096079aacb37fea6224af4245716111e811f5dc5f04f59234fe24208" [label="sha256:6e523f7f096079aacb37fea6224af4245716111e811f5dc5f04f59234fe24208" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:4f59ebfe07aba5b6f84dabe45ec17d116f5882f45349f62d74d0800343909dd9" [label=""];
  "sha256:4f59ebfe07aba5b6f84dabe45ec17d116f5882f45349f62d74d0800343909dd9" -> "sha256:4126d56e22cb2132c189485f56cac15b8f0d5454eaf6547bf21be842ac132454" [label=""];
  "sha256:4016a0843a714f2bbfbc9df3c049e269c96d0f43c97089fbbea0521d760d1162" -> "sha256:4126d56e22cb2132c189485f56cac15b8f0d5454eaf6547bf21be842ac132454" [label=""];
  "sha256:4126d56e22cb2132c189485f56cac15b8f0d5454eaf6547bf21be842ac132454" -> "sha256:fb26bc04d4a6e2ccad6f5bcae9254c9a42feeb24ed2f00e588bc5eb92648c454" [label=""];
  "sha256:fb26bc04d4a6e2ccad6f5bcae9254c9a42feeb24ed2f00e588bc5eb92648c454" -> "sha256:4af3b0b3edc89033d8717407a7f682a4c48e29e15772082ee199c4d0bcd1451b" [label=""];
  "sha256:4016a0843a714f2bbfbc9df3c049e269c96d0f43c97089fbbea0521d760d1162" -> "sha256:4af3b0b3edc89033d8717407a7f682a4c48e29e15772082ee199c4d0bcd1451b" [label=""];
  "sha256:4af3b0b3edc89033d8717407a7f682a4c48e29e15772082ee199c4d0bcd1451b" -> "sha256:6e523f7f096079aacb37fea6224af4245716111e811f5dc5f04f59234fe24208" [label=""];
}

