[app/sources/252766703.Dockerfile]
digraph {
  "sha256:6772f77f560e174ec08544b0dca93bdc4bb0ba84097384d68f5a830d5eac4eb8" [label="docker-image://docker.io/fedora/python:latest" shape="ellipse"];
  "sha256:0a17703967c78092eb39a77ed79cbe9caa041ba6d2b8a523d7c9e276c7b0d1db" [label="/bin/sh -c dnf update -y && dnf install -y emacs-nox nmap nmap-ncat net-tools" shape="box"];
  "sha256:51561a21a1bb599e8e3433690f448c936a54e7b733f018948cfe41c7894f690f" [label="/bin/sh -c mkdir -p /dld/logs /dld-wd" shape="box"];
  "sha256:ca025f5b187b6a77f37d0dd6428a27d607c7964baa958da7058451bf8d977a90" [label="mkdir{path=/dld-wd}" shape="note"];
  "sha256:5e8cb862abdd6d54e5fe358d42cd4cb7e4209834f02f70142e8b1d53d4088a1f" [label="local://context" shape="ellipse"];
  "sha256:4c3b2bd90941cf857e0e74344081b09f56345805eee4504ad80b53b27635a4be" [label="copy{src=/requirements.txt, dest=/dld/},copy{src=/config.py, dest=/dld/},copy{src=/dld.py, dest=/dld/},copy{src=/tools.py, dest=/dld/}" shape="note"];
  "sha256:eadb4fdb2f44a20271fb17f507e8f285cc59f620bba93bd83c2a00c3498c08b1" [label="copy{src=/baselibs, dest=/dld/baselibs/}" shape="note"];
  "sha256:0da994b73067c96bd338aa09e65333cd1fb8f2baffb28055146393ede5bba47b" [label="copy{src=/data, dest=/dld/data/}" shape="note"];
  "sha256:9585fc4cd6c283787f7a2adf1efe462eed8629562cab5cab37ff10a417bf042d" [label="/bin/sh -c pip3 install --no-cache-dir -r /dld/requirements.txt" shape="box"];
  "sha256:8d24c482cc54902aa82c5d406856c59db74b7a1c54d9fcdb9e0d37677c72c894" [label="sha256:8d24c482cc54902aa82c5d406856c59db74b7a1c54d9fcdb9e0d37677c72c894" shape="plaintext"];
  "sha256:6772f77f560e174ec08544b0dca93bdc4bb0ba84097384d68f5a830d5eac4eb8" -> "sha256:0a17703967c78092eb39a77ed79cbe9caa041ba6d2b8a523d7c9e276c7b0d1db" [label=""];
  "sha256:0a17703967c78092eb39a77ed79cbe9caa041ba6d2b8a523d7c9e276c7b0d1db" -> "sha256:51561a21a1bb599e8e3433690f448c936a54e7b733f018948cfe41c7894f690f" [label=""];
  "sha256:51561a21a1bb599e8e3433690f448c936a54e7b733f018948cfe41c7894f690f" -> "sha256:ca025f5b187b6a77f37d0dd6428a27d607c7964baa958da7058451bf8d977a90" [label=""];
  "sha256:ca025f5b187b6a77f37d0dd6428a27d607c7964baa958da7058451bf8d977a90" -> "sha256:4c3b2bd90941cf857e0e74344081b09f56345805eee4504ad80b53b27635a4be" [label=""];
  "sha256:5e8cb862abdd6d54e5fe358d42cd4cb7e4209834f02f70142e8b1d53d4088a1f" -> "sha256:4c3b2bd90941cf857e0e74344081b09f56345805eee4504ad80b53b27635a4be" [label=""];
  "sha256:4c3b2bd90941cf857e0e74344081b09f56345805eee4504ad80b53b27635a4be" -> "sha256:eadb4fdb2f44a20271fb17f507e8f285cc59f620bba93bd83c2a00c3498c08b1" [label=""];
  "sha256:5e8cb862abdd6d54e5fe358d42cd4cb7e4209834f02f70142e8b1d53d4088a1f" -> "sha256:eadb4fdb2f44a20271fb17f507e8f285cc59f620bba93bd83c2a00c3498c08b1" [label=""];
  "sha256:eadb4fdb2f44a20271fb17f507e8f285cc59f620bba93bd83c2a00c3498c08b1" -> "sha256:0da994b73067c96bd338aa09e65333cd1fb8f2baffb28055146393ede5bba47b" [label=""];
  "sha256:5e8cb862abdd6d54e5fe358d42cd4cb7e4209834f02f70142e8b1d53d4088a1f" -> "sha256:0da994b73067c96bd338aa09e65333cd1fb8f2baffb28055146393ede5bba47b" [label=""];
  "sha256:0da994b73067c96bd338aa09e65333cd1fb8f2baffb28055146393ede5bba47b" -> "sha256:9585fc4cd6c283787f7a2adf1efe462eed8629562cab5cab37ff10a417bf042d" [label=""];
  "sha256:9585fc4cd6c283787f7a2adf1efe462eed8629562cab5cab37ff10a417bf042d" -> "sha256:8d24c482cc54902aa82c5d406856c59db74b7a1c54d9fcdb9e0d37677c72c894" [label=""];
}

