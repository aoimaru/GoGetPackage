[app/sources/377171847.Dockerfile]
digraph {
  "sha256:9647773b14fd4868d4113a0e50b1626e09631e8a2e62837d3db0135685fe62b5" [label="local://context" shape="ellipse"];
  "sha256:b01e0e63118494e82bf8f23260a248e1aa1288c3f6e14e493af4db01d58019db" [label="docker-image://docker.io/jockerxu/ubuntu-golang:latest" shape="ellipse"];
  "sha256:514803052a2d22db7e468b9521dc517fb59e14b3f2660eb3b22293522f7dcc1c" [label="/bin/sh -c go get github.com/polaris1119/gvt" shape="box"];
  "sha256:5cdfb1b417a09ddffde4b0a6f46b6042c16f9c1dcc556bcd358337b3c6a95085" [label="mkdir{path=/studygolang}" shape="note"];
  "sha256:55559cd66b1b83985c733facf19f5d32d28d191ca5dfe0158d610446a4031c8e" [label="copy{src=/, dest=/studygolang}" shape="note"];
  "sha256:8bac321e133425c34a083ceb05cee05d66c40204f4c3ab7f54f85d682eb2f3c0" [label="/bin/sh -c cd src/ && gvt restore" shape="box"];
  "sha256:407fc6c2c615ba41475c945e0b13f3204d0e8741de33f4b1ea0d55e50424fe6e" [label="/bin/sh -c mkdir -p /vendor/src/ && mv src/vendor/* /vendor/src/" shape="box"];
  "sha256:f8e1e49bc1b9f03b817e9182a47266ed074f5f5e4ebdb410357ee71dc48f61e1" [label="sha256:f8e1e49bc1b9f03b817e9182a47266ed074f5f5e4ebdb410357ee71dc48f61e1" shape="plaintext"];
  "sha256:b01e0e63118494e82bf8f23260a248e1aa1288c3f6e14e493af4db01d58019db" -> "sha256:514803052a2d22db7e468b9521dc517fb59e14b3f2660eb3b22293522f7dcc1c" [label=""];
  "sha256:514803052a2d22db7e468b9521dc517fb59e14b3f2660eb3b22293522f7dcc1c" -> "sha256:5cdfb1b417a09ddffde4b0a6f46b6042c16f9c1dcc556bcd358337b3c6a95085" [label=""];
  "sha256:5cdfb1b417a09ddffde4b0a6f46b6042c16f9c1dcc556bcd358337b3c6a95085" -> "sha256:55559cd66b1b83985c733facf19f5d32d28d191ca5dfe0158d610446a4031c8e" [label=""];
  "sha256:9647773b14fd4868d4113a0e50b1626e09631e8a2e62837d3db0135685fe62b5" -> "sha256:55559cd66b1b83985c733facf19f5d32d28d191ca5dfe0158d610446a4031c8e" [label=""];
  "sha256:55559cd66b1b83985c733facf19f5d32d28d191ca5dfe0158d610446a4031c8e" -> "sha256:8bac321e133425c34a083ceb05cee05d66c40204f4c3ab7f54f85d682eb2f3c0" [label=""];
  "sha256:8bac321e133425c34a083ceb05cee05d66c40204f4c3ab7f54f85d682eb2f3c0" -> "sha256:407fc6c2c615ba41475c945e0b13f3204d0e8741de33f4b1ea0d55e50424fe6e" [label=""];
  "sha256:407fc6c2c615ba41475c945e0b13f3204d0e8741de33f4b1ea0d55e50424fe6e" -> "sha256:f8e1e49bc1b9f03b817e9182a47266ed074f5f5e4ebdb410357ee71dc48f61e1" [label=""];
}

