[app/sources/188193423.Dockerfile]
digraph {
  "sha256:5b861a7cfc3bfcefd2925fcf25fa67ac42012c88413d96aa535bb9d8c22baf2c" [label="local://context" shape="ellipse"];
  "sha256:b14c373733249201ca9096c0ee2a1376dd611b64bb0f5f6861bcdf7b3c9793af" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:449166b2f3aa033f932f5a233b50fd3aa1c6136f1ad6a50838d55d5d70cb7de0" [label="sha256:449166b2f3aa033f932f5a233b50fd3aa1c6136f1ad6a50838d55d5d70cb7de0" shape="plaintext"];
  "sha256:5b861a7cfc3bfcefd2925fcf25fa67ac42012c88413d96aa535bb9d8c22baf2c" -> "sha256:b14c373733249201ca9096c0ee2a1376dd611b64bb0f5f6861bcdf7b3c9793af" [label=""];
  "sha256:b14c373733249201ca9096c0ee2a1376dd611b64bb0f5f6861bcdf7b3c9793af" -> "sha256:449166b2f3aa033f932f5a233b50fd3aa1c6136f1ad6a50838d55d5d70cb7de0" [label=""];
}

