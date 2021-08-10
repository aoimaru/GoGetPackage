[app/sources/252770755.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:adee6a902b6b519f8d8f05682f83ca90bb2c968403dfa20ee60fc9c10918c99e" [label="local://context" shape="ellipse"];
  "sha256:fa848b1dbf2ad40718adc5e933a0bc955d24f9b261fa29a698796f4a1b9fe463" [label="copy{src=/, dest=/go/src/github.com/afritzler/garden-universe}" shape="note"];
  "sha256:a5a55fc9c9c800548c8d1fe27594fa4de0a86e7140d144793ad1d2b0c1fb96f6" [label="/bin/sh -c apk --no-cache add -t build-deps build-base go git && apk --no-cache add ca-certificates && cd /go/src/github.com/afritzler/garden-universe && export GOPATH=/go && go build -o /bin/garden-universe && rm -rf /go && apk del --purge build-deps" shape="box"];
  "sha256:6edcba17a462f284a0660189400cf6563d1f13033db1c876158abd991cba836b" [label="sha256:6edcba17a462f284a0660189400cf6563d1f13033db1c876158abd991cba836b" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:fa848b1dbf2ad40718adc5e933a0bc955d24f9b261fa29a698796f4a1b9fe463" [label=""];
  "sha256:adee6a902b6b519f8d8f05682f83ca90bb2c968403dfa20ee60fc9c10918c99e" -> "sha256:fa848b1dbf2ad40718adc5e933a0bc955d24f9b261fa29a698796f4a1b9fe463" [label=""];
  "sha256:fa848b1dbf2ad40718adc5e933a0bc955d24f9b261fa29a698796f4a1b9fe463" -> "sha256:a5a55fc9c9c800548c8d1fe27594fa4de0a86e7140d144793ad1d2b0c1fb96f6" [label=""];
  "sha256:a5a55fc9c9c800548c8d1fe27594fa4de0a86e7140d144793ad1d2b0c1fb96f6" -> "sha256:6edcba17a462f284a0660189400cf6563d1f13033db1c876158abd991cba836b" [label=""];
}

