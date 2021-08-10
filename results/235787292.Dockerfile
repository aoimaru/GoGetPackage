[app/sources/235787292.Dockerfile]
digraph {
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" [label="docker-image://docker.io/library/node:8.9-alpine" shape="ellipse"];
  "sha256:df244f86ce1644d92d519d17d4150ff0221fc42f3bbe70a9127310d0f6f0cb20" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:168bbf0d9370397e91de9012d6a74f93f6655409f34a8cbe71ead9133680eb61" [label="local://context" shape="ellipse"];
  "sha256:e0e0fde61adba2ead3b3f3c02468e107a25312f9ec035b7c95f7b0ebe5bc878f" [label="copy{src=/dist, dest=/usr/src/app}" shape="note"];
  "sha256:dd4f21c4d3e2cedbab2763985baa10dcc80065eb5e343e48dc73b9fa2e12e1b0" [label="/bin/sh -c npm i -g http-server" shape="box"];
  "sha256:4e0a4a5067f791f1e48ddba157afccdfe6069e9829fd292fad786c34c2576de1" [label="sha256:4e0a4a5067f791f1e48ddba157afccdfe6069e9829fd292fad786c34c2576de1" shape="plaintext"];
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" -> "sha256:df244f86ce1644d92d519d17d4150ff0221fc42f3bbe70a9127310d0f6f0cb20" [label=""];
  "sha256:df244f86ce1644d92d519d17d4150ff0221fc42f3bbe70a9127310d0f6f0cb20" -> "sha256:e0e0fde61adba2ead3b3f3c02468e107a25312f9ec035b7c95f7b0ebe5bc878f" [label=""];
  "sha256:168bbf0d9370397e91de9012d6a74f93f6655409f34a8cbe71ead9133680eb61" -> "sha256:e0e0fde61adba2ead3b3f3c02468e107a25312f9ec035b7c95f7b0ebe5bc878f" [label=""];
  "sha256:e0e0fde61adba2ead3b3f3c02468e107a25312f9ec035b7c95f7b0ebe5bc878f" -> "sha256:dd4f21c4d3e2cedbab2763985baa10dcc80065eb5e343e48dc73b9fa2e12e1b0" [label=""];
  "sha256:dd4f21c4d3e2cedbab2763985baa10dcc80065eb5e343e48dc73b9fa2e12e1b0" -> "sha256:4e0a4a5067f791f1e48ddba157afccdfe6069e9829fd292fad786c34c2576de1" [label=""];
}

