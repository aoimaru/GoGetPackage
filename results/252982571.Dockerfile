[app/sources/252982571.Dockerfile]
digraph {
  "sha256:b5041c3a2f628d5700eb33070d86b451dc9d27e3beae92eab8abbf34de97d32b" [label="local://context" shape="ellipse"];
  "sha256:49bca41097e4a5a3a2e0bdfbf09e7dd1e1f3e026d71746cdbc4b56a8a8b72867" [label="copy{src=/users, dest=/etc/passwd}" shape="note"];
  "sha256:fe5aef308b72dba7c4659bd74f7a148290089150e78ffbcac952686e868c002d" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:dbd1e80162d6a6379440da7050c057ab331f52737ec303d736b0372cbf919f6f" [label="sha256:dbd1e80162d6a6379440da7050c057ab331f52737ec303d736b0372cbf919f6f" shape="plaintext"];
  "sha256:b5041c3a2f628d5700eb33070d86b451dc9d27e3beae92eab8abbf34de97d32b" -> "sha256:49bca41097e4a5a3a2e0bdfbf09e7dd1e1f3e026d71746cdbc4b56a8a8b72867" [label=""];
  "sha256:49bca41097e4a5a3a2e0bdfbf09e7dd1e1f3e026d71746cdbc4b56a8a8b72867" -> "sha256:fe5aef308b72dba7c4659bd74f7a148290089150e78ffbcac952686e868c002d" [label=""];
  "sha256:b5041c3a2f628d5700eb33070d86b451dc9d27e3beae92eab8abbf34de97d32b" -> "sha256:fe5aef308b72dba7c4659bd74f7a148290089150e78ffbcac952686e868c002d" [label=""];
  "sha256:fe5aef308b72dba7c4659bd74f7a148290089150e78ffbcac952686e868c002d" -> "sha256:dbd1e80162d6a6379440da7050c057ab331f52737ec303d736b0372cbf919f6f" [label=""];
}

