[app/sources/206212827.Dockerfile]
digraph {
  "sha256:0fad9581280beb779cd1dd9995c622a6bf90c10afd48c66e842c37c078cea9be" [label="local://context" shape="ellipse"];
  "sha256:3bf74d340118f525411d26c0cfa3faa4b99e94b651cf4b8961d9d1d08dbff2f8" [label="docker-image://docker.io/library/node:5.6.0" shape="ellipse"];
  "sha256:964e7ed5b7b4ae767e7f200a64e47b4e64887d5326fd48582a6dc8d3e83d3750" [label="/bin/sh -c mkdir -p /opt/app-review-monitor/src" shape="box"];
  "sha256:4e7d6a01473d7f0b1714a5bbae54275ed6d4b13a1d07c6dbf32127a8a4679ae3" [label="mkdir{path=/opt/app-review-monitor}" shape="note"];
  "sha256:ea5aa5428b64a8aa0a0459041bb9be2b824f5883fc5d386239721416a8fc265d" [label="copy{src=/.babelrc, dest=/opt/app-review-monitor/}" shape="note"];
  "sha256:458413a66a924f9dd99673a3e5beff606c67b077a51c79e81bc0a4aa5d8aaa7c" [label="copy{src=/package.json, dest=/opt/app-review-monitor/package.json}" shape="note"];
  "sha256:08f3ba44ac0e0ff062540a726c4fffd8e71e2ef84ba4e89c122067c07d8ce00a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b782b636836a046aec48212ab92203f0d0cab00409068fbf54f2bb3a0e39086f" [label="copy{src=/src, dest=/opt/app-review-monitor/src/}" shape="note"];
  "sha256:a98ac1caf4e359bff3508ec0af1c167d552c832ab79aa4df89e9e4f73a0a68a5" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:c9b0550813716788a3dce8d91d42c456d545f79f5cc988228e52d4a4cbe91dbf" [label="sha256:c9b0550813716788a3dce8d91d42c456d545f79f5cc988228e52d4a4cbe91dbf" shape="plaintext"];
  "sha256:3bf74d340118f525411d26c0cfa3faa4b99e94b651cf4b8961d9d1d08dbff2f8" -> "sha256:964e7ed5b7b4ae767e7f200a64e47b4e64887d5326fd48582a6dc8d3e83d3750" [label=""];
  "sha256:964e7ed5b7b4ae767e7f200a64e47b4e64887d5326fd48582a6dc8d3e83d3750" -> "sha256:4e7d6a01473d7f0b1714a5bbae54275ed6d4b13a1d07c6dbf32127a8a4679ae3" [label=""];
  "sha256:4e7d6a01473d7f0b1714a5bbae54275ed6d4b13a1d07c6dbf32127a8a4679ae3" -> "sha256:ea5aa5428b64a8aa0a0459041bb9be2b824f5883fc5d386239721416a8fc265d" [label=""];
  "sha256:0fad9581280beb779cd1dd9995c622a6bf90c10afd48c66e842c37c078cea9be" -> "sha256:ea5aa5428b64a8aa0a0459041bb9be2b824f5883fc5d386239721416a8fc265d" [label=""];
  "sha256:ea5aa5428b64a8aa0a0459041bb9be2b824f5883fc5d386239721416a8fc265d" -> "sha256:458413a66a924f9dd99673a3e5beff606c67b077a51c79e81bc0a4aa5d8aaa7c" [label=""];
  "sha256:0fad9581280beb779cd1dd9995c622a6bf90c10afd48c66e842c37c078cea9be" -> "sha256:458413a66a924f9dd99673a3e5beff606c67b077a51c79e81bc0a4aa5d8aaa7c" [label=""];
  "sha256:458413a66a924f9dd99673a3e5beff606c67b077a51c79e81bc0a4aa5d8aaa7c" -> "sha256:08f3ba44ac0e0ff062540a726c4fffd8e71e2ef84ba4e89c122067c07d8ce00a" [label=""];
  "sha256:08f3ba44ac0e0ff062540a726c4fffd8e71e2ef84ba4e89c122067c07d8ce00a" -> "sha256:b782b636836a046aec48212ab92203f0d0cab00409068fbf54f2bb3a0e39086f" [label=""];
  "sha256:0fad9581280beb779cd1dd9995c622a6bf90c10afd48c66e842c37c078cea9be" -> "sha256:b782b636836a046aec48212ab92203f0d0cab00409068fbf54f2bb3a0e39086f" [label=""];
  "sha256:b782b636836a046aec48212ab92203f0d0cab00409068fbf54f2bb3a0e39086f" -> "sha256:a98ac1caf4e359bff3508ec0af1c167d552c832ab79aa4df89e9e4f73a0a68a5" [label=""];
  "sha256:a98ac1caf4e359bff3508ec0af1c167d552c832ab79aa4df89e9e4f73a0a68a5" -> "sha256:c9b0550813716788a3dce8d91d42c456d545f79f5cc988228e52d4a4cbe91dbf" [label=""];
}

