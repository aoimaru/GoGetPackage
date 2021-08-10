[app/sources/290873291.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:6ed2875186fb5c0213a3d1d97b1e7246bd842d3ac6df248ad2e282dca7788356" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y      python3-pip python3-tk texlive-latex-base latexmk git emacs vim locales" shape="box"];
  "sha256:c1806530b8f2671247aa4d0a7ea241fb333d3c50d6993983f275cb016213bcf8" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen" shape="box"];
  "sha256:3d152f1aa48c39d36a6c8641750eae308b83125a8c85edbfb78210d319fa35d2" [label="/bin/sh -c rm -f /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:20847b5a66393080b357b467cdcc1754df0377e900b4d323646a6275656235cb" [label="/bin/sh -c git clone https://github.com/quantumlib/Cirq" shape="box"];
  "sha256:a95b60dad9363642d3e0124686d6d88aa9fefd49a950e13682c10fa5c91b1881" [label="/bin/sh -c pip3 install -r Cirq/requirements.txt -r Cirq/cirq/contrib/contrib-requirements.txt -r Cirq/dev_tools/conf/pip-list-dev-tools.txt" shape="box"];
  "sha256:a24916278d74616310b2ac501bac1996495491967a66a5fa867e2cb0032a59bc" [label="mkdir{path=/Cirq}" shape="note"];
  "sha256:ac18c643fb7ace99e922547068692c6ed53b32fb824a9bb435b4245ce1a0aa60" [label="sha256:ac18c643fb7ace99e922547068692c6ed53b32fb824a9bb435b4245ce1a0aa60" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:6ed2875186fb5c0213a3d1d97b1e7246bd842d3ac6df248ad2e282dca7788356" [label=""];
  "sha256:6ed2875186fb5c0213a3d1d97b1e7246bd842d3ac6df248ad2e282dca7788356" -> "sha256:c1806530b8f2671247aa4d0a7ea241fb333d3c50d6993983f275cb016213bcf8" [label=""];
  "sha256:c1806530b8f2671247aa4d0a7ea241fb333d3c50d6993983f275cb016213bcf8" -> "sha256:3d152f1aa48c39d36a6c8641750eae308b83125a8c85edbfb78210d319fa35d2" [label=""];
  "sha256:3d152f1aa48c39d36a6c8641750eae308b83125a8c85edbfb78210d319fa35d2" -> "sha256:20847b5a66393080b357b467cdcc1754df0377e900b4d323646a6275656235cb" [label=""];
  "sha256:20847b5a66393080b357b467cdcc1754df0377e900b4d323646a6275656235cb" -> "sha256:a95b60dad9363642d3e0124686d6d88aa9fefd49a950e13682c10fa5c91b1881" [label=""];
  "sha256:a95b60dad9363642d3e0124686d6d88aa9fefd49a950e13682c10fa5c91b1881" -> "sha256:a24916278d74616310b2ac501bac1996495491967a66a5fa867e2cb0032a59bc" [label=""];
  "sha256:a24916278d74616310b2ac501bac1996495491967a66a5fa867e2cb0032a59bc" -> "sha256:ac18c643fb7ace99e922547068692c6ed53b32fb824a9bb435b4245ce1a0aa60" [label=""];
}

