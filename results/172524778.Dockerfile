[app/sources/172524778.Dockerfile]
digraph {
  "sha256:e4d5e695150937c88d7b46e5a546cd2e66663cbf84c38ea69e23c8edcbeb67b7" [label="docker-image://docker.io/mhart/alpine-node:4.7.2" shape="ellipse"];
  "sha256:a5a00fd2835252cd503c05c6b130cb7fbf2e16a0686ff47c298499ad73cbb689" [label="local://context" shape="ellipse"];
  "sha256:978dd9d3ac45f33339ca0d6035678326b5d009f6d6609baf9d1d6acf35ba9ebe" [label="copy{src=/replicated/npm-auth-ws/start.sh, dest=/etc/npme/start.sh}" shape="note"];
  "sha256:3fee3a257f59326d41630b0bf2ca9512ec18032b510b1c1af29757d806cba4f5" [label="mkdir{path=/etc/npme}" shape="note"];
  "sha256:ab7ff7eb46cd5bf9ce15df44c52f66db66af932ca5e53799139a18c409a184fe" [label="/bin/sh -c echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc" shape="box"];
  "sha256:c6f858c5768ec2e5fbfb9fff3efda728590a852e9152cf8e2ab31654141cd0cf" [label="/bin/sh -c npm install @npm/npm-auth-ws@3.6.1" shape="box"];
  "sha256:ba50dc32e4bfcb94b34d13f52afbbc2140bce3489707fbc7f4510ae11f23171f" [label="/bin/sh -c npm install @npm/npmo-auth-token@1.2.2 -g" shape="box"];
  "sha256:c98214a710e54d5df2e86e90281d2a84f291ac3640e899671fde86e4a123dea8" [label="sha256:c98214a710e54d5df2e86e90281d2a84f291ac3640e899671fde86e4a123dea8" shape="plaintext"];
  "sha256:e4d5e695150937c88d7b46e5a546cd2e66663cbf84c38ea69e23c8edcbeb67b7" -> "sha256:978dd9d3ac45f33339ca0d6035678326b5d009f6d6609baf9d1d6acf35ba9ebe" [label=""];
  "sha256:a5a00fd2835252cd503c05c6b130cb7fbf2e16a0686ff47c298499ad73cbb689" -> "sha256:978dd9d3ac45f33339ca0d6035678326b5d009f6d6609baf9d1d6acf35ba9ebe" [label=""];
  "sha256:978dd9d3ac45f33339ca0d6035678326b5d009f6d6609baf9d1d6acf35ba9ebe" -> "sha256:3fee3a257f59326d41630b0bf2ca9512ec18032b510b1c1af29757d806cba4f5" [label=""];
  "sha256:3fee3a257f59326d41630b0bf2ca9512ec18032b510b1c1af29757d806cba4f5" -> "sha256:ab7ff7eb46cd5bf9ce15df44c52f66db66af932ca5e53799139a18c409a184fe" [label=""];
  "sha256:ab7ff7eb46cd5bf9ce15df44c52f66db66af932ca5e53799139a18c409a184fe" -> "sha256:c6f858c5768ec2e5fbfb9fff3efda728590a852e9152cf8e2ab31654141cd0cf" [label=""];
  "sha256:c6f858c5768ec2e5fbfb9fff3efda728590a852e9152cf8e2ab31654141cd0cf" -> "sha256:ba50dc32e4bfcb94b34d13f52afbbc2140bce3489707fbc7f4510ae11f23171f" [label=""];
  "sha256:ba50dc32e4bfcb94b34d13f52afbbc2140bce3489707fbc7f4510ae11f23171f" -> "sha256:c98214a710e54d5df2e86e90281d2a84f291ac3640e899671fde86e4a123dea8" [label=""];
}

