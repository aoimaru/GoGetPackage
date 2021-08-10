[app/sources/196030435.Dockerfile]
digraph {
  "sha256:809956eab30ea150acdfc2ab85c4bfab9f73620a8dcb765c3d003fa460052c82" [label="docker-image://docker.io/library/node:8.2.0-alpine" shape="ellipse"];
  "sha256:1d70a8cdf1e011fbeea3e47d2ceeb91c0bcc0a584f24030dc4172ff015f9f686" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:d960ecb11fd1fcfa1d6945e2dfabf9c3b5b84850f683ea50bca0b57f8ab66a63" [label="local://context" shape="ellipse"];
  "sha256:ea5ef9d8cdb3efc2259100efb3c8f239f3fd638cf6adf493e37ee3a2b9f71699" [label="copy{src=/app/*, dest=/usr/src/app/}" shape="note"];
  "sha256:afafa7fccba4f5a5436e9ed7015d854931afd3cce12020e307155efed287ea73" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a00bdca147b66cacc72182e89b9596584b7600b5a83d8de5d55c9870f50f1010" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5771c6c931f89a62d7e125f91841e8bd9ae2835968a25e573833c2a341ed883c" [label="sha256:5771c6c931f89a62d7e125f91841e8bd9ae2835968a25e573833c2a341ed883c" shape="plaintext"];
  "sha256:809956eab30ea150acdfc2ab85c4bfab9f73620a8dcb765c3d003fa460052c82" -> "sha256:1d70a8cdf1e011fbeea3e47d2ceeb91c0bcc0a584f24030dc4172ff015f9f686" [label=""];
  "sha256:1d70a8cdf1e011fbeea3e47d2ceeb91c0bcc0a584f24030dc4172ff015f9f686" -> "sha256:ea5ef9d8cdb3efc2259100efb3c8f239f3fd638cf6adf493e37ee3a2b9f71699" [label=""];
  "sha256:d960ecb11fd1fcfa1d6945e2dfabf9c3b5b84850f683ea50bca0b57f8ab66a63" -> "sha256:ea5ef9d8cdb3efc2259100efb3c8f239f3fd638cf6adf493e37ee3a2b9f71699" [label=""];
  "sha256:ea5ef9d8cdb3efc2259100efb3c8f239f3fd638cf6adf493e37ee3a2b9f71699" -> "sha256:afafa7fccba4f5a5436e9ed7015d854931afd3cce12020e307155efed287ea73" [label=""];
  "sha256:afafa7fccba4f5a5436e9ed7015d854931afd3cce12020e307155efed287ea73" -> "sha256:a00bdca147b66cacc72182e89b9596584b7600b5a83d8de5d55c9870f50f1010" [label=""];
  "sha256:a00bdca147b66cacc72182e89b9596584b7600b5a83d8de5d55c9870f50f1010" -> "sha256:5771c6c931f89a62d7e125f91841e8bd9ae2835968a25e573833c2a341ed883c" [label=""];
}

