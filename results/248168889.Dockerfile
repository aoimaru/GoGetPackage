[app/sources/248168889.Dockerfile]
digraph {
  "sha256:41fc2189b0d5e34c9396a75eee9d3077c312d6ca42a2641a8ebc9bacc5eafd6e" [label="local://context" shape="ellipse"];
  "sha256:cf9085d30e4615f8286cc9e9841bbae473a04b00e9382ef2954b9805e59959c0" [label="copy{src=/hello, dest=/}" shape="note"];
  "sha256:b4bac93b2e73db8a5e285da288c5d1b828f0eb1899ef9db84b0047464ee27fa7" [label="sha256:b4bac93b2e73db8a5e285da288c5d1b828f0eb1899ef9db84b0047464ee27fa7" shape="plaintext"];
  "sha256:41fc2189b0d5e34c9396a75eee9d3077c312d6ca42a2641a8ebc9bacc5eafd6e" -> "sha256:cf9085d30e4615f8286cc9e9841bbae473a04b00e9382ef2954b9805e59959c0" [label=""];
  "sha256:cf9085d30e4615f8286cc9e9841bbae473a04b00e9382ef2954b9805e59959c0" -> "sha256:b4bac93b2e73db8a5e285da288c5d1b828f0eb1899ef9db84b0047464ee27fa7" [label=""];
}

