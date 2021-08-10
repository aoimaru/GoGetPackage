[app/sources/252779887.Dockerfile]
digraph {
  "sha256:588d2ceb3f89b9506447596c9c3e93229ff914a370f58347f030a7e73fe58cf5" [label="docker-image://docker.io/mhart/alpine-node:4" shape="ellipse"];
  "sha256:84ec995c86a261d0e99ad91f36fc98fc054bcc133ac1dbae7ba560395fb3d5e6" [label="/bin/sh -c mkdir /deploy" shape="box"];
  "sha256:6fd7461e381fcd4c8fa0516c9121060f9090942aaa262c22403c89c0d3a22fce" [label="mkdir{path=/deploy}" shape="note"];
  "sha256:29fa2a4f865a2c244e3a85b0829c5af5820ed6c7a2d157b70f49b4531fd9a2a6" [label="local://context" shape="ellipse"];
  "sha256:455a148b70b20bdd6ce282c3819ccfa9b38489cd1231a3c5caf7a52019f6fdcb" [label="copy{src=/package.json, dest=/deploy/package.json}" shape="note"];
  "sha256:86aa24b509fe27abac5909593c9880b243cd40cc33cf43c71b7ddc75b38aad50" [label="copy{src=/npm-shrinkwrap.json, dest=/deploy/npm-shrinkwrap.json}" shape="note"];
  "sha256:b9da978d67264eb9f1b872a65a9f0dac3276ad3ea3ceec3b4bbf3947cd2cb86d" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3a5cf084bb543f50ee13ae06303cccd4bd6bb0cd37568b5be7ff1820c17ed7d1" [label="copy{src=/, dest=/deploy/}" shape="note"];
  "sha256:6ad9054b61be2268f0785904d1bff85c35c9f9b72e0dc7654b4e9b5bd2f05ad9" [label="sha256:6ad9054b61be2268f0785904d1bff85c35c9f9b72e0dc7654b4e9b5bd2f05ad9" shape="plaintext"];
  "sha256:588d2ceb3f89b9506447596c9c3e93229ff914a370f58347f030a7e73fe58cf5" -> "sha256:84ec995c86a261d0e99ad91f36fc98fc054bcc133ac1dbae7ba560395fb3d5e6" [label=""];
  "sha256:84ec995c86a261d0e99ad91f36fc98fc054bcc133ac1dbae7ba560395fb3d5e6" -> "sha256:6fd7461e381fcd4c8fa0516c9121060f9090942aaa262c22403c89c0d3a22fce" [label=""];
  "sha256:6fd7461e381fcd4c8fa0516c9121060f9090942aaa262c22403c89c0d3a22fce" -> "sha256:455a148b70b20bdd6ce282c3819ccfa9b38489cd1231a3c5caf7a52019f6fdcb" [label=""];
  "sha256:29fa2a4f865a2c244e3a85b0829c5af5820ed6c7a2d157b70f49b4531fd9a2a6" -> "sha256:455a148b70b20bdd6ce282c3819ccfa9b38489cd1231a3c5caf7a52019f6fdcb" [label=""];
  "sha256:455a148b70b20bdd6ce282c3819ccfa9b38489cd1231a3c5caf7a52019f6fdcb" -> "sha256:86aa24b509fe27abac5909593c9880b243cd40cc33cf43c71b7ddc75b38aad50" [label=""];
  "sha256:29fa2a4f865a2c244e3a85b0829c5af5820ed6c7a2d157b70f49b4531fd9a2a6" -> "sha256:86aa24b509fe27abac5909593c9880b243cd40cc33cf43c71b7ddc75b38aad50" [label=""];
  "sha256:86aa24b509fe27abac5909593c9880b243cd40cc33cf43c71b7ddc75b38aad50" -> "sha256:b9da978d67264eb9f1b872a65a9f0dac3276ad3ea3ceec3b4bbf3947cd2cb86d" [label=""];
  "sha256:b9da978d67264eb9f1b872a65a9f0dac3276ad3ea3ceec3b4bbf3947cd2cb86d" -> "sha256:3a5cf084bb543f50ee13ae06303cccd4bd6bb0cd37568b5be7ff1820c17ed7d1" [label=""];
  "sha256:29fa2a4f865a2c244e3a85b0829c5af5820ed6c7a2d157b70f49b4531fd9a2a6" -> "sha256:3a5cf084bb543f50ee13ae06303cccd4bd6bb0cd37568b5be7ff1820c17ed7d1" [label=""];
  "sha256:3a5cf084bb543f50ee13ae06303cccd4bd6bb0cd37568b5be7ff1820c17ed7d1" -> "sha256:6ad9054b61be2268f0785904d1bff85c35c9f9b72e0dc7654b4e9b5bd2f05ad9" [label=""];
}

