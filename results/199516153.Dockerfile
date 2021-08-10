[app/sources/199516153.Dockerfile]
digraph {
  "sha256:259553d1c3c764ce9698fccc633cfd1f0b0143309d525b2250ba41002fcc0762" [label="docker-image://docker.io/dmcgowan/token-server:simple" shape="ellipse"];
  "sha256:85e51b9b7fe4d7d391ad796cd8bf8eef4517dcaa6884059ceb1bed0ecbab5832" [label="local://context" shape="ellipse"];
  "sha256:fe96850d755452770e67bf32c5825801becb3d0914d793f267dfe748f009b331" [label="copy{src=/.htpasswd, dest=/.htpasswd}" shape="note"];
  "sha256:148053784d74d47e443bbd8e25d61870fc0f814f77b2736367004b6257e4f10b" [label="copy{src=/certs/auth.localregistry.cert, dest=/tls.cert}" shape="note"];
  "sha256:17193ecee2b4939e7408b7d8879c7056045caff9300dffbe8f83f2f9142a6923" [label="copy{src=/certs/auth.localregistry.key, dest=/tls.key}" shape="note"];
  "sha256:4d2b64c7ed5d31a9d5d9090978886e781ba013b5b4e920e2186f36bf5da08d16" [label="copy{src=/certs/signing.key, dest=/sign.key}" shape="note"];
  "sha256:bc51c4202e6469ed5fc97a5ab08a5cc454a36a6f6a8e41f6be6b87bae09d05eb" [label="sha256:bc51c4202e6469ed5fc97a5ab08a5cc454a36a6f6a8e41f6be6b87bae09d05eb" shape="plaintext"];
  "sha256:259553d1c3c764ce9698fccc633cfd1f0b0143309d525b2250ba41002fcc0762" -> "sha256:fe96850d755452770e67bf32c5825801becb3d0914d793f267dfe748f009b331" [label=""];
  "sha256:85e51b9b7fe4d7d391ad796cd8bf8eef4517dcaa6884059ceb1bed0ecbab5832" -> "sha256:fe96850d755452770e67bf32c5825801becb3d0914d793f267dfe748f009b331" [label=""];
  "sha256:fe96850d755452770e67bf32c5825801becb3d0914d793f267dfe748f009b331" -> "sha256:148053784d74d47e443bbd8e25d61870fc0f814f77b2736367004b6257e4f10b" [label=""];
  "sha256:85e51b9b7fe4d7d391ad796cd8bf8eef4517dcaa6884059ceb1bed0ecbab5832" -> "sha256:148053784d74d47e443bbd8e25d61870fc0f814f77b2736367004b6257e4f10b" [label=""];
  "sha256:148053784d74d47e443bbd8e25d61870fc0f814f77b2736367004b6257e4f10b" -> "sha256:17193ecee2b4939e7408b7d8879c7056045caff9300dffbe8f83f2f9142a6923" [label=""];
  "sha256:85e51b9b7fe4d7d391ad796cd8bf8eef4517dcaa6884059ceb1bed0ecbab5832" -> "sha256:17193ecee2b4939e7408b7d8879c7056045caff9300dffbe8f83f2f9142a6923" [label=""];
  "sha256:17193ecee2b4939e7408b7d8879c7056045caff9300dffbe8f83f2f9142a6923" -> "sha256:4d2b64c7ed5d31a9d5d9090978886e781ba013b5b4e920e2186f36bf5da08d16" [label=""];
  "sha256:85e51b9b7fe4d7d391ad796cd8bf8eef4517dcaa6884059ceb1bed0ecbab5832" -> "sha256:4d2b64c7ed5d31a9d5d9090978886e781ba013b5b4e920e2186f36bf5da08d16" [label=""];
  "sha256:4d2b64c7ed5d31a9d5d9090978886e781ba013b5b4e920e2186f36bf5da08d16" -> "sha256:bc51c4202e6469ed5fc97a5ab08a5cc454a36a6f6a8e41f6be6b87bae09d05eb" [label=""];
}

