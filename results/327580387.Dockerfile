[app/sources/327580387.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:04bb898bdea70abc94fe8ef03f5d06767b864265c65411ed10baa3424ea55a0c" [label="local://context" shape="ellipse"];
  "sha256:19271fcb09521ec87ac5b2efb50c8375aab68b8713076bf7be846baaff9e2c4b" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:106e91ee982e64387304710a918b6c9a651172a95e72e05cc8208a1dcb3bd5cf" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:1598cfe05fdc167f2b9adad201bd813288dc089488609d50f62e459944c42c2e" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:f38a99ffdcf70f49fd4ceb922d10d48c4d3fb24577f51a504592e0bb6da44e89" [label="sha256:f38a99ffdcf70f49fd4ceb922d10d48c4d3fb24577f51a504592e0bb6da44e89" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:19271fcb09521ec87ac5b2efb50c8375aab68b8713076bf7be846baaff9e2c4b" [label=""];
  "sha256:04bb898bdea70abc94fe8ef03f5d06767b864265c65411ed10baa3424ea55a0c" -> "sha256:19271fcb09521ec87ac5b2efb50c8375aab68b8713076bf7be846baaff9e2c4b" [label=""];
  "sha256:19271fcb09521ec87ac5b2efb50c8375aab68b8713076bf7be846baaff9e2c4b" -> "sha256:106e91ee982e64387304710a918b6c9a651172a95e72e05cc8208a1dcb3bd5cf" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:1598cfe05fdc167f2b9adad201bd813288dc089488609d50f62e459944c42c2e" [label=""];
  "sha256:106e91ee982e64387304710a918b6c9a651172a95e72e05cc8208a1dcb3bd5cf" -> "sha256:1598cfe05fdc167f2b9adad201bd813288dc089488609d50f62e459944c42c2e" [label=""];
  "sha256:1598cfe05fdc167f2b9adad201bd813288dc089488609d50f62e459944c42c2e" -> "sha256:f38a99ffdcf70f49fd4ceb922d10d48c4d3fb24577f51a504592e0bb6da44e89" [label=""];
}

