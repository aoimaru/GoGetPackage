[app/sources/300190684.Dockerfile]
digraph {
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" [label="docker-image://docker.io/library/golang:1.9.2" shape="ellipse"];
  "sha256:cf985223c405b8e6cefd7441fbfa4ced10a52178f35804c0f506c7fb5d049caf" [label="local://context" shape="ellipse"];
  "sha256:64e265f5ba9d57c3c70b4ced3d4dc92141507a3f0255feb796a418e3c58169d3" [label="copy{src=/*.go, dest=/go/}" shape="note"];
  "sha256:3d8ca088886c7e39dc842713573d28df3f53987dd81754dcdbb826088dd0edff" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -ldflags '-w -s' -installsuffix cgo -a -o /go/image-awaiter /go/*.go" shape="box"];
  "sha256:70184bec67e1473aeac5e2bb312bf985a188d51dfe54d3531c0edaa7a6c0ae83" [label="copy{src=/go/image-awaiter, dest=/image-awaiter}" shape="note"];
  "sha256:709c1b353f99468f566e21b8195425b09bd8ad507e7c3e7bcee702f05fcc5323" [label="sha256:709c1b353f99468f566e21b8195425b09bd8ad507e7c3e7bcee702f05fcc5323" shape="plaintext"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" -> "sha256:64e265f5ba9d57c3c70b4ced3d4dc92141507a3f0255feb796a418e3c58169d3" [label=""];
  "sha256:cf985223c405b8e6cefd7441fbfa4ced10a52178f35804c0f506c7fb5d049caf" -> "sha256:64e265f5ba9d57c3c70b4ced3d4dc92141507a3f0255feb796a418e3c58169d3" [label=""];
  "sha256:64e265f5ba9d57c3c70b4ced3d4dc92141507a3f0255feb796a418e3c58169d3" -> "sha256:3d8ca088886c7e39dc842713573d28df3f53987dd81754dcdbb826088dd0edff" [label=""];
  "sha256:3d8ca088886c7e39dc842713573d28df3f53987dd81754dcdbb826088dd0edff" -> "sha256:70184bec67e1473aeac5e2bb312bf985a188d51dfe54d3531c0edaa7a6c0ae83" [label=""];
  "sha256:70184bec67e1473aeac5e2bb312bf985a188d51dfe54d3531c0edaa7a6c0ae83" -> "sha256:709c1b353f99468f566e21b8195425b09bd8ad507e7c3e7bcee702f05fcc5323" [label=""];
}

