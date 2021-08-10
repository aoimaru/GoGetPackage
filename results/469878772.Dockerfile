[app/sources/469878772.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:e8339546f9703ddec298d04b88ec0326bc87f3724790319492e869f658dd5768" [label="/bin/sh -c mkdir /app && chown node:node /app" shape="box"];
  "sha256:1e663a4cce6abf31f71b41ad27ed2bf4e0ab308f5c38d6cb4921eaa14687df54" [label="local://context" shape="ellipse"];
  "sha256:1c1c456a20559ebf2a6950112c4c1c606837f59aaa2dfe14ec36614a239130ac" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:0122732351eed548ea44939aaa69139bfe36b2c5baf90461f93444447a6ad5c6" [label="mkdir{path=/app}" shape="note"];
  "sha256:54f8c5b497076bf88d7dacc4ba0c5a145216dff3ef7d4f26331d9faefb4da0c9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:64921c8d6e4d20b6f33a94831fa4c5e69d9aae6ed7c76f14678a42e16430a24a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a3270195a13f3c9ecf71f77ab419dae3a401b352ce25b61838128461acaa2143" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:ef2a3f4d1b98075d3642c1576e963a8775825a2241a727b766234aae71903fb5" [label="mkdir{path=/app}" shape="note"];
  "sha256:59df8fbf00ff3d5aeddf727f8669d0af432f092619ceec5ff34cba8f793d189a" [label="sha256:59df8fbf00ff3d5aeddf727f8669d0af432f092619ceec5ff34cba8f793d189a" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:e8339546f9703ddec298d04b88ec0326bc87f3724790319492e869f658dd5768" [label=""];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:1c1c456a20559ebf2a6950112c4c1c606837f59aaa2dfe14ec36614a239130ac" [label=""];
  "sha256:1e663a4cce6abf31f71b41ad27ed2bf4e0ab308f5c38d6cb4921eaa14687df54" -> "sha256:1c1c456a20559ebf2a6950112c4c1c606837f59aaa2dfe14ec36614a239130ac" [label=""];
  "sha256:1c1c456a20559ebf2a6950112c4c1c606837f59aaa2dfe14ec36614a239130ac" -> "sha256:0122732351eed548ea44939aaa69139bfe36b2c5baf90461f93444447a6ad5c6" [label=""];
  "sha256:0122732351eed548ea44939aaa69139bfe36b2c5baf90461f93444447a6ad5c6" -> "sha256:54f8c5b497076bf88d7dacc4ba0c5a145216dff3ef7d4f26331d9faefb4da0c9" [label=""];
  "sha256:54f8c5b497076bf88d7dacc4ba0c5a145216dff3ef7d4f26331d9faefb4da0c9" -> "sha256:64921c8d6e4d20b6f33a94831fa4c5e69d9aae6ed7c76f14678a42e16430a24a" [label=""];
  "sha256:1e663a4cce6abf31f71b41ad27ed2bf4e0ab308f5c38d6cb4921eaa14687df54" -> "sha256:64921c8d6e4d20b6f33a94831fa4c5e69d9aae6ed7c76f14678a42e16430a24a" [label=""];
  "sha256:e8339546f9703ddec298d04b88ec0326bc87f3724790319492e869f658dd5768" -> "sha256:a3270195a13f3c9ecf71f77ab419dae3a401b352ce25b61838128461acaa2143" [label=""];
  "sha256:64921c8d6e4d20b6f33a94831fa4c5e69d9aae6ed7c76f14678a42e16430a24a" -> "sha256:a3270195a13f3c9ecf71f77ab419dae3a401b352ce25b61838128461acaa2143" [label=""];
  "sha256:a3270195a13f3c9ecf71f77ab419dae3a401b352ce25b61838128461acaa2143" -> "sha256:ef2a3f4d1b98075d3642c1576e963a8775825a2241a727b766234aae71903fb5" [label=""];
  "sha256:ef2a3f4d1b98075d3642c1576e963a8775825a2241a727b766234aae71903fb5" -> "sha256:59df8fbf00ff3d5aeddf727f8669d0af432f092619ceec5ff34cba8f793d189a" [label=""];
}

