[app/sources/252775879.Dockerfile]
digraph {
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" [label="docker-image://docker.io/library/node:8-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4" shape="ellipse"];
  "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:9936feb2d57bf9b2d54d09241b85a49323b7273e403c50532d68ed7c5f87c372" [label="/bin/sh -c apk add -t .gyp --no-cache git python g++ make && npm install -g truffle@3.4.6 && apk del .gyp" shape="box"];
  "sha256:b64e6507a3aaa6cc6d9932d4bf87f80db7bf99899fb00c9770f47e009278422c" [label="sha256:b64e6507a3aaa6cc6d9932d4bf87f80db7bf99899fb00c9770f47e009278422c" shape="plaintext"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" [label=""];
  "sha256:1eeb348e3e20103ec9d087584b0661568147a857143958d045068315720ba1cf" -> "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" [label=""];
  "sha256:b348544e707ccdbf3b88c278fddc7aab26c740df727b90602fecd298f26fef08" -> "sha256:9936feb2d57bf9b2d54d09241b85a49323b7273e403c50532d68ed7c5f87c372" [label=""];
  "sha256:9936feb2d57bf9b2d54d09241b85a49323b7273e403c50532d68ed7c5f87c372" -> "sha256:b64e6507a3aaa6cc6d9932d4bf87f80db7bf99899fb00c9770f47e009278422c" [label=""];
}

