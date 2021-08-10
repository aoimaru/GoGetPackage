[app/sources/316259023.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:5fcdde0e38276e1c8202153fe4177ca2112c8f9cbf132e1511b29362598e47e8" [label="local://context" shape="ellipse"];
  "sha256:1260ad9ea22c1815573863165267584693c5d08faee69bbf26aabf5613acbc9f" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:1c6821615664a375b40793aadc5d240cf30737d2ce5fa3ab61c89bfca56291e3" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:cf281956d795503fc2c3c91224923225828e51d57627a883ba7a2f66e9954b67" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:1ccd6388c3621b51e04e69e783c91f7d35b4c670b89194b0290fe99d1a91a2bf" [label="sha256:1ccd6388c3621b51e04e69e783c91f7d35b4c670b89194b0290fe99d1a91a2bf" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:1260ad9ea22c1815573863165267584693c5d08faee69bbf26aabf5613acbc9f" [label=""];
  "sha256:5fcdde0e38276e1c8202153fe4177ca2112c8f9cbf132e1511b29362598e47e8" -> "sha256:1260ad9ea22c1815573863165267584693c5d08faee69bbf26aabf5613acbc9f" [label=""];
  "sha256:1260ad9ea22c1815573863165267584693c5d08faee69bbf26aabf5613acbc9f" -> "sha256:1c6821615664a375b40793aadc5d240cf30737d2ce5fa3ab61c89bfca56291e3" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:cf281956d795503fc2c3c91224923225828e51d57627a883ba7a2f66e9954b67" [label=""];
  "sha256:1c6821615664a375b40793aadc5d240cf30737d2ce5fa3ab61c89bfca56291e3" -> "sha256:cf281956d795503fc2c3c91224923225828e51d57627a883ba7a2f66e9954b67" [label=""];
  "sha256:cf281956d795503fc2c3c91224923225828e51d57627a883ba7a2f66e9954b67" -> "sha256:1ccd6388c3621b51e04e69e783c91f7d35b4c670b89194b0290fe99d1a91a2bf" [label=""];
}

