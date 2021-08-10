[app/sources/314260133.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:8ed69b1f8a1b9fa4d95aa068f0b92bbcd38abb25bfedef43c3bcfc20da924c89" [label="docker-image://docker.io/library/golang:1.9.3-alpine3.7" shape="ellipse"];
  "sha256:f8f446e0acf9b67008a4a3c2978383e6e39edf9f9493835d3c18200e8b28a050" [label="/bin/sh -c apk update && apk add ca-certificates curl git make tzdata" shape="box"];
  "sha256:abf0381dd2695da804027bf4253976e73e37d5d3da4fb8f6e4dd5b8755711c4a" [label="/bin/sh -c mkdir -p /go/src/github.com/banzaicloud/spot-price-exporter" shape="box"];
  "sha256:d756241662efe14d788069d7f0b915b8359a3874d7f4e0e0a6379450f5eb9147" [label="local://context" shape="ellipse"];
  "sha256:c2debf7f550d353b0a3409150786134806e462b596d805c2ec3ebb7ae29f448e" [label="copy{src=/Gopkg.*, dest=/go/src/github.com/banzaicloud/spot-price-exporter/},copy{src=/Makefile, dest=/go/src/github.com/banzaicloud/spot-price-exporter/}" shape="note"];
  "sha256:e09f41985edba7edf658e8c2caf550ce8a183d9ff9b295cedd3a54579fc4d330" [label="mkdir{path=/go/src/github.com/banzaicloud/spot-price-exporter}" shape="note"];
  "sha256:7d3d4a0faaef62a3b0bdb086ea88f3a202a85bbbfb5216fa157b127264816f4a" [label="/bin/sh -c make vendor" shape="box"];
  "sha256:8bbbcab28780e7f0a02f9d20797799ffff8c446ca142c67edd23786f4b1692f1" [label="copy{src=/, dest=/go/src/github.com/banzaicloud/spot-price-exporter}" shape="note"];
  "sha256:0db8e4fd443ee3f9abf04b2b20535864ffed41deb5edd69e4f2e78bf76b983df" [label="/bin/sh -c go build -o /bin/spot-price-exporter ." shape="box"];
  "sha256:dd4cf3d8b1f306e12c1b6463b3cc45e3cd0fb2795020121bf8afe996078b3425" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:3ae5d349012f8f44d4f286310e7641e629ca3436d6f8be15be63cfce82691c6f" [label="copy{src=/bin/spot-price-exporter, dest=/bin}" shape="note"];
  "sha256:0080daecac0d054a0149ec433de5e4133e33b81ac7fadfaa1a9c8c0210130433" [label="sha256:0080daecac0d054a0149ec433de5e4133e33b81ac7fadfaa1a9c8c0210130433" shape="plaintext"];
  "sha256:8ed69b1f8a1b9fa4d95aa068f0b92bbcd38abb25bfedef43c3bcfc20da924c89" -> "sha256:f8f446e0acf9b67008a4a3c2978383e6e39edf9f9493835d3c18200e8b28a050" [label=""];
  "sha256:f8f446e0acf9b67008a4a3c2978383e6e39edf9f9493835d3c18200e8b28a050" -> "sha256:abf0381dd2695da804027bf4253976e73e37d5d3da4fb8f6e4dd5b8755711c4a" [label=""];
  "sha256:abf0381dd2695da804027bf4253976e73e37d5d3da4fb8f6e4dd5b8755711c4a" -> "sha256:c2debf7f550d353b0a3409150786134806e462b596d805c2ec3ebb7ae29f448e" [label=""];
  "sha256:d756241662efe14d788069d7f0b915b8359a3874d7f4e0e0a6379450f5eb9147" -> "sha256:c2debf7f550d353b0a3409150786134806e462b596d805c2ec3ebb7ae29f448e" [label=""];
  "sha256:c2debf7f550d353b0a3409150786134806e462b596d805c2ec3ebb7ae29f448e" -> "sha256:e09f41985edba7edf658e8c2caf550ce8a183d9ff9b295cedd3a54579fc4d330" [label=""];
  "sha256:e09f41985edba7edf658e8c2caf550ce8a183d9ff9b295cedd3a54579fc4d330" -> "sha256:7d3d4a0faaef62a3b0bdb086ea88f3a202a85bbbfb5216fa157b127264816f4a" [label=""];
  "sha256:7d3d4a0faaef62a3b0bdb086ea88f3a202a85bbbfb5216fa157b127264816f4a" -> "sha256:8bbbcab28780e7f0a02f9d20797799ffff8c446ca142c67edd23786f4b1692f1" [label=""];
  "sha256:d756241662efe14d788069d7f0b915b8359a3874d7f4e0e0a6379450f5eb9147" -> "sha256:8bbbcab28780e7f0a02f9d20797799ffff8c446ca142c67edd23786f4b1692f1" [label=""];
  "sha256:8bbbcab28780e7f0a02f9d20797799ffff8c446ca142c67edd23786f4b1692f1" -> "sha256:0db8e4fd443ee3f9abf04b2b20535864ffed41deb5edd69e4f2e78bf76b983df" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:dd4cf3d8b1f306e12c1b6463b3cc45e3cd0fb2795020121bf8afe996078b3425" [label=""];
  "sha256:0db8e4fd443ee3f9abf04b2b20535864ffed41deb5edd69e4f2e78bf76b983df" -> "sha256:dd4cf3d8b1f306e12c1b6463b3cc45e3cd0fb2795020121bf8afe996078b3425" [label=""];
  "sha256:dd4cf3d8b1f306e12c1b6463b3cc45e3cd0fb2795020121bf8afe996078b3425" -> "sha256:3ae5d349012f8f44d4f286310e7641e629ca3436d6f8be15be63cfce82691c6f" [label=""];
  "sha256:0db8e4fd443ee3f9abf04b2b20535864ffed41deb5edd69e4f2e78bf76b983df" -> "sha256:3ae5d349012f8f44d4f286310e7641e629ca3436d6f8be15be63cfce82691c6f" [label=""];
  "sha256:3ae5d349012f8f44d4f286310e7641e629ca3436d6f8be15be63cfce82691c6f" -> "sha256:0080daecac0d054a0149ec433de5e4133e33b81ac7fadfaa1a9c8c0210130433" [label=""];
}

