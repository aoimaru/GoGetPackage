[app/sources/362224815.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:aa8d5b1f1f9adba38e91b2c4996ec9aa822ab79c87daaa3f1f8204b93ec9148d" [label="local://context" shape="ellipse"];
  "sha256:9e3a07a074e768b419a95177090bb800dfd5c9170155025ffc9fe1ee73cd5c5a" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:de12fb375df374d7a2bee0fc5788d24c26ae7d6b3695ea3ec391c75ad616e46c" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:1231ce208c15dc50166b01dea3ebdb215cd28eda71c0f78d923e403f6555f6d6" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     python3     python3-dev     python3-pip     && apt-get clean all     && rm -rf /var/lib/apt/lists/*     && pip3 install -U pip" shape="box"];
  "sha256:4bacbc268bebd67fa392a430297cfe62513cfee5c77580b3c35fddeb716dc584" [label="/bin/sh -c mkdir -p /etc/supervisor.conf.d &&     mkdir -p /var/log/supervisor  &&     mkdir -p /usr/src/app  &&     mkdir -p /var/log/gunicorn" shape="box"];
  "sha256:a83926424a1d05b7587f3a57300b83ac47ab7c23b500d9620c46ea307c638144" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3dd42b0df272b8e65cc9ba16ce4d6c8802cda5abed915ceaeeae296cab1da29f" [label="copy{src=/requirements.txt, dest=/usr/src/app/requirements.txt}" shape="note"];
  "sha256:1fcd4c3d41b7e794262a27ff15996fbe0ecf74bd303e2347d4aabf07680a62c4" [label="/bin/sh -c pip3 install --no-cache-dir gunicorn &&     pip3 install --no-cache-dir -r /usr/src/app/requirements.txt &&     pip3 install --ignore-installed six" shape="box"];
  "sha256:5d23e68e3f6c324e5f7c5f7b7392f38a003c2bab5f024e24f945b1cb4d143915" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:cb0039c0b6a67b7b5b273b514db45a2390cb7ae821c6cd06d74848e54644b506" [label="sha256:cb0039c0b6a67b7b5b273b514db45a2390cb7ae821c6cd06d74848e54644b506" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9e3a07a074e768b419a95177090bb800dfd5c9170155025ffc9fe1ee73cd5c5a" [label=""];
  "sha256:aa8d5b1f1f9adba38e91b2c4996ec9aa822ab79c87daaa3f1f8204b93ec9148d" -> "sha256:9e3a07a074e768b419a95177090bb800dfd5c9170155025ffc9fe1ee73cd5c5a" [label=""];
  "sha256:9e3a07a074e768b419a95177090bb800dfd5c9170155025ffc9fe1ee73cd5c5a" -> "sha256:de12fb375df374d7a2bee0fc5788d24c26ae7d6b3695ea3ec391c75ad616e46c" [label=""];
  "sha256:aa8d5b1f1f9adba38e91b2c4996ec9aa822ab79c87daaa3f1f8204b93ec9148d" -> "sha256:de12fb375df374d7a2bee0fc5788d24c26ae7d6b3695ea3ec391c75ad616e46c" [label=""];
  "sha256:de12fb375df374d7a2bee0fc5788d24c26ae7d6b3695ea3ec391c75ad616e46c" -> "sha256:1231ce208c15dc50166b01dea3ebdb215cd28eda71c0f78d923e403f6555f6d6" [label=""];
  "sha256:1231ce208c15dc50166b01dea3ebdb215cd28eda71c0f78d923e403f6555f6d6" -> "sha256:4bacbc268bebd67fa392a430297cfe62513cfee5c77580b3c35fddeb716dc584" [label=""];
  "sha256:4bacbc268bebd67fa392a430297cfe62513cfee5c77580b3c35fddeb716dc584" -> "sha256:a83926424a1d05b7587f3a57300b83ac47ab7c23b500d9620c46ea307c638144" [label=""];
  "sha256:a83926424a1d05b7587f3a57300b83ac47ab7c23b500d9620c46ea307c638144" -> "sha256:3dd42b0df272b8e65cc9ba16ce4d6c8802cda5abed915ceaeeae296cab1da29f" [label=""];
  "sha256:aa8d5b1f1f9adba38e91b2c4996ec9aa822ab79c87daaa3f1f8204b93ec9148d" -> "sha256:3dd42b0df272b8e65cc9ba16ce4d6c8802cda5abed915ceaeeae296cab1da29f" [label=""];
  "sha256:3dd42b0df272b8e65cc9ba16ce4d6c8802cda5abed915ceaeeae296cab1da29f" -> "sha256:1fcd4c3d41b7e794262a27ff15996fbe0ecf74bd303e2347d4aabf07680a62c4" [label=""];
  "sha256:1fcd4c3d41b7e794262a27ff15996fbe0ecf74bd303e2347d4aabf07680a62c4" -> "sha256:5d23e68e3f6c324e5f7c5f7b7392f38a003c2bab5f024e24f945b1cb4d143915" [label=""];
  "sha256:aa8d5b1f1f9adba38e91b2c4996ec9aa822ab79c87daaa3f1f8204b93ec9148d" -> "sha256:5d23e68e3f6c324e5f7c5f7b7392f38a003c2bab5f024e24f945b1cb4d143915" [label=""];
  "sha256:5d23e68e3f6c324e5f7c5f7b7392f38a003c2bab5f024e24f945b1cb4d143915" -> "sha256:cb0039c0b6a67b7b5b273b514db45a2390cb7ae821c6cd06d74848e54644b506" [label=""];
}

