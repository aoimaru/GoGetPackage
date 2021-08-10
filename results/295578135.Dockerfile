[app/sources/295578135.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" [label="local://context" shape="ellipse"];
  "sha256:91b5c1172a1c0b72e4f9d75d9d4efd593b9dbc5b526f90bcdb0b8b4e4974ae9c" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:2d0b56ec3f187e721c5e8b990cc0b7fafa138f824b6931646e425d01ce968263" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:0cfb51889afbb5356defdfcc526f13a09bf1c2f6bbd90a374c4d2aafe62125df" [label="copy{src=/null, dest=/}" shape="note"];
  "sha256:9e621d685e496190344e77ba55163d6358d934e51307eb86567233ba5db60c8e" [label="copy{src=/nullfile, dest=/tmp}" shape="note"];
  "sha256:9afca5f3d3938feb87cdc1cb43bcecc0767b89440f450dac0b9ae2a9ac8b7964" [label="copy{src=/vimrc, dest=/tmp}" shape="note"];
  "sha256:7f0463af26cf0d86f1622b6a08001ceac4ce5fdfefdc44dd06c0e68749343ddd" [label="copy{src=/bashrc, dest=/tmp}" shape="note"];
  "sha256:3a71ff05b27e8f153ca4680c60df551b02c0becb5186305cc18e77622ce99d98" [label="copy{src=/test file, dest=/tmp}" shape="note"];
  "sha256:1fdc91474c3eea6aa9c99592bbca0cff9ced8cb6cf0e05ea9b62d2e826b6e4a1" [label="copy{src=/test file, dest=/tmp/test file}" shape="note"];
  "sha256:5aac4f56f69d46647bf0722478d8f350cc00bfdc8cd7b3e52db15c005af284ef" [label="sha256:5aac4f56f69d46647bf0722478d8f350cc00bfdc8cd7b3e52db15c005af284ef" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:91b5c1172a1c0b72e4f9d75d9d4efd593b9dbc5b526f90bcdb0b8b4e4974ae9c" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:91b5c1172a1c0b72e4f9d75d9d4efd593b9dbc5b526f90bcdb0b8b4e4974ae9c" [label=""];
  "sha256:91b5c1172a1c0b72e4f9d75d9d4efd593b9dbc5b526f90bcdb0b8b4e4974ae9c" -> "sha256:2d0b56ec3f187e721c5e8b990cc0b7fafa138f824b6931646e425d01ce968263" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:2d0b56ec3f187e721c5e8b990cc0b7fafa138f824b6931646e425d01ce968263" [label=""];
  "sha256:2d0b56ec3f187e721c5e8b990cc0b7fafa138f824b6931646e425d01ce968263" -> "sha256:0cfb51889afbb5356defdfcc526f13a09bf1c2f6bbd90a374c4d2aafe62125df" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:0cfb51889afbb5356defdfcc526f13a09bf1c2f6bbd90a374c4d2aafe62125df" [label=""];
  "sha256:0cfb51889afbb5356defdfcc526f13a09bf1c2f6bbd90a374c4d2aafe62125df" -> "sha256:9e621d685e496190344e77ba55163d6358d934e51307eb86567233ba5db60c8e" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:9e621d685e496190344e77ba55163d6358d934e51307eb86567233ba5db60c8e" [label=""];
  "sha256:9e621d685e496190344e77ba55163d6358d934e51307eb86567233ba5db60c8e" -> "sha256:9afca5f3d3938feb87cdc1cb43bcecc0767b89440f450dac0b9ae2a9ac8b7964" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:9afca5f3d3938feb87cdc1cb43bcecc0767b89440f450dac0b9ae2a9ac8b7964" [label=""];
  "sha256:9afca5f3d3938feb87cdc1cb43bcecc0767b89440f450dac0b9ae2a9ac8b7964" -> "sha256:7f0463af26cf0d86f1622b6a08001ceac4ce5fdfefdc44dd06c0e68749343ddd" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:7f0463af26cf0d86f1622b6a08001ceac4ce5fdfefdc44dd06c0e68749343ddd" [label=""];
  "sha256:7f0463af26cf0d86f1622b6a08001ceac4ce5fdfefdc44dd06c0e68749343ddd" -> "sha256:3a71ff05b27e8f153ca4680c60df551b02c0becb5186305cc18e77622ce99d98" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:3a71ff05b27e8f153ca4680c60df551b02c0becb5186305cc18e77622ce99d98" [label=""];
  "sha256:3a71ff05b27e8f153ca4680c60df551b02c0becb5186305cc18e77622ce99d98" -> "sha256:1fdc91474c3eea6aa9c99592bbca0cff9ced8cb6cf0e05ea9b62d2e826b6e4a1" [label=""];
  "sha256:e17f2ad7acd76f6576cd3bcbfdfec8e8b7fa3387faa800f1344e914fb7e11a2e" -> "sha256:1fdc91474c3eea6aa9c99592bbca0cff9ced8cb6cf0e05ea9b62d2e826b6e4a1" [label=""];
  "sha256:1fdc91474c3eea6aa9c99592bbca0cff9ced8cb6cf0e05ea9b62d2e826b6e4a1" -> "sha256:5aac4f56f69d46647bf0722478d8f350cc00bfdc8cd7b3e52db15c005af284ef" [label=""];
}

