[app/sources/318734473.Dockerfile]
digraph {
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:e675088f7c7e7d2d43974180657b3a2e6c4c3cb5d14c8c3f9e1879ac694e4e0b" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     libcurl4-openssl-dev     cmake     clang-8     --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:34d637940bd87507b9f8e9a660434e7098a368e29ce9849363467f159aacc341" [label="local://context" shape="ellipse"];
  "sha256:214ccc108a6702ad718a9bf932a3df542332a478e5004800f17c9cde63408f5b" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c929bf3243ee6c3f6d46deb4c55612ac0e2db0cf7378cadad811a121e82a7749" [label="mkdir{path=/app/build}" shape="note"];
  "sha256:393543c92c365b20176cfedf05a27710e1b78f7a8045def02befa3e6fa4146b7" [label="/bin/sh -c cmake .. -DCMAKE_C_COMPILER=clang-8 -DCMAKE_CXX_COMPILER=clang++-8 &&     make -j \"$(nproc)\" &&     make install" shape="box"];
  "sha256:858b1907447d2e66d3a5b691f89b6d0e7c359905d3900c5c4fbf58f7b53dd57f" [label="sha256:858b1907447d2e66d3a5b691f89b6d0e7c359905d3900c5c4fbf58f7b53dd57f" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:e675088f7c7e7d2d43974180657b3a2e6c4c3cb5d14c8c3f9e1879ac694e4e0b" [label=""];
  "sha256:e675088f7c7e7d2d43974180657b3a2e6c4c3cb5d14c8c3f9e1879ac694e4e0b" -> "sha256:214ccc108a6702ad718a9bf932a3df542332a478e5004800f17c9cde63408f5b" [label=""];
  "sha256:34d637940bd87507b9f8e9a660434e7098a368e29ce9849363467f159aacc341" -> "sha256:214ccc108a6702ad718a9bf932a3df542332a478e5004800f17c9cde63408f5b" [label=""];
  "sha256:214ccc108a6702ad718a9bf932a3df542332a478e5004800f17c9cde63408f5b" -> "sha256:c929bf3243ee6c3f6d46deb4c55612ac0e2db0cf7378cadad811a121e82a7749" [label=""];
  "sha256:c929bf3243ee6c3f6d46deb4c55612ac0e2db0cf7378cadad811a121e82a7749" -> "sha256:393543c92c365b20176cfedf05a27710e1b78f7a8045def02befa3e6fa4146b7" [label=""];
  "sha256:393543c92c365b20176cfedf05a27710e1b78f7a8045def02befa3e6fa4146b7" -> "sha256:858b1907447d2e66d3a5b691f89b6d0e7c359905d3900c5c4fbf58f7b53dd57f" [label=""];
}

