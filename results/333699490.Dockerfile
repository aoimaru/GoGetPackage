[app/sources/333699490.Dockerfile]
digraph {
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" [label="docker-image://docker.io/library/postgres:latest" shape="ellipse"];
  "sha256:c2f134fb48152b973059c71fcdf986c71dd6aacdab4ae0af5238f0a8ca9714bb" [label="local://context" shape="ellipse"];
  "sha256:ec9fbc825d456d7d3b5021f108dcced6a9c2a70f61ba0a4ed38bae4304ed6933" [label="copy{src=/create.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:f5bd8783ced5da53d73b8c2937a2e90588337328af475130958a5e7e3fac5203" [label="sha256:f5bd8783ced5da53d73b8c2937a2e90588337328af475130958a5e7e3fac5203" shape="plaintext"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" -> "sha256:ec9fbc825d456d7d3b5021f108dcced6a9c2a70f61ba0a4ed38bae4304ed6933" [label=""];
  "sha256:c2f134fb48152b973059c71fcdf986c71dd6aacdab4ae0af5238f0a8ca9714bb" -> "sha256:ec9fbc825d456d7d3b5021f108dcced6a9c2a70f61ba0a4ed38bae4304ed6933" [label=""];
  "sha256:ec9fbc825d456d7d3b5021f108dcced6a9c2a70f61ba0a4ed38bae4304ed6933" -> "sha256:f5bd8783ced5da53d73b8c2937a2e90588337328af475130958a5e7e3fac5203" [label=""];
}

