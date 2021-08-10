[app/sources/252781747.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:df13c4d1fc8cee2bc4bd236d81af5d1cd25cd0d4c3b6d379818019f89008e442" [label="local://context" shape="ellipse"];
  "sha256:7edd5771037709c0fef73855845931cbc6cc9ed022ff062b1a4e1df98d5e5239" [label="copy{src=/exploit.sh, dest=/exploit.sh}" shape="note"];
  "sha256:5012a1d1325cadf1b90c85e4c30cce01da37d73a865f6ff65b6292912d500bbf" [label="sha256:5012a1d1325cadf1b90c85e4c30cce01da37d73a865f6ff65b6292912d500bbf" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7edd5771037709c0fef73855845931cbc6cc9ed022ff062b1a4e1df98d5e5239" [label=""];
  "sha256:df13c4d1fc8cee2bc4bd236d81af5d1cd25cd0d4c3b6d379818019f89008e442" -> "sha256:7edd5771037709c0fef73855845931cbc6cc9ed022ff062b1a4e1df98d5e5239" [label=""];
  "sha256:7edd5771037709c0fef73855845931cbc6cc9ed022ff062b1a4e1df98d5e5239" -> "sha256:5012a1d1325cadf1b90c85e4c30cce01da37d73a865f6ff65b6292912d500bbf" [label=""];
}

