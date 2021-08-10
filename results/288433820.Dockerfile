[app/sources/288433820.Dockerfile]
digraph {
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" [label="docker-image://docker.io/library/fedora:26" shape="ellipse"];
  "sha256:2df933da99a585f68d8513eeaa87b7f5e046edc2bc33bbb14db5202a55b642d6" [label="/bin/sh -c yum -y install hostname glusterfs-server && yum clean all" shape="box"];
  "sha256:509f41341a0d6f92de0e2c4ed36c7a2ee56f318abdd7002fb07344171861443e" [label="local://context" shape="ellipse"];
  "sha256:d112bb6dc211b55149f81ffe61a016d51ec9f870417fdc48bc91fcb08ef72625" [label="copy{src=/glusterd.vol, dest=/etc/glusterfs/}" shape="note"];
  "sha256:53a29641673406496e8ed82eeab7a62cf26abb6b33947475301bae3f9aec77b9" [label="copy{src=/run_gluster.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:f06a764dcc587ed95e75a4d7dc1fec28f774a14ecf4fd1b1b6560989f461e2a0" [label="copy{src=/index.html, dest=/vol/}" shape="note"];
  "sha256:c1f2b391843eb41fc6f4dc4e75e0946e2b99711691b02ee3cbf3bb960c207c01" [label="/bin/sh -c chmod 644 /vol/index.html" shape="box"];
  "sha256:3e061b8bc1b74b63786bdd7ed16317adf8957d3885aa9817d011b052ac5bf966" [label="sha256:3e061b8bc1b74b63786bdd7ed16317adf8957d3885aa9817d011b052ac5bf966" shape="plaintext"];
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" -> "sha256:2df933da99a585f68d8513eeaa87b7f5e046edc2bc33bbb14db5202a55b642d6" [label=""];
  "sha256:2df933da99a585f68d8513eeaa87b7f5e046edc2bc33bbb14db5202a55b642d6" -> "sha256:d112bb6dc211b55149f81ffe61a016d51ec9f870417fdc48bc91fcb08ef72625" [label=""];
  "sha256:509f41341a0d6f92de0e2c4ed36c7a2ee56f318abdd7002fb07344171861443e" -> "sha256:d112bb6dc211b55149f81ffe61a016d51ec9f870417fdc48bc91fcb08ef72625" [label=""];
  "sha256:d112bb6dc211b55149f81ffe61a016d51ec9f870417fdc48bc91fcb08ef72625" -> "sha256:53a29641673406496e8ed82eeab7a62cf26abb6b33947475301bae3f9aec77b9" [label=""];
  "sha256:509f41341a0d6f92de0e2c4ed36c7a2ee56f318abdd7002fb07344171861443e" -> "sha256:53a29641673406496e8ed82eeab7a62cf26abb6b33947475301bae3f9aec77b9" [label=""];
  "sha256:53a29641673406496e8ed82eeab7a62cf26abb6b33947475301bae3f9aec77b9" -> "sha256:f06a764dcc587ed95e75a4d7dc1fec28f774a14ecf4fd1b1b6560989f461e2a0" [label=""];
  "sha256:509f41341a0d6f92de0e2c4ed36c7a2ee56f318abdd7002fb07344171861443e" -> "sha256:f06a764dcc587ed95e75a4d7dc1fec28f774a14ecf4fd1b1b6560989f461e2a0" [label=""];
  "sha256:f06a764dcc587ed95e75a4d7dc1fec28f774a14ecf4fd1b1b6560989f461e2a0" -> "sha256:c1f2b391843eb41fc6f4dc4e75e0946e2b99711691b02ee3cbf3bb960c207c01" [label=""];
  "sha256:c1f2b391843eb41fc6f4dc4e75e0946e2b99711691b02ee3cbf3bb960c207c01" -> "sha256:3e061b8bc1b74b63786bdd7ed16317adf8957d3885aa9817d011b052ac5bf966" [label=""];
}

