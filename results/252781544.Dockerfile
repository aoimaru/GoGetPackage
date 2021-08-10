[app/sources/252781544.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:764f0c91679a54b0ddc0384b6fe88e8b35c72a57371c91432c40944ff671f77e" [label="local://context" shape="ellipse"];
  "sha256:a327fb4c169355a261fa6752198825e5823ce6e7d2a4878bb46d8e75f297757b" [label="copy{src=/--from=0, dest=/bin},copy{src=/bin/ssh_keygen, dest=/bin}" shape="note"];
  "sha256:3ca606b899dc93a373f140f16259556d1878c8471da14eedc28b3cc50b81bacc" [label="sha256:3ca606b899dc93a373f140f16259556d1878c8471da14eedc28b3cc50b81bacc" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label=""];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" -> "sha256:a327fb4c169355a261fa6752198825e5823ce6e7d2a4878bb46d8e75f297757b" [label=""];
  "sha256:764f0c91679a54b0ddc0384b6fe88e8b35c72a57371c91432c40944ff671f77e" -> "sha256:a327fb4c169355a261fa6752198825e5823ce6e7d2a4878bb46d8e75f297757b" [label=""];
  "sha256:a327fb4c169355a261fa6752198825e5823ce6e7d2a4878bb46d8e75f297757b" -> "sha256:3ca606b899dc93a373f140f16259556d1878c8471da14eedc28b3cc50b81bacc" [label=""];
}

