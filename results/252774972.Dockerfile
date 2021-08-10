[app/sources/252774972.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:1adf9a2a3bbbea43815b884a6751a801cfeea31f7f880cde3fa4585db54b3776" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:eb99898a0912696b9b46528a762bfaa646d5bb719b1946d57a974e69b8cda34e" [label="/bin/sh -c apt-get install -y ruby1.9.3 git build-essential" shape="box"];
  "sha256:0e32ca7bed20baef2163c18650ad602d9cfc4c1124d82a4a8b160b66db8f0cc0" [label="/bin/sh -c gem install bundler --no-ri --no-rdoc" shape="box"];
  "sha256:41bcd44e2b07b23cdedd2226cb72dfd825551da315c1d0a67c8a393b731ff81f" [label="mkdir{path=/app}" shape="note"];
  "sha256:e394c51dfaaa8ec48bccf6827eef7e4d31fd1a2d4c0a72e599c320f7ba9fbc01" [label="sha256:e394c51dfaaa8ec48bccf6827eef7e4d31fd1a2d4c0a72e599c320f7ba9fbc01" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:1adf9a2a3bbbea43815b884a6751a801cfeea31f7f880cde3fa4585db54b3776" [label=""];
  "sha256:1adf9a2a3bbbea43815b884a6751a801cfeea31f7f880cde3fa4585db54b3776" -> "sha256:eb99898a0912696b9b46528a762bfaa646d5bb719b1946d57a974e69b8cda34e" [label=""];
  "sha256:eb99898a0912696b9b46528a762bfaa646d5bb719b1946d57a974e69b8cda34e" -> "sha256:0e32ca7bed20baef2163c18650ad602d9cfc4c1124d82a4a8b160b66db8f0cc0" [label=""];
  "sha256:0e32ca7bed20baef2163c18650ad602d9cfc4c1124d82a4a8b160b66db8f0cc0" -> "sha256:41bcd44e2b07b23cdedd2226cb72dfd825551da315c1d0a67c8a393b731ff81f" [label=""];
  "sha256:41bcd44e2b07b23cdedd2226cb72dfd825551da315c1d0a67c8a393b731ff81f" -> "sha256:e394c51dfaaa8ec48bccf6827eef7e4d31fd1a2d4c0a72e599c320f7ba9fbc01" [label=""];
}

