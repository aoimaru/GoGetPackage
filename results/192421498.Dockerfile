[app/sources/192421498.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:1155f742761a7f51228878ba059796c097c9bb1661c522d8f3679f684c0c6b92" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d6b0acf940730c1a1824a2ff7525f2435f3891d95d858ac5c616ba64263e9a74" [label="/bin/sh -c pip install --upgrade pip setuptools &&     pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:d4cf7849739bbe14ba7101a55e233bbf089aa719356ea284c205d0ab70e2c512" [label="local://context" shape="ellipse"];
  "sha256:64dfda8ab9b35ef0cfc7af1a8c49966e670bd9400a181a7666dbe93e0103e955" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:b0554896564ea2426eed8b4739f927c9d3db483e30d3f77a601909ebe8557508" [label="sha256:b0554896564ea2426eed8b4739f927c9d3db483e30d3f77a601909ebe8557508" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:1155f742761a7f51228878ba059796c097c9bb1661c522d8f3679f684c0c6b92" [label=""];
  "sha256:1155f742761a7f51228878ba059796c097c9bb1661c522d8f3679f684c0c6b92" -> "sha256:d6b0acf940730c1a1824a2ff7525f2435f3891d95d858ac5c616ba64263e9a74" [label=""];
  "sha256:d6b0acf940730c1a1824a2ff7525f2435f3891d95d858ac5c616ba64263e9a74" -> "sha256:64dfda8ab9b35ef0cfc7af1a8c49966e670bd9400a181a7666dbe93e0103e955" [label=""];
  "sha256:d4cf7849739bbe14ba7101a55e233bbf089aa719356ea284c205d0ab70e2c512" -> "sha256:64dfda8ab9b35ef0cfc7af1a8c49966e670bd9400a181a7666dbe93e0103e955" [label=""];
  "sha256:64dfda8ab9b35ef0cfc7af1a8c49966e670bd9400a181a7666dbe93e0103e955" -> "sha256:b0554896564ea2426eed8b4739f927c9d3db483e30d3f77a601909ebe8557508" [label=""];
}

