[app/sources/228571655.Dockerfile]
digraph {
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" [label="docker-image://docker.io/library/node:5" shape="ellipse"];
  "sha256:0fc9f119c10ce2f7f1365e00bbf3e20d5c8330fce60fd84a4c9b45e0aefdf4f3" [label="mkdir{path=/src}" shape="note"];
  "sha256:4e46a595ce27c0c0cb8ad13673ac51aac7490b11fe5c176f15e26c8507bbd183" [label="local://context" shape="ellipse"];
  "sha256:44de3c6ab87a3cd4ac4cac0febdf2d2202ef0414461b9b2bdf9b8f0fd2aa5d75" [label="copy{src=/src/package.json, dest=/src/package.json}" shape="note"];
  "sha256:2a37ec15ea541b2acb0d408f87006b71e7890d6c2a8c1e5097fa08d1fccfe58e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:699f6628360131fcc3b96065e064898886bd760435d041d137c9e25cf870f4e3" [label="copy{src=/src/*, dest=/src/}" shape="note"];
  "sha256:2ea129212762696396cd8b8a9086aa7865566ceda7b6a16b3df26186f1fb4607" [label="sha256:2ea129212762696396cd8b8a9086aa7865566ceda7b6a16b3df26186f1fb4607" shape="plaintext"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" -> "sha256:0fc9f119c10ce2f7f1365e00bbf3e20d5c8330fce60fd84a4c9b45e0aefdf4f3" [label=""];
  "sha256:0fc9f119c10ce2f7f1365e00bbf3e20d5c8330fce60fd84a4c9b45e0aefdf4f3" -> "sha256:44de3c6ab87a3cd4ac4cac0febdf2d2202ef0414461b9b2bdf9b8f0fd2aa5d75" [label=""];
  "sha256:4e46a595ce27c0c0cb8ad13673ac51aac7490b11fe5c176f15e26c8507bbd183" -> "sha256:44de3c6ab87a3cd4ac4cac0febdf2d2202ef0414461b9b2bdf9b8f0fd2aa5d75" [label=""];
  "sha256:44de3c6ab87a3cd4ac4cac0febdf2d2202ef0414461b9b2bdf9b8f0fd2aa5d75" -> "sha256:2a37ec15ea541b2acb0d408f87006b71e7890d6c2a8c1e5097fa08d1fccfe58e" [label=""];
  "sha256:2a37ec15ea541b2acb0d408f87006b71e7890d6c2a8c1e5097fa08d1fccfe58e" -> "sha256:699f6628360131fcc3b96065e064898886bd760435d041d137c9e25cf870f4e3" [label=""];
  "sha256:4e46a595ce27c0c0cb8ad13673ac51aac7490b11fe5c176f15e26c8507bbd183" -> "sha256:699f6628360131fcc3b96065e064898886bd760435d041d137c9e25cf870f4e3" [label=""];
  "sha256:699f6628360131fcc3b96065e064898886bd760435d041d137c9e25cf870f4e3" -> "sha256:2ea129212762696396cd8b8a9086aa7865566ceda7b6a16b3df26186f1fb4607" [label=""];
}

