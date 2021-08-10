[app/sources/218191678.Dockerfile]
digraph {
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" [label="docker-image://docker.io/library/golang:1.7.1-alpine" shape="ellipse"];
  "sha256:d361f5f497b0e525d6a6250a2a53d753f79f80e4fd4300dbb5d37e15f59120a5" [label="/bin/sh -c apk add --no-cache git make openssl" shape="box"];
  "sha256:dafad72b626bfd34d7b1fb83d2fce63b6e2dc720a539a21287c790cedd2712d6" [label="/bin/sh -c git clone https://github.com/tutumcloud/ngrok.git /ngrok" shape="box"];
  "sha256:6387f0874654efe2d49b76b0a350c94dfed724e7f8b1607bc3fdef079610c677" [label="local://context" shape="ellipse"];
  "sha256:ff39edcd014d4799dbec182e9239ce7104caf3cc483376c542615a69b833fbae" [label="copy{src=/*.sh, dest=/}" shape="note"];
  "sha256:2f1499aca5ff3499e7bc944120c4886b81a3060230b38b65504220ab73f1ff08" [label="sha256:2f1499aca5ff3499e7bc944120c4886b81a3060230b38b65504220ab73f1ff08" shape="plaintext"];
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" -> "sha256:d361f5f497b0e525d6a6250a2a53d753f79f80e4fd4300dbb5d37e15f59120a5" [label=""];
  "sha256:d361f5f497b0e525d6a6250a2a53d753f79f80e4fd4300dbb5d37e15f59120a5" -> "sha256:dafad72b626bfd34d7b1fb83d2fce63b6e2dc720a539a21287c790cedd2712d6" [label=""];
  "sha256:dafad72b626bfd34d7b1fb83d2fce63b6e2dc720a539a21287c790cedd2712d6" -> "sha256:ff39edcd014d4799dbec182e9239ce7104caf3cc483376c542615a69b833fbae" [label=""];
  "sha256:6387f0874654efe2d49b76b0a350c94dfed724e7f8b1607bc3fdef079610c677" -> "sha256:ff39edcd014d4799dbec182e9239ce7104caf3cc483376c542615a69b833fbae" [label=""];
  "sha256:ff39edcd014d4799dbec182e9239ce7104caf3cc483376c542615a69b833fbae" -> "sha256:2f1499aca5ff3499e7bc944120c4886b81a3060230b38b65504220ab73f1ff08" [label=""];
}

