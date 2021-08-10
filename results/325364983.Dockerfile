[app/sources/325364983.Dockerfile]
digraph {
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" [label="docker-image://docker.io/plugins/base:linux-arm" shape="ellipse"];
  "sha256:dcb0afc5a3948ca84040ca4ff4709130d56c5ea3fbda50450a800ac8ee527625" [label="/bin/sh -c apk add --no-cache bash git curl rsync openssh-client py-pip py-requests python2-dev libffi-dev libressl libressl-dev build-base &&   pip install -U pip &&   pip install ansible==2.7.6 &&   apk del python2-dev libffi-dev libressl-dev build-base" shape="box"];
  "sha256:63b51686cbfb907f6cbf6323ade969db9507d097fe434088ae7aa20c9d08a2f2" [label="local://context" shape="ellipse"];
  "sha256:e090767d93c69a225e799afa34b1c78922fcde7bed8cafbcb9342161d20069c5" [label="copy{src=/release/linux/arm/drone-ansible, dest=/bin/}" shape="note"];
  "sha256:6a7ae97efa90a6a6638a394c1df33582ff41fda14e890c7abfab128558e07463" [label="sha256:6a7ae97efa90a6a6638a394c1df33582ff41fda14e890c7abfab128558e07463" shape="plaintext"];
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" -> "sha256:dcb0afc5a3948ca84040ca4ff4709130d56c5ea3fbda50450a800ac8ee527625" [label=""];
  "sha256:dcb0afc5a3948ca84040ca4ff4709130d56c5ea3fbda50450a800ac8ee527625" -> "sha256:e090767d93c69a225e799afa34b1c78922fcde7bed8cafbcb9342161d20069c5" [label=""];
  "sha256:63b51686cbfb907f6cbf6323ade969db9507d097fe434088ae7aa20c9d08a2f2" -> "sha256:e090767d93c69a225e799afa34b1c78922fcde7bed8cafbcb9342161d20069c5" [label=""];
  "sha256:e090767d93c69a225e799afa34b1c78922fcde7bed8cafbcb9342161d20069c5" -> "sha256:6a7ae97efa90a6a6638a394c1df33582ff41fda14e890c7abfab128558e07463" [label=""];
}

