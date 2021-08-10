[app/sources/335320402.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:7519a91b40bd395de956e58bd14e6780b169d647720b3e6872b7266917d47d72" [label="local://context" shape="ellipse"];
  "sha256:99a97f8ce5f28c8a742b24b38ba78cc6a0ef1084688c7299c90a52ee3e37ad88" [label="copy{src=/, dest=/code/src/github.com/agtorre/go-solutions/section3/monitoring}" shape="note"];
  "sha256:8f292c7c14a5a197e919c1525fd1258fe59d6ce827ef6a801292008f6801df69" [label="mkdir{path=/code/src/github.com/agtorre/go-solutions/section3/monitoring}" shape="note"];
  "sha256:91a1284b72b7dc8100a92008bfb7e2850cde4dc46c9c0f8b614ceee48b895c15" [label="/bin/sh -c go build" shape="box"];
  "sha256:d13380239209e46e50eb6085524754dad5e1894d657a43753aa9dce3ba058c9a" [label="sha256:d13380239209e46e50eb6085524754dad5e1894d657a43753aa9dce3ba058c9a" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:99a97f8ce5f28c8a742b24b38ba78cc6a0ef1084688c7299c90a52ee3e37ad88" [label=""];
  "sha256:7519a91b40bd395de956e58bd14e6780b169d647720b3e6872b7266917d47d72" -> "sha256:99a97f8ce5f28c8a742b24b38ba78cc6a0ef1084688c7299c90a52ee3e37ad88" [label=""];
  "sha256:99a97f8ce5f28c8a742b24b38ba78cc6a0ef1084688c7299c90a52ee3e37ad88" -> "sha256:8f292c7c14a5a197e919c1525fd1258fe59d6ce827ef6a801292008f6801df69" [label=""];
  "sha256:8f292c7c14a5a197e919c1525fd1258fe59d6ce827ef6a801292008f6801df69" -> "sha256:91a1284b72b7dc8100a92008bfb7e2850cde4dc46c9c0f8b614ceee48b895c15" [label=""];
  "sha256:91a1284b72b7dc8100a92008bfb7e2850cde4dc46c9c0f8b614ceee48b895c15" -> "sha256:d13380239209e46e50eb6085524754dad5e1894d657a43753aa9dce3ba058c9a" [label=""];
}

