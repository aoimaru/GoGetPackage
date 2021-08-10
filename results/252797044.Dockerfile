[app/sources/252797044.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:57f066d9c7f41b4fc67232f1744ab83277ab4f639d102f196955f62d854a3c31" [label="local://context" shape="ellipse"];
  "sha256:d59ded23c6410406faac79695d2c1f753aa15cb567fa162491b488a897d7c542" [label="copy{src=/, dest=/go/src/github.com/cloudflare/complainer}" shape="note"];
  "sha256:0570d5caf67ce11f17a4e00e0d01037cf8cff92d3a66f2ad0012b8a1ed24ac2f" [label="/bin/sh -c apk --update add go ca-certificates && export GOPATH=/go GO15VENDOREXPERIMENT=1 && go get github.com/cloudflare/complainer/... && apk del go" shape="box"];
  "sha256:5de002d03b7e27deab5f36fa58ac72ba7d037f685a40dadc9530b0d69c32e780" [label="sha256:5de002d03b7e27deab5f36fa58ac72ba7d037f685a40dadc9530b0d69c32e780" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:d59ded23c6410406faac79695d2c1f753aa15cb567fa162491b488a897d7c542" [label=""];
  "sha256:57f066d9c7f41b4fc67232f1744ab83277ab4f639d102f196955f62d854a3c31" -> "sha256:d59ded23c6410406faac79695d2c1f753aa15cb567fa162491b488a897d7c542" [label=""];
  "sha256:d59ded23c6410406faac79695d2c1f753aa15cb567fa162491b488a897d7c542" -> "sha256:0570d5caf67ce11f17a4e00e0d01037cf8cff92d3a66f2ad0012b8a1ed24ac2f" [label=""];
  "sha256:0570d5caf67ce11f17a4e00e0d01037cf8cff92d3a66f2ad0012b8a1ed24ac2f" -> "sha256:5de002d03b7e27deab5f36fa58ac72ba7d037f685a40dadc9530b0d69c32e780" [label=""];
}

