[app/sources/167469821.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e21604d88be2b583fc0e3bfcaa6529910e7ab2e7f21952a0aa753294377063b5" [label="/bin/sh -c apt-get update --fix-missing" shape="box"];
  "sha256:799fcbcfe5573072cc07bec9d5b310f0bee1bfb0443e2bcc26eab1456febe6fb" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:5b9457c474ad6f2b63c3af862521cd3a6f52414a8558a5b93950060666ceec8e" [label="/bin/sh -c apt-get install -y build-essential libssl-dev libffi-dev python-dev" shape="box"];
  "sha256:56d7b24b2a85d3a6f2555068f99529accb5247897228959238eaab0ae7b99fb4" [label="/bin/sh -c apt-get install -y python python-pip python-virtualenv wget unzip" shape="box"];
  "sha256:14baef92f2bec67d0d181ebb4a04c13d9b5cf1552d546a99783a0922ef9f9bda" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:935c3424d14ca2f510c2277c1b7151ed325574f8e50029541e8c84a33366cc15" [label="/bin/sh -c mkdir -p /code" shape="box"];
  "sha256:935b14cd35e4f8c2d59f069c023be86b10ab2aaa5fa16afb3f943b93a5d2ead4" [label="local://context" shape="ellipse"];
  "sha256:868b79c78637d1233c56812fa0d0e2291004d0fc1de328eefc757bfd6e9919a4" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:2c58714621b439a5d6da851a371593f6650df45807503b9f61b8b66a5bf19b77" [label="copy{src=/requirements.txt, dest=/config/requirements.txt}" shape="note"];
  "sha256:7469761c7d8c9f5afcf0611078e19304a9a0738ea6e5f1ee291a1f7008eef6ec" [label="/bin/sh -c pip install -r /config/requirements.txt" shape="box"];
  "sha256:03b89e4cc34cf6da6affd4c7e7e6a8ba3c86358406555ededa1a2fdfcc4b0b25" [label="sha256:03b89e4cc34cf6da6affd4c7e7e6a8ba3c86358406555ededa1a2fdfcc4b0b25" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e21604d88be2b583fc0e3bfcaa6529910e7ab2e7f21952a0aa753294377063b5" [label=""];
  "sha256:e21604d88be2b583fc0e3bfcaa6529910e7ab2e7f21952a0aa753294377063b5" -> "sha256:799fcbcfe5573072cc07bec9d5b310f0bee1bfb0443e2bcc26eab1456febe6fb" [label=""];
  "sha256:799fcbcfe5573072cc07bec9d5b310f0bee1bfb0443e2bcc26eab1456febe6fb" -> "sha256:5b9457c474ad6f2b63c3af862521cd3a6f52414a8558a5b93950060666ceec8e" [label=""];
  "sha256:5b9457c474ad6f2b63c3af862521cd3a6f52414a8558a5b93950060666ceec8e" -> "sha256:56d7b24b2a85d3a6f2555068f99529accb5247897228959238eaab0ae7b99fb4" [label=""];
  "sha256:56d7b24b2a85d3a6f2555068f99529accb5247897228959238eaab0ae7b99fb4" -> "sha256:14baef92f2bec67d0d181ebb4a04c13d9b5cf1552d546a99783a0922ef9f9bda" [label=""];
  "sha256:14baef92f2bec67d0d181ebb4a04c13d9b5cf1552d546a99783a0922ef9f9bda" -> "sha256:935c3424d14ca2f510c2277c1b7151ed325574f8e50029541e8c84a33366cc15" [label=""];
  "sha256:935c3424d14ca2f510c2277c1b7151ed325574f8e50029541e8c84a33366cc15" -> "sha256:868b79c78637d1233c56812fa0d0e2291004d0fc1de328eefc757bfd6e9919a4" [label=""];
  "sha256:935b14cd35e4f8c2d59f069c023be86b10ab2aaa5fa16afb3f943b93a5d2ead4" -> "sha256:868b79c78637d1233c56812fa0d0e2291004d0fc1de328eefc757bfd6e9919a4" [label=""];
  "sha256:868b79c78637d1233c56812fa0d0e2291004d0fc1de328eefc757bfd6e9919a4" -> "sha256:2c58714621b439a5d6da851a371593f6650df45807503b9f61b8b66a5bf19b77" [label=""];
  "sha256:935b14cd35e4f8c2d59f069c023be86b10ab2aaa5fa16afb3f943b93a5d2ead4" -> "sha256:2c58714621b439a5d6da851a371593f6650df45807503b9f61b8b66a5bf19b77" [label=""];
  "sha256:2c58714621b439a5d6da851a371593f6650df45807503b9f61b8b66a5bf19b77" -> "sha256:7469761c7d8c9f5afcf0611078e19304a9a0738ea6e5f1ee291a1f7008eef6ec" [label=""];
  "sha256:7469761c7d8c9f5afcf0611078e19304a9a0738ea6e5f1ee291a1f7008eef6ec" -> "sha256:03b89e4cc34cf6da6affd4c7e7e6a8ba3c86358406555ededa1a2fdfcc4b0b25" [label=""];
}

