[app/sources/430178448.Dockerfile]
digraph {
  "sha256:dcb7a4fe71dfc75bb2f1cd0622e5538a57631900fea8ff58cc06395cf03f95da" [label="docker-image://docker.io/library/node:9-stretch" shape="ellipse"];
  "sha256:83e72be4b2fe0cc55f1fcc94198857817df0739e1b7e0106b10ebe13b43a0a64" [label="mkdir{path=/app}" shape="note"];
  "sha256:f40bd79c99b31d8052fc379fec442afa246de7be4d4f6192e0f1b9fe1a51b3d8" [label="/bin/sh -c node --version" shape="box"];
  "sha256:ae0012835d4ab6a7b58d59bd88623848c9bb0688cd9731c1a91b2b94ecaf170d" [label="/bin/sh -c apt-get update && apt-get install --force-yes --yes libcv-dev libopencv-dev jq imagemagick" shape="box"];
  "sha256:8da9d1f6a2d4caeccf1e0fec463d066caed44cb71388825ea507b0e37adc531a" [label="local://context" shape="ellipse"];
  "sha256:5c4f1935cfc1164b5411330fa2fe857abafbcd5cc0e590bcc1e455fb45da1491" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:e79bc03912bacc092980f3f0871e0c7be9365f741fbc23a84f5d9b91e326b947" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a6f62b17eb8f9e4a45b23228c99b9dff24b568764d63b03919060d50e6acff93" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2dd04013bf3d2a90162ff215ef24e22e431df4d3deace2e2d825f3603852467d" [label="sha256:2dd04013bf3d2a90162ff215ef24e22e431df4d3deace2e2d825f3603852467d" shape="plaintext"];
  "sha256:dcb7a4fe71dfc75bb2f1cd0622e5538a57631900fea8ff58cc06395cf03f95da" -> "sha256:83e72be4b2fe0cc55f1fcc94198857817df0739e1b7e0106b10ebe13b43a0a64" [label=""];
  "sha256:83e72be4b2fe0cc55f1fcc94198857817df0739e1b7e0106b10ebe13b43a0a64" -> "sha256:f40bd79c99b31d8052fc379fec442afa246de7be4d4f6192e0f1b9fe1a51b3d8" [label=""];
  "sha256:f40bd79c99b31d8052fc379fec442afa246de7be4d4f6192e0f1b9fe1a51b3d8" -> "sha256:ae0012835d4ab6a7b58d59bd88623848c9bb0688cd9731c1a91b2b94ecaf170d" [label=""];
  "sha256:ae0012835d4ab6a7b58d59bd88623848c9bb0688cd9731c1a91b2b94ecaf170d" -> "sha256:5c4f1935cfc1164b5411330fa2fe857abafbcd5cc0e590bcc1e455fb45da1491" [label=""];
  "sha256:8da9d1f6a2d4caeccf1e0fec463d066caed44cb71388825ea507b0e37adc531a" -> "sha256:5c4f1935cfc1164b5411330fa2fe857abafbcd5cc0e590bcc1e455fb45da1491" [label=""];
  "sha256:5c4f1935cfc1164b5411330fa2fe857abafbcd5cc0e590bcc1e455fb45da1491" -> "sha256:e79bc03912bacc092980f3f0871e0c7be9365f741fbc23a84f5d9b91e326b947" [label=""];
  "sha256:e79bc03912bacc092980f3f0871e0c7be9365f741fbc23a84f5d9b91e326b947" -> "sha256:a6f62b17eb8f9e4a45b23228c99b9dff24b568764d63b03919060d50e6acff93" [label=""];
  "sha256:8da9d1f6a2d4caeccf1e0fec463d066caed44cb71388825ea507b0e37adc531a" -> "sha256:a6f62b17eb8f9e4a45b23228c99b9dff24b568764d63b03919060d50e6acff93" [label=""];
  "sha256:a6f62b17eb8f9e4a45b23228c99b9dff24b568764d63b03919060d50e6acff93" -> "sha256:2dd04013bf3d2a90162ff215ef24e22e431df4d3deace2e2d825f3603852467d" [label=""];
}

