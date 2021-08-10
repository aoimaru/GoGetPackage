[app/sources/261121183.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:60c0f499a81e099430179654fea907beac0bcc08a3227e906c4525140e06e20d" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:df1a646b79a9f6b5fe1a2530cc4a445a9c5fdb18a535387c7c0240434876f699" [label="/bin/sh -c apk update && apk add git build-base ninja cmake python3" shape="box"];
  "sha256:2dc8450e25b45612b8038adf568a743a0c7a87503883abf224446e05de02629a" [label="mkdir{path=/build}" shape="note"];
  "sha256:8698dde3138fd1509efed3cb9203f45825ed47cc5803861d6234de6d3c2caa8a" [label="/bin/sh -c git clone --branch ${LLVM_TAG} --depth 1 https://github.com/llvm/llvm-project.git" shape="box"];
  "sha256:2479e0c144b70369d3cfacde61fd997d2d3c4ebb1af0db9c3269b7ca519cceba" [label="mkdir{path=/build/llvm-project}" shape="note"];
  "sha256:4d9516997704527324f94d44be8cf7f5474f61465a134c430930ab38f8a50f8f" [label="/bin/sh -c mv clang llvm/tools" shape="box"];
  "sha256:cf1fa83494aaf58fa373b0f8ec92ff248d7faf316fefe50adf86c806e11a1a64" [label="/bin/sh -c mv libcxx llvm/projects" shape="box"];
  "sha256:95f151a00c079338eebd8152d838747785598e8af3d91add9fb6e72093baa436" [label="mkdir{path=/build/llvm-project/llvm/build}" shape="note"];
  "sha256:ad23a48ce309abc3ce5f23e15cdfae4d1171a9bd9ef8cf5192520e52f365ee39" [label="/bin/sh -c cmake -GNinja -DLLVM_BUILD_STATIC=ON -DLLVM_ENABLE_LIBCXX=ON .." shape="box"];
  "sha256:9d5df73ab97885378a41411faa054b42240343750c0ec9aa67143ff2901fac62" [label="/bin/sh -c ninja clang-format" shape="box"];
  "sha256:9d2c5591f5c4fa91a0ea15bc28125a2a7c8700d787650212439f2ce9936d22e2" [label="copy{src=/build/llvm-project/llvm/build/bin/clang-format, dest=/usr/bin}" shape="note"];
  "sha256:dce20042792d2dcb4694e9dc69e012254d4b3be56d632e9be9b7bd6caca7916b" [label="sha256:dce20042792d2dcb4694e9dc69e012254d4b3be56d632e9be9b7bd6caca7916b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:60c0f499a81e099430179654fea907beac0bcc08a3227e906c4525140e06e20d" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:df1a646b79a9f6b5fe1a2530cc4a445a9c5fdb18a535387c7c0240434876f699" [label=""];
  "sha256:df1a646b79a9f6b5fe1a2530cc4a445a9c5fdb18a535387c7c0240434876f699" -> "sha256:2dc8450e25b45612b8038adf568a743a0c7a87503883abf224446e05de02629a" [label=""];
  "sha256:2dc8450e25b45612b8038adf568a743a0c7a87503883abf224446e05de02629a" -> "sha256:8698dde3138fd1509efed3cb9203f45825ed47cc5803861d6234de6d3c2caa8a" [label=""];
  "sha256:8698dde3138fd1509efed3cb9203f45825ed47cc5803861d6234de6d3c2caa8a" -> "sha256:2479e0c144b70369d3cfacde61fd997d2d3c4ebb1af0db9c3269b7ca519cceba" [label=""];
  "sha256:2479e0c144b70369d3cfacde61fd997d2d3c4ebb1af0db9c3269b7ca519cceba" -> "sha256:4d9516997704527324f94d44be8cf7f5474f61465a134c430930ab38f8a50f8f" [label=""];
  "sha256:4d9516997704527324f94d44be8cf7f5474f61465a134c430930ab38f8a50f8f" -> "sha256:cf1fa83494aaf58fa373b0f8ec92ff248d7faf316fefe50adf86c806e11a1a64" [label=""];
  "sha256:cf1fa83494aaf58fa373b0f8ec92ff248d7faf316fefe50adf86c806e11a1a64" -> "sha256:95f151a00c079338eebd8152d838747785598e8af3d91add9fb6e72093baa436" [label=""];
  "sha256:95f151a00c079338eebd8152d838747785598e8af3d91add9fb6e72093baa436" -> "sha256:ad23a48ce309abc3ce5f23e15cdfae4d1171a9bd9ef8cf5192520e52f365ee39" [label=""];
  "sha256:ad23a48ce309abc3ce5f23e15cdfae4d1171a9bd9ef8cf5192520e52f365ee39" -> "sha256:9d5df73ab97885378a41411faa054b42240343750c0ec9aa67143ff2901fac62" [label=""];
  "sha256:60c0f499a81e099430179654fea907beac0bcc08a3227e906c4525140e06e20d" -> "sha256:9d2c5591f5c4fa91a0ea15bc28125a2a7c8700d787650212439f2ce9936d22e2" [label=""];
  "sha256:9d5df73ab97885378a41411faa054b42240343750c0ec9aa67143ff2901fac62" -> "sha256:9d2c5591f5c4fa91a0ea15bc28125a2a7c8700d787650212439f2ce9936d22e2" [label=""];
  "sha256:9d2c5591f5c4fa91a0ea15bc28125a2a7c8700d787650212439f2ce9936d22e2" -> "sha256:dce20042792d2dcb4694e9dc69e012254d4b3be56d632e9be9b7bd6caca7916b" [label=""];
}

