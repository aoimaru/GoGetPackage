[app/sources/467533838.Dockerfile]
digraph {
  "sha256:72000a558927a24750945f7bdcf4b4077d3fcb397b9c11317716a9bc56754887" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:885cc192d9a9b531cc86e1694cad3a99e66724960f4ee1820e32cd98f935306c" [label="mkdir{path=/opt/webauthn.io}" shape="note"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:3d4c7b69dbf9f58200eea72a6e07194d784b6d1382319f43cd88d876a5d0aed3" [label="/bin/sh -c apk add git build-base" shape="box"];
  "sha256:53ac2cae530a1e69161afd52c0414d7d9ea6c36021df5d886d7805a710e48dad" [label="mkdir{path=/go/src/github.com/duo-labs/webauthn.io}" shape="note"];
  "sha256:618e5ee4b834066e9c909c07409ce8984f26523a335ff26b0dfe7db355205e07" [label="copy{src=/, dest=/go/src/github.com/duo-labs/webauthn.io/}" shape="note"];
  "sha256:d6aac8abda3d834c90d37cb1f4d7aac2970a3e5761439bf6e23cd497c4fd0aa4" [label="/bin/sh -c go get -d -v ./..." shape="box"];
  "sha256:8cca4deb84d2c6abee8605c48862a64968fef385ddae952f21b63c578c004d3d" [label="/bin/sh -c go build -o webauthn.io" shape="box"];
  "sha256:1ce1466c093330afc7aee06c93c687fb33bc3d10bdac408e274feb129b3625dc" [label="copy{src=/go/src/github.com/duo-labs/webauthn.io/webauthn.io, dest=/opt/webauthn.io/webauthn.io}" shape="note"];
  "sha256:e255b312975cc46578a2db8d20d68bb5ffd5cb4d948ec2c5e920e0dfd00e80ff" [label="copy{src=/static/dist, dest=/opt/webauthn.io/static/dist}" shape="note"];
  "sha256:14adae59e225714e66c69bd0cc1b9f2c80ebbdb8f8beeb2416af2a68568a35e0" [label="copy{src=/templates, dest=/opt/webauthn.io/templates/}" shape="note"];
  "sha256:f65548e46a3d2b9a09a38292875dc09ae232da93597d9af34aa147dcd04117b1" [label="copy{src=/config.json, dest=/opt/webauthn.io/config.json}" shape="note"];
  "sha256:be2cfb5eb7990cfbfb7263b95a2834f7db539e9bfb87fc6b667d5aae06bb97fc" [label="/bin/sh -c sed -i 's/127.0.0.1/0.0.0.0/' config.json" shape="box"];
  "sha256:fef5b018b5ab569c6b92e407c97d9a60bb7ec8f533e7ac9820189a98fa4af7df" [label="sha256:fef5b018b5ab569c6b92e407c97d9a60bb7ec8f533e7ac9820189a98fa4af7df" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:885cc192d9a9b531cc86e1694cad3a99e66724960f4ee1820e32cd98f935306c" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:3d4c7b69dbf9f58200eea72a6e07194d784b6d1382319f43cd88d876a5d0aed3" [label=""];
  "sha256:3d4c7b69dbf9f58200eea72a6e07194d784b6d1382319f43cd88d876a5d0aed3" -> "sha256:53ac2cae530a1e69161afd52c0414d7d9ea6c36021df5d886d7805a710e48dad" [label=""];
  "sha256:53ac2cae530a1e69161afd52c0414d7d9ea6c36021df5d886d7805a710e48dad" -> "sha256:618e5ee4b834066e9c909c07409ce8984f26523a335ff26b0dfe7db355205e07" [label=""];
  "sha256:72000a558927a24750945f7bdcf4b4077d3fcb397b9c11317716a9bc56754887" -> "sha256:618e5ee4b834066e9c909c07409ce8984f26523a335ff26b0dfe7db355205e07" [label=""];
  "sha256:618e5ee4b834066e9c909c07409ce8984f26523a335ff26b0dfe7db355205e07" -> "sha256:d6aac8abda3d834c90d37cb1f4d7aac2970a3e5761439bf6e23cd497c4fd0aa4" [label=""];
  "sha256:d6aac8abda3d834c90d37cb1f4d7aac2970a3e5761439bf6e23cd497c4fd0aa4" -> "sha256:8cca4deb84d2c6abee8605c48862a64968fef385ddae952f21b63c578c004d3d" [label=""];
  "sha256:885cc192d9a9b531cc86e1694cad3a99e66724960f4ee1820e32cd98f935306c" -> "sha256:1ce1466c093330afc7aee06c93c687fb33bc3d10bdac408e274feb129b3625dc" [label=""];
  "sha256:8cca4deb84d2c6abee8605c48862a64968fef385ddae952f21b63c578c004d3d" -> "sha256:1ce1466c093330afc7aee06c93c687fb33bc3d10bdac408e274feb129b3625dc" [label=""];
  "sha256:1ce1466c093330afc7aee06c93c687fb33bc3d10bdac408e274feb129b3625dc" -> "sha256:e255b312975cc46578a2db8d20d68bb5ffd5cb4d948ec2c5e920e0dfd00e80ff" [label=""];
  "sha256:72000a558927a24750945f7bdcf4b4077d3fcb397b9c11317716a9bc56754887" -> "sha256:e255b312975cc46578a2db8d20d68bb5ffd5cb4d948ec2c5e920e0dfd00e80ff" [label=""];
  "sha256:e255b312975cc46578a2db8d20d68bb5ffd5cb4d948ec2c5e920e0dfd00e80ff" -> "sha256:14adae59e225714e66c69bd0cc1b9f2c80ebbdb8f8beeb2416af2a68568a35e0" [label=""];
  "sha256:72000a558927a24750945f7bdcf4b4077d3fcb397b9c11317716a9bc56754887" -> "sha256:14adae59e225714e66c69bd0cc1b9f2c80ebbdb8f8beeb2416af2a68568a35e0" [label=""];
  "sha256:14adae59e225714e66c69bd0cc1b9f2c80ebbdb8f8beeb2416af2a68568a35e0" -> "sha256:f65548e46a3d2b9a09a38292875dc09ae232da93597d9af34aa147dcd04117b1" [label=""];
  "sha256:72000a558927a24750945f7bdcf4b4077d3fcb397b9c11317716a9bc56754887" -> "sha256:f65548e46a3d2b9a09a38292875dc09ae232da93597d9af34aa147dcd04117b1" [label=""];
  "sha256:f65548e46a3d2b9a09a38292875dc09ae232da93597d9af34aa147dcd04117b1" -> "sha256:be2cfb5eb7990cfbfb7263b95a2834f7db539e9bfb87fc6b667d5aae06bb97fc" [label=""];
  "sha256:be2cfb5eb7990cfbfb7263b95a2834f7db539e9bfb87fc6b667d5aae06bb97fc" -> "sha256:fef5b018b5ab569c6b92e407c97d9a60bb7ec8f533e7ac9820189a98fa4af7df" [label=""];
}

