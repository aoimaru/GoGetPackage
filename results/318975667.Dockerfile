[app/sources/318975667.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:d281799993f911c1c737502aca895b55a234a28ed0e3dcc044558cd2baaaad6b" [label="local://context" shape="ellipse"];
  "sha256:4cbd405b7662b3162fb353485a82495247dffeec77216bb3087988b2fa5d5f51" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:1d72c68d92a3ffee1a91fb8a04872f4460140e4af5394510e11c2617177d42f3" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:3237ccfc1642f0fc747d46e0a9f4dd336d0e3f6dfbb8b35165178e3dab690f9b" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:2ee0ae44ff7c3c45ffa133f18eefd59e1d9e152e9956974041ffde232517b4ae" [label="sha256:2ee0ae44ff7c3c45ffa133f18eefd59e1d9e152e9956974041ffde232517b4ae" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:4cbd405b7662b3162fb353485a82495247dffeec77216bb3087988b2fa5d5f51" [label=""];
  "sha256:d281799993f911c1c737502aca895b55a234a28ed0e3dcc044558cd2baaaad6b" -> "sha256:4cbd405b7662b3162fb353485a82495247dffeec77216bb3087988b2fa5d5f51" [label=""];
  "sha256:4cbd405b7662b3162fb353485a82495247dffeec77216bb3087988b2fa5d5f51" -> "sha256:1d72c68d92a3ffee1a91fb8a04872f4460140e4af5394510e11c2617177d42f3" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:3237ccfc1642f0fc747d46e0a9f4dd336d0e3f6dfbb8b35165178e3dab690f9b" [label=""];
  "sha256:1d72c68d92a3ffee1a91fb8a04872f4460140e4af5394510e11c2617177d42f3" -> "sha256:3237ccfc1642f0fc747d46e0a9f4dd336d0e3f6dfbb8b35165178e3dab690f9b" [label=""];
  "sha256:3237ccfc1642f0fc747d46e0a9f4dd336d0e3f6dfbb8b35165178e3dab690f9b" -> "sha256:2ee0ae44ff7c3c45ffa133f18eefd59e1d9e152e9956974041ffde232517b4ae" [label=""];
}

