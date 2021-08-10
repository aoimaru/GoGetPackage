[app/sources/248447443.Dockerfile]
digraph {
  "sha256:52e04ec9e1693e0907107028d5dc60b73f019239204447f3c78279acc2819714" [label="docker-image://docker.io/library/python:3.6.2-slim" shape="ellipse"];
  "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" [label="/bin/sh -c apt-get update && apt-get install -y make gcc libssl-dev" shape="box"];
  "sha256:07ede655db1413c78cef8df00a939f0451f6103b494333922301f6c67b90a04e" [label="/bin/sh -c pip3 install steem pymongo" shape="box"];
  "sha256:1ae8292a6df283a51b7cb46fb9c46bb4c8f0893cb449923c700d88c53145ea40" [label="sha256:1ae8292a6df283a51b7cb46fb9c46bb4c8f0893cb449923c700d88c53145ea40" shape="plaintext"];
  "sha256:52e04ec9e1693e0907107028d5dc60b73f019239204447f3c78279acc2819714" -> "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" [label=""];
  "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" -> "sha256:07ede655db1413c78cef8df00a939f0451f6103b494333922301f6c67b90a04e" [label=""];
  "sha256:07ede655db1413c78cef8df00a939f0451f6103b494333922301f6c67b90a04e" -> "sha256:1ae8292a6df283a51b7cb46fb9c46bb4c8f0893cb449923c700d88c53145ea40" [label=""];
}

