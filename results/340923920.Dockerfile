[app/sources/340923920.Dockerfile]
digraph {
  "sha256:49f3b7ee74aed4517db8124b696dc983dc909a3e905931523a6fe1e67578bd87" [label="docker-image://docker.io/library/golang:1.12.4-alpine" shape="ellipse"];
  "sha256:fadc3f23f7d60f9108870cbbfde19818306bb55204ab1aa92be56b1fe3d8a2c0" [label="/bin/sh -c apk add --no-cache git build-base" shape="box"];
  "sha256:b4f7c8edf2e96c1b96cc2906755f18acfa88c4ec69edb3a703fffeb4a5f212bc" [label="mkdir{path=/go/src/github.com/ory/hydra}" shape="note"];
  "sha256:0f8b75704bb5f70415cf4983f382d10266c8d8ff9baa6523578b531e04b1b78c" [label="local://context" shape="ellipse"];
  "sha256:536a271620b44c574347750a0453e88842c20d044ce704370c494cfc2cb93559" [label="copy{src=/, dest=/go/src/github.com/ory/hydra/}" shape="note"];
  "sha256:a37c4f8fd8a5618066b8f24ad7014f09fa61bd79366ecb521188b88a0057cfb7" [label="/bin/sh -c go install ." shape="box"];
  "sha256:6ce4b2a43121ea5eb43a0c4af896a1f0ac1b0989ea9c2d20aab4ff8405f1baee" [label="/bin/sh -c go build -buildmode=plugin -o /memtest.so ./test/e2e/plugin/memtest.go" shape="box"];
  "sha256:591653ad930b40c6ceb828fb867d211d10b12788561f99f95a6a82c5fa119178" [label="sha256:591653ad930b40c6ceb828fb867d211d10b12788561f99f95a6a82c5fa119178" shape="plaintext"];
  "sha256:49f3b7ee74aed4517db8124b696dc983dc909a3e905931523a6fe1e67578bd87" -> "sha256:fadc3f23f7d60f9108870cbbfde19818306bb55204ab1aa92be56b1fe3d8a2c0" [label=""];
  "sha256:fadc3f23f7d60f9108870cbbfde19818306bb55204ab1aa92be56b1fe3d8a2c0" -> "sha256:b4f7c8edf2e96c1b96cc2906755f18acfa88c4ec69edb3a703fffeb4a5f212bc" [label=""];
  "sha256:b4f7c8edf2e96c1b96cc2906755f18acfa88c4ec69edb3a703fffeb4a5f212bc" -> "sha256:536a271620b44c574347750a0453e88842c20d044ce704370c494cfc2cb93559" [label=""];
  "sha256:0f8b75704bb5f70415cf4983f382d10266c8d8ff9baa6523578b531e04b1b78c" -> "sha256:536a271620b44c574347750a0453e88842c20d044ce704370c494cfc2cb93559" [label=""];
  "sha256:536a271620b44c574347750a0453e88842c20d044ce704370c494cfc2cb93559" -> "sha256:a37c4f8fd8a5618066b8f24ad7014f09fa61bd79366ecb521188b88a0057cfb7" [label=""];
  "sha256:a37c4f8fd8a5618066b8f24ad7014f09fa61bd79366ecb521188b88a0057cfb7" -> "sha256:6ce4b2a43121ea5eb43a0c4af896a1f0ac1b0989ea9c2d20aab4ff8405f1baee" [label=""];
  "sha256:6ce4b2a43121ea5eb43a0c4af896a1f0ac1b0989ea9c2d20aab4ff8405f1baee" -> "sha256:591653ad930b40c6ceb828fb867d211d10b12788561f99f95a6a82c5fa119178" [label=""];
}

