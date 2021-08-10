[app/sources/232062819.Dockerfile]
digraph {
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" [label="docker-image://docker.io/library/node:8-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4" shape="ellipse"];
  "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a1619d106bff4df3b5c7275bdc23d656dd3f284a4206d10946b6d1c84a647e30" [label="local://context" shape="ellipse"];
  "sha256:1da532e3dc422076d32e5f6f55a813d287bbd6a397ab8ba9d38371b6abb74885" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:14c9d095bbaed9b3fe4ef0fe770a6cc28dd5cda2d1503b7d80e405415ee8c8a9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a51f5a8359561ff3aec150cf1ef68cae3b06e46c2ac249c3564d0387c37e2800" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:3f36c5f184ffe94847d1346fae472e498fd1137560c8cadccde095dbf66001cb" [label="sha256:3f36c5f184ffe94847d1346fae472e498fd1137560c8cadccde095dbf66001cb" shape="plaintext"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" [label=""];
  "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" -> "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" [label=""];
  "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" -> "sha256:1da532e3dc422076d32e5f6f55a813d287bbd6a397ab8ba9d38371b6abb74885" [label=""];
  "sha256:a1619d106bff4df3b5c7275bdc23d656dd3f284a4206d10946b6d1c84a647e30" -> "sha256:1da532e3dc422076d32e5f6f55a813d287bbd6a397ab8ba9d38371b6abb74885" [label=""];
  "sha256:1da532e3dc422076d32e5f6f55a813d287bbd6a397ab8ba9d38371b6abb74885" -> "sha256:14c9d095bbaed9b3fe4ef0fe770a6cc28dd5cda2d1503b7d80e405415ee8c8a9" [label=""];
  "sha256:14c9d095bbaed9b3fe4ef0fe770a6cc28dd5cda2d1503b7d80e405415ee8c8a9" -> "sha256:a51f5a8359561ff3aec150cf1ef68cae3b06e46c2ac249c3564d0387c37e2800" [label=""];
  "sha256:a1619d106bff4df3b5c7275bdc23d656dd3f284a4206d10946b6d1c84a647e30" -> "sha256:a51f5a8359561ff3aec150cf1ef68cae3b06e46c2ac249c3564d0387c37e2800" [label=""];
  "sha256:a51f5a8359561ff3aec150cf1ef68cae3b06e46c2ac249c3564d0387c37e2800" -> "sha256:3f36c5f184ffe94847d1346fae472e498fd1137560c8cadccde095dbf66001cb" [label=""];
}

