[app/sources/228657575.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:5090e7b4c5c25dfc3b7681abdb10ddafd7dc25a01b7385daf20889ec698ff244" [label="/bin/sh -c apt-get update -qq &&     apt-get install -qq python-apt python-pycurl python-pip python-dev                         libffi-dev libssl-dev locales &&     echo 'en_US.UTF-8 UTF-8' > /var/lib/locales/supported.d/local &&     pip install -U setuptools &&     pip install -q ansible==1.9.4" shape="box"];
  "sha256:64cbb733374f9c1feed7a1727971c1edadcc79bfbd663598883d63008cad56b3" [label="mkdir{path=/tmp/postgresql}" shape="note"];
  "sha256:90bf8cc44e531683a3b3cacf5662da0cd32e5080fbefe0e609c0bc1644890f7c" [label="local://context" shape="ellipse"];
  "sha256:6f3aee01fb4a500bf593d84fbea5a67e7d268d176b58530a9bf6d5351a6c6854" [label="copy{src=/, dest=/tmp/postgresql}" shape="note"];
  "sha256:fcb7c7dbf65c8ae9400075e8ac98ac135d860d6a63f0c1f8621062d72f640580" [label="/bin/sh -c echo localhost > inventory" shape="box"];
  "sha256:80c40b5179191b6082124a996a9a4ee6e3ca3efe5e2ef49c62d90e1b4d85992f" [label="/bin/sh -c ansible-playbook -i inventory -c local --become tests/playbook.yml" shape="box"];
  "sha256:ee91c2dfcbf2b04c69f3cd918a56e8ba961aee721f9c88ed32feec7e4f083c3e" [label="sha256:ee91c2dfcbf2b04c69f3cd918a56e8ba961aee721f9c88ed32feec7e4f083c3e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5090e7b4c5c25dfc3b7681abdb10ddafd7dc25a01b7385daf20889ec698ff244" [label=""];
  "sha256:5090e7b4c5c25dfc3b7681abdb10ddafd7dc25a01b7385daf20889ec698ff244" -> "sha256:64cbb733374f9c1feed7a1727971c1edadcc79bfbd663598883d63008cad56b3" [label=""];
  "sha256:64cbb733374f9c1feed7a1727971c1edadcc79bfbd663598883d63008cad56b3" -> "sha256:6f3aee01fb4a500bf593d84fbea5a67e7d268d176b58530a9bf6d5351a6c6854" [label=""];
  "sha256:90bf8cc44e531683a3b3cacf5662da0cd32e5080fbefe0e609c0bc1644890f7c" -> "sha256:6f3aee01fb4a500bf593d84fbea5a67e7d268d176b58530a9bf6d5351a6c6854" [label=""];
  "sha256:6f3aee01fb4a500bf593d84fbea5a67e7d268d176b58530a9bf6d5351a6c6854" -> "sha256:fcb7c7dbf65c8ae9400075e8ac98ac135d860d6a63f0c1f8621062d72f640580" [label=""];
  "sha256:fcb7c7dbf65c8ae9400075e8ac98ac135d860d6a63f0c1f8621062d72f640580" -> "sha256:80c40b5179191b6082124a996a9a4ee6e3ca3efe5e2ef49c62d90e1b4d85992f" [label=""];
  "sha256:80c40b5179191b6082124a996a9a4ee6e3ca3efe5e2ef49c62d90e1b4d85992f" -> "sha256:ee91c2dfcbf2b04c69f3cd918a56e8ba961aee721f9c88ed32feec7e4f083c3e" [label=""];
}

