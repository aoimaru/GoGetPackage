[app/sources/341902036.Dockerfile]
digraph {
  "sha256:54fd11389b4d199f3551d0d8898f4bcef20c1ec4bef0e4f45e383f0135efcf01" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:933950fd9521c4d427bf6ab164b374ec68835362431db14e523b487173510d16" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:56e20d1e9080a11efe74a9863406c4e4ec9b5dd450a13453412bb643befc3543" [label="sha256:56e20d1e9080a11efe74a9863406c4e4ec9b5dd450a13453412bb643befc3543" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:933950fd9521c4d427bf6ab164b374ec68835362431db14e523b487173510d16" [label=""];
  "sha256:54fd11389b4d199f3551d0d8898f4bcef20c1ec4bef0e4f45e383f0135efcf01" -> "sha256:933950fd9521c4d427bf6ab164b374ec68835362431db14e523b487173510d16" [label=""];
  "sha256:933950fd9521c4d427bf6ab164b374ec68835362431db14e523b487173510d16" -> "sha256:56e20d1e9080a11efe74a9863406c4e4ec9b5dd450a13453412bb643befc3543" [label=""];
}
