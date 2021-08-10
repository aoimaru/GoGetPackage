[app/sources/291582801.Dockerfile]
digraph {
  "sha256:3d8c102b6ec8d2b4c5d1817c70ce893cd87c2462a0b1f6d9b0a98151efe69226" [label="docker-image://docker.io/robotframework/rfdocker:3.1.1" shape="ellipse"];
  "sha256:5d9f133870a1fbf685386e4fc94b6f3a92c9e1b69fe086d3b0ba28d6c0eb9165" [label="local://context" shape="ellipse"];
  "sha256:99fd962c3195e4e307fc119e3b612fe1a14b2964da2553a23ff69e11889eafaf" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:ac44cef39267002b2c75d4179ac14b5fbb54fcf519f10983536a6846b01b35bd" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:e4a5484e07f0d9ebbb26cc65347d6a8f155fcdf474422f693dacfc6f3be9d131" [label="copy{src=/src, dest=/src/}" shape="note"];
  "sha256:d543086fb43944e85ce5dd2e6fb5e90f8e8089bc0ec5545d18dbbc8461548e37" [label="sha256:d543086fb43944e85ce5dd2e6fb5e90f8e8089bc0ec5545d18dbbc8461548e37" shape="plaintext"];
  "sha256:3d8c102b6ec8d2b4c5d1817c70ce893cd87c2462a0b1f6d9b0a98151efe69226" -> "sha256:99fd962c3195e4e307fc119e3b612fe1a14b2964da2553a23ff69e11889eafaf" [label=""];
  "sha256:5d9f133870a1fbf685386e4fc94b6f3a92c9e1b69fe086d3b0ba28d6c0eb9165" -> "sha256:99fd962c3195e4e307fc119e3b612fe1a14b2964da2553a23ff69e11889eafaf" [label=""];
  "sha256:99fd962c3195e4e307fc119e3b612fe1a14b2964da2553a23ff69e11889eafaf" -> "sha256:ac44cef39267002b2c75d4179ac14b5fbb54fcf519f10983536a6846b01b35bd" [label=""];
  "sha256:ac44cef39267002b2c75d4179ac14b5fbb54fcf519f10983536a6846b01b35bd" -> "sha256:e4a5484e07f0d9ebbb26cc65347d6a8f155fcdf474422f693dacfc6f3be9d131" [label=""];
  "sha256:5d9f133870a1fbf685386e4fc94b6f3a92c9e1b69fe086d3b0ba28d6c0eb9165" -> "sha256:e4a5484e07f0d9ebbb26cc65347d6a8f155fcdf474422f693dacfc6f3be9d131" [label=""];
  "sha256:e4a5484e07f0d9ebbb26cc65347d6a8f155fcdf474422f693dacfc6f3be9d131" -> "sha256:d543086fb43944e85ce5dd2e6fb5e90f8e8089bc0ec5545d18dbbc8461548e37" [label=""];
}

