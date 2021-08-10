[app/sources/236248792.Dockerfile]
digraph {
  "sha256:a7fcc76d0db1af74d0bc2a1fce389c72d4692d909784173ffd5af3229793c3fc" [label="docker-image://docker.io/library/nginx:1.10" shape="ellipse"];
  "sha256:ec7ca45bd0c6068d6744a48a411b2341a7abf25a03483ef7f6ad92829f053d7d" [label="local://context" shape="ellipse"];
  "sha256:c004e76722d9e9bc9d1118c0e57bf6ffe9082b6583fd7e26490a1210138a83dd" [label="copy{src=/site, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:c007ae3b5367e7e08ef45125f4c27458a6459ae9ff7f92285f5ee81a679a43fb" [label="sha256:c007ae3b5367e7e08ef45125f4c27458a6459ae9ff7f92285f5ee81a679a43fb" shape="plaintext"];
  "sha256:a7fcc76d0db1af74d0bc2a1fce389c72d4692d909784173ffd5af3229793c3fc" -> "sha256:c004e76722d9e9bc9d1118c0e57bf6ffe9082b6583fd7e26490a1210138a83dd" [label=""];
  "sha256:ec7ca45bd0c6068d6744a48a411b2341a7abf25a03483ef7f6ad92829f053d7d" -> "sha256:c004e76722d9e9bc9d1118c0e57bf6ffe9082b6583fd7e26490a1210138a83dd" [label=""];
  "sha256:c004e76722d9e9bc9d1118c0e57bf6ffe9082b6583fd7e26490a1210138a83dd" -> "sha256:c007ae3b5367e7e08ef45125f4c27458a6459ae9ff7f92285f5ee81a679a43fb" [label=""];
}

