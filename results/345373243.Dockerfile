[app/sources/345373243.Dockerfile]
digraph {
  "sha256:281641a227df8d6c01d98f8d7d548c481596d5d1ed4dc67c8c75de57136ad483" [label="docker-image://docker.io/balenalib/jetson-tx1-alpine:edge-build" shape="ellipse"];
  "sha256:d063857c1f8133234bc54e73d67af6781cfe0156375b66c98a57a5620beff4b4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:03411bc9b728bef10b57b6529d119d40f8777c59a7a09b7b75187c06abef7390" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:498132ea7e6645bfdf939d8eed37b796a76cbf2c8e849ed9bc5bad4324cf2206" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7de4a63dcdc99ecf1a70ea2325e1513f4b3efbc2d4f3d7ee22d7133192222887" [label="mkdir{path=/go}" shape="note"];
  "sha256:7b0a42955228fba12bd25e902f233cb6c34b417309a99fb78ee13fd1dca545cd" [label="sha256:7b0a42955228fba12bd25e902f233cb6c34b417309a99fb78ee13fd1dca545cd" shape="plaintext"];
  "sha256:281641a227df8d6c01d98f8d7d548c481596d5d1ed4dc67c8c75de57136ad483" -> "sha256:d063857c1f8133234bc54e73d67af6781cfe0156375b66c98a57a5620beff4b4" [label=""];
  "sha256:d063857c1f8133234bc54e73d67af6781cfe0156375b66c98a57a5620beff4b4" -> "sha256:03411bc9b728bef10b57b6529d119d40f8777c59a7a09b7b75187c06abef7390" [label=""];
  "sha256:03411bc9b728bef10b57b6529d119d40f8777c59a7a09b7b75187c06abef7390" -> "sha256:498132ea7e6645bfdf939d8eed37b796a76cbf2c8e849ed9bc5bad4324cf2206" [label=""];
  "sha256:498132ea7e6645bfdf939d8eed37b796a76cbf2c8e849ed9bc5bad4324cf2206" -> "sha256:7de4a63dcdc99ecf1a70ea2325e1513f4b3efbc2d4f3d7ee22d7133192222887" [label=""];
  "sha256:7de4a63dcdc99ecf1a70ea2325e1513f4b3efbc2d4f3d7ee22d7133192222887" -> "sha256:7b0a42955228fba12bd25e902f233cb6c34b417309a99fb78ee13fd1dca545cd" [label=""];
}

