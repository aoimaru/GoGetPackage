[app/sources/479053842.Dockerfile]
digraph {
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" [label="docker-image://docker.io/library/node:8.9" shape="ellipse"];
  "sha256:01e907272691cb294ca604c80d58a962eded16361627eebab2dc034797ca73f2" [label="mkdir{path=/app}" shape="note"];
  "sha256:2735b00ea4c3c1a6982b5f1efb3bbf84ab22d7ec3863a004633f62c97d34c012" [label="local://context" shape="ellipse"];
  "sha256:499f162da10fed8d12bf8050dd8a3ff02e38681f11eac19c30db00e9b0056509" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:18a219abcce28746299da0218d241e0669938543392798febb49b57b86dc57a7" [label="/bin/sh -c npm install -g npm" shape="box"];
  "sha256:5d2659a6767f683d8db0df98a773cf2e75e2a51fdd304ed83fdf45f59b32aeb6" [label="/bin/sh -c npm install -g yarn" shape="box"];
  "sha256:96e812c006796b2ceb8fdd1762fa6bc30eff80ae57ee014cf11bdb6d38f09b85" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:7126823ebaaf955ebde401ec682334da14678085cbd212df25c29482f79b4f3c" [label="sha256:7126823ebaaf955ebde401ec682334da14678085cbd212df25c29482f79b4f3c" shape="plaintext"];
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" -> "sha256:01e907272691cb294ca604c80d58a962eded16361627eebab2dc034797ca73f2" [label=""];
  "sha256:01e907272691cb294ca604c80d58a962eded16361627eebab2dc034797ca73f2" -> "sha256:499f162da10fed8d12bf8050dd8a3ff02e38681f11eac19c30db00e9b0056509" [label=""];
  "sha256:2735b00ea4c3c1a6982b5f1efb3bbf84ab22d7ec3863a004633f62c97d34c012" -> "sha256:499f162da10fed8d12bf8050dd8a3ff02e38681f11eac19c30db00e9b0056509" [label=""];
  "sha256:499f162da10fed8d12bf8050dd8a3ff02e38681f11eac19c30db00e9b0056509" -> "sha256:18a219abcce28746299da0218d241e0669938543392798febb49b57b86dc57a7" [label=""];
  "sha256:18a219abcce28746299da0218d241e0669938543392798febb49b57b86dc57a7" -> "sha256:5d2659a6767f683d8db0df98a773cf2e75e2a51fdd304ed83fdf45f59b32aeb6" [label=""];
  "sha256:5d2659a6767f683d8db0df98a773cf2e75e2a51fdd304ed83fdf45f59b32aeb6" -> "sha256:96e812c006796b2ceb8fdd1762fa6bc30eff80ae57ee014cf11bdb6d38f09b85" [label=""];
  "sha256:96e812c006796b2ceb8fdd1762fa6bc30eff80ae57ee014cf11bdb6d38f09b85" -> "sha256:7126823ebaaf955ebde401ec682334da14678085cbd212df25c29482f79b4f3c" [label=""];
}

