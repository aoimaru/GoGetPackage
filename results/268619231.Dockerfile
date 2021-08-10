[app/sources/268619231.Dockerfile]
digraph {
  "sha256:8f5c25e9a354a7b4d5d3d3007aa4089ffd7c7aa8056f222515c6facec0c45df2" [label="docker-image://docker.io/testbed/vim:latest" shape="ellipse"];
  "sha256:6cb07f36a25f0b7097499785ce7af2d593bda466f78e7975cdafa250abd7ba55" [label="/bin/sh -c install_vim -tag neovim:v0.2.0 -build" shape="box"];
  "sha256:33fd94ce940c3564bd4c4fe92960005f38dd1026c0daab59afba804e85465a06" [label="/bin/sh -c apk --no-cache add bash python3 git curl && \tpip3 install --upgrade pip" shape="box"];
  "sha256:47e6c653c9309fc00fbd5e0ad122106a10cb3496fab87af33ec432cdbbeaf772" [label="local://context" shape="ellipse"];
  "sha256:ed67c84ed6fe5f8daa599a3d58c805d1dbf44364f0c84935410934fd0cd98c48" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3b0a805cfd418bd57929219b92558921b851796dd271755a734279e68956979a" [label="/bin/sh -c git clone https://github.com/junegunn/vader.vim.git vader" shape="box"];
  "sha256:74608eef5e39d091a3fd888da82a3405e41942bc669170f1926c399a703863b5" [label="mkdir{path=/testplugin}" shape="note"];
  "sha256:669ece8c0d182d13318e289af7246edec2a84b4beef0d80c43eb0828c3d34f74" [label="sha256:669ece8c0d182d13318e289af7246edec2a84b4beef0d80c43eb0828c3d34f74" shape="plaintext"];
  "sha256:8f5c25e9a354a7b4d5d3d3007aa4089ffd7c7aa8056f222515c6facec0c45df2" -> "sha256:6cb07f36a25f0b7097499785ce7af2d593bda466f78e7975cdafa250abd7ba55" [label=""];
  "sha256:6cb07f36a25f0b7097499785ce7af2d593bda466f78e7975cdafa250abd7ba55" -> "sha256:33fd94ce940c3564bd4c4fe92960005f38dd1026c0daab59afba804e85465a06" [label=""];
  "sha256:33fd94ce940c3564bd4c4fe92960005f38dd1026c0daab59afba804e85465a06" -> "sha256:ed67c84ed6fe5f8daa599a3d58c805d1dbf44364f0c84935410934fd0cd98c48" [label=""];
  "sha256:47e6c653c9309fc00fbd5e0ad122106a10cb3496fab87af33ec432cdbbeaf772" -> "sha256:ed67c84ed6fe5f8daa599a3d58c805d1dbf44364f0c84935410934fd0cd98c48" [label=""];
  "sha256:ed67c84ed6fe5f8daa599a3d58c805d1dbf44364f0c84935410934fd0cd98c48" -> "sha256:3b0a805cfd418bd57929219b92558921b851796dd271755a734279e68956979a" [label=""];
  "sha256:3b0a805cfd418bd57929219b92558921b851796dd271755a734279e68956979a" -> "sha256:74608eef5e39d091a3fd888da82a3405e41942bc669170f1926c399a703863b5" [label=""];
  "sha256:74608eef5e39d091a3fd888da82a3405e41942bc669170f1926c399a703863b5" -> "sha256:669ece8c0d182d13318e289af7246edec2a84b4beef0d80c43eb0828c3d34f74" [label=""];
}

