[app/sources/252798180.Dockerfile]
digraph {
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" [label="docker-image://docker.io/library/node:boron-alpine" shape="ellipse"];
  "sha256:cda1b547d64782630195cc0a67cc3b05df2e2916ded3148c52c18c6d8ffac108" [label="/bin/sh -c yarn global add pm2 && yarn cache clean" shape="box"];
  "sha256:b0eb198e49b1e133f28bfc788dcf3bac8c729b1dbd6ab0f31f810e0181edd222" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:9323b5f300616f7ed85da07b7c29171721e0005268acc271b93b71aed93fccbe" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ba2822957fbe61cbcd184e6c78933dd633fcef4c4a3b43ce6933c75ed5404572" [label="local://context" shape="ellipse"];
  "sha256:3abf49b25ed1be1127ef8971cb699e25043a0d2f4f5ed7534f239ba3e81fc097" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:91a035ca4665cde1de50999e61041b1819febdd7a31c4659d214d3ad80ab24a3" [label="/bin/sh -c yarn install && yarn cache clean" shape="box"];
  "sha256:ffa93bb8bef590fe8dfc0df45cecd5c5e3c258046479fd00f4659d4a68b36443" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:00a63fdc77d19e0de4b6bf69405aaca9ac87da1487e3685ec833ea75f32d70f4" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:5268c32f54ba2cfa617ee6105c21be49c668db7f79e23987707abf6f689fc19e" [label="sha256:5268c32f54ba2cfa617ee6105c21be49c668db7f79e23987707abf6f689fc19e" shape="plaintext"];
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" -> "sha256:cda1b547d64782630195cc0a67cc3b05df2e2916ded3148c52c18c6d8ffac108" [label=""];
  "sha256:cda1b547d64782630195cc0a67cc3b05df2e2916ded3148c52c18c6d8ffac108" -> "sha256:b0eb198e49b1e133f28bfc788dcf3bac8c729b1dbd6ab0f31f810e0181edd222" [label=""];
  "sha256:b0eb198e49b1e133f28bfc788dcf3bac8c729b1dbd6ab0f31f810e0181edd222" -> "sha256:9323b5f300616f7ed85da07b7c29171721e0005268acc271b93b71aed93fccbe" [label=""];
  "sha256:9323b5f300616f7ed85da07b7c29171721e0005268acc271b93b71aed93fccbe" -> "sha256:3abf49b25ed1be1127ef8971cb699e25043a0d2f4f5ed7534f239ba3e81fc097" [label=""];
  "sha256:ba2822957fbe61cbcd184e6c78933dd633fcef4c4a3b43ce6933c75ed5404572" -> "sha256:3abf49b25ed1be1127ef8971cb699e25043a0d2f4f5ed7534f239ba3e81fc097" [label=""];
  "sha256:3abf49b25ed1be1127ef8971cb699e25043a0d2f4f5ed7534f239ba3e81fc097" -> "sha256:91a035ca4665cde1de50999e61041b1819febdd7a31c4659d214d3ad80ab24a3" [label=""];
  "sha256:91a035ca4665cde1de50999e61041b1819febdd7a31c4659d214d3ad80ab24a3" -> "sha256:ffa93bb8bef590fe8dfc0df45cecd5c5e3c258046479fd00f4659d4a68b36443" [label=""];
  "sha256:ba2822957fbe61cbcd184e6c78933dd633fcef4c4a3b43ce6933c75ed5404572" -> "sha256:ffa93bb8bef590fe8dfc0df45cecd5c5e3c258046479fd00f4659d4a68b36443" [label=""];
  "sha256:ffa93bb8bef590fe8dfc0df45cecd5c5e3c258046479fd00f4659d4a68b36443" -> "sha256:00a63fdc77d19e0de4b6bf69405aaca9ac87da1487e3685ec833ea75f32d70f4" [label=""];
  "sha256:00a63fdc77d19e0de4b6bf69405aaca9ac87da1487e3685ec833ea75f32d70f4" -> "sha256:5268c32f54ba2cfa617ee6105c21be49c668db7f79e23987707abf6f689fc19e" [label=""];
}

