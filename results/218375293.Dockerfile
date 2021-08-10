[app/sources/218375293.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:92d668e31a043a80c25163e92614119119b59e70e2fdf1e0dff89c7d6e0c2eaf" [label="local://context" shape="ellipse"];
  "sha256:fec760d160f3081dbe146a78a0d1f676db053b58091ded46162ab3b1006f8d55" [label="copy{src=/gateway.alpine, dest=/usr/local/bin/gateway}" shape="note"];
  "sha256:fae19688889cdd22cb51b81cdc5ee6228749a992bc2c818479f5cb0ed8706c2c" [label="sha256:fae19688889cdd22cb51b81cdc5ee6228749a992bc2c818479f5cb0ed8706c2c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label=""];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" -> "sha256:fec760d160f3081dbe146a78a0d1f676db053b58091ded46162ab3b1006f8d55" [label=""];
  "sha256:92d668e31a043a80c25163e92614119119b59e70e2fdf1e0dff89c7d6e0c2eaf" -> "sha256:fec760d160f3081dbe146a78a0d1f676db053b58091ded46162ab3b1006f8d55" [label=""];
  "sha256:fec760d160f3081dbe146a78a0d1f676db053b58091ded46162ab3b1006f8d55" -> "sha256:fae19688889cdd22cb51b81cdc5ee6228749a992bc2c818479f5cb0ed8706c2c" [label=""];
}

