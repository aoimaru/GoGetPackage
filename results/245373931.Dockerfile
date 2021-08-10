[app/sources/245373931.Dockerfile]
digraph {
  "sha256:c4024d41f680feb421f0932afdc230f09f1b4b84531d9224e2ab1962ed1fb6a4" [label="local://context" shape="ellipse"];
  "sha256:4b7ac32604bb4e3a393378afdce4b84debdc2665d4e0db8f52dc641c3b533f01" [label="copy{src=/portforwardtester, dest=/portforwardtester}" shape="note"];
  "sha256:f5fdc5429ea98ae25e02e54815eb3d3c361eebee3ec5541c62c78fd48c91fbd8" [label="copy{src=/portforwardtester.go, dest=/portforwardtester.go}" shape="note"];
  "sha256:86abe4aa0352bffedbcc416aee7b9c52cb510e018bcbffa5ab6657e2ea5d80dc" [label="sha256:86abe4aa0352bffedbcc416aee7b9c52cb510e018bcbffa5ab6657e2ea5d80dc" shape="plaintext"];
  "sha256:c4024d41f680feb421f0932afdc230f09f1b4b84531d9224e2ab1962ed1fb6a4" -> "sha256:4b7ac32604bb4e3a393378afdce4b84debdc2665d4e0db8f52dc641c3b533f01" [label=""];
  "sha256:4b7ac32604bb4e3a393378afdce4b84debdc2665d4e0db8f52dc641c3b533f01" -> "sha256:f5fdc5429ea98ae25e02e54815eb3d3c361eebee3ec5541c62c78fd48c91fbd8" [label=""];
  "sha256:c4024d41f680feb421f0932afdc230f09f1b4b84531d9224e2ab1962ed1fb6a4" -> "sha256:f5fdc5429ea98ae25e02e54815eb3d3c361eebee3ec5541c62c78fd48c91fbd8" [label=""];
  "sha256:f5fdc5429ea98ae25e02e54815eb3d3c361eebee3ec5541c62c78fd48c91fbd8" -> "sha256:86abe4aa0352bffedbcc416aee7b9c52cb510e018bcbffa5ab6657e2ea5d80dc" [label=""];
}

