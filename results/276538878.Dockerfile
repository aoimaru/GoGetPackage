[app/sources/276538878.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c76dc6bd813fedeb6c7505b46ff5db1b93196302016b4cb716f0d88c48491dff" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list" shape="box"];
  "sha256:93e5f09a746fb3fa295a0dd6d1b157278a57fd8150a4f4d2f3b70d64f09772fe" [label="/bin/sh -c set -x     && apt-get update     && apt-get install -y aptitude     && aptitude install -y samba-libs=2:4.3.8+dfsg-0ubuntu1 samba=2:4.3.8+dfsg-0ubuntu1 samba-common=2:4.3.8+dfsg-0ubuntu1 samba-common-bin=2:4.3.8+dfsg-0ubuntu1 libwbclient0=2:4.3.8+dfsg-0ubuntu1 libwbclient0=2:4.3.8+dfsg-0ubuntu1 python-samba=2:4.3.8+dfsg-0ubuntu1 samba-dsdb-modules=2:4.3.8+dfsg-0ubuntu1 samba-vfs-modules=2:4.3.8+dfsg-0ubuntu1" shape="box"];
  "sha256:925f0ab0da837bd2e3e1330a6a1e060d88acc1963e5f103fe51ed1fe5734db9e" [label="local://context" shape="ellipse"];
  "sha256:e558f832ccc44f1e4e3221a41c80e286dcef68e7a812aed291079911f6bd76f5" [label="copy{src=/src/smb.conf, dest=/etc/samba/smb.conf}" shape="note"];
  "sha256:f06c95cd14873e09f26423311c424f30cbbaceb6d67529641771836b2cf1a67b" [label="copy{src=/src/start.sh, dest=/start.sh}" shape="note"];
  "sha256:a61abce33f1788d529e6645735b4512176f522de321c83e99d2d5f12f2b1fb4c" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:9c79a69fb42b84b27a2f66df2bb2a79141637d7a3d38fe0fe53ed4ba274724ce" [label="sha256:9c79a69fb42b84b27a2f66df2bb2a79141637d7a3d38fe0fe53ed4ba274724ce" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c76dc6bd813fedeb6c7505b46ff5db1b93196302016b4cb716f0d88c48491dff" [label=""];
  "sha256:c76dc6bd813fedeb6c7505b46ff5db1b93196302016b4cb716f0d88c48491dff" -> "sha256:93e5f09a746fb3fa295a0dd6d1b157278a57fd8150a4f4d2f3b70d64f09772fe" [label=""];
  "sha256:93e5f09a746fb3fa295a0dd6d1b157278a57fd8150a4f4d2f3b70d64f09772fe" -> "sha256:e558f832ccc44f1e4e3221a41c80e286dcef68e7a812aed291079911f6bd76f5" [label=""];
  "sha256:925f0ab0da837bd2e3e1330a6a1e060d88acc1963e5f103fe51ed1fe5734db9e" -> "sha256:e558f832ccc44f1e4e3221a41c80e286dcef68e7a812aed291079911f6bd76f5" [label=""];
  "sha256:e558f832ccc44f1e4e3221a41c80e286dcef68e7a812aed291079911f6bd76f5" -> "sha256:f06c95cd14873e09f26423311c424f30cbbaceb6d67529641771836b2cf1a67b" [label=""];
  "sha256:925f0ab0da837bd2e3e1330a6a1e060d88acc1963e5f103fe51ed1fe5734db9e" -> "sha256:f06c95cd14873e09f26423311c424f30cbbaceb6d67529641771836b2cf1a67b" [label=""];
  "sha256:f06c95cd14873e09f26423311c424f30cbbaceb6d67529641771836b2cf1a67b" -> "sha256:a61abce33f1788d529e6645735b4512176f522de321c83e99d2d5f12f2b1fb4c" [label=""];
  "sha256:a61abce33f1788d529e6645735b4512176f522de321c83e99d2d5f12f2b1fb4c" -> "sha256:9c79a69fb42b84b27a2f66df2bb2a79141637d7a3d38fe0fe53ed4ba274724ce" [label=""];
}

