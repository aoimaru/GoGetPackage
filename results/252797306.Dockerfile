[app/sources/252797306.Dockerfile]
digraph {
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" [label="docker-image://docker.io/library/node:0.10-slim" shape="ellipse"];
  "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" [label="mkdir{path=/app}" shape="note"];
  "sha256:38f46989cc421315649f19db2c654003f743fdcea6df7689ba6fd0cfd232bb37" [label="local://context" shape="ellipse"];
  "sha256:cab7c7e149b86123b9f8b816970558ab11897435e2e708523e7e0965dd3abfd9" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:189abca97e983ef1d0cbe428b36429ffda482c636f0447c9b2795eabe0fa02fa" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f58bdedb0f63b5289b83a1d50ad052639e3dfc61c2c782c262767defa41aacda" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:de6d7247609444167fddd56ea99b767c9e88a1d3b480cafa6654295d6e965c0d" [label="sha256:de6d7247609444167fddd56ea99b767c9e88a1d3b480cafa6654295d6e965c0d" shape="plaintext"];
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" -> "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" [label=""];
  "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" -> "sha256:cab7c7e149b86123b9f8b816970558ab11897435e2e708523e7e0965dd3abfd9" [label=""];
  "sha256:38f46989cc421315649f19db2c654003f743fdcea6df7689ba6fd0cfd232bb37" -> "sha256:cab7c7e149b86123b9f8b816970558ab11897435e2e708523e7e0965dd3abfd9" [label=""];
  "sha256:cab7c7e149b86123b9f8b816970558ab11897435e2e708523e7e0965dd3abfd9" -> "sha256:189abca97e983ef1d0cbe428b36429ffda482c636f0447c9b2795eabe0fa02fa" [label=""];
  "sha256:189abca97e983ef1d0cbe428b36429ffda482c636f0447c9b2795eabe0fa02fa" -> "sha256:f58bdedb0f63b5289b83a1d50ad052639e3dfc61c2c782c262767defa41aacda" [label=""];
  "sha256:38f46989cc421315649f19db2c654003f743fdcea6df7689ba6fd0cfd232bb37" -> "sha256:f58bdedb0f63b5289b83a1d50ad052639e3dfc61c2c782c262767defa41aacda" [label=""];
  "sha256:f58bdedb0f63b5289b83a1d50ad052639e3dfc61c2c782c262767defa41aacda" -> "sha256:de6d7247609444167fddd56ea99b767c9e88a1d3b480cafa6654295d6e965c0d" [label=""];
}

