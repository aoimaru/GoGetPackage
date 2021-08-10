[app/sources/147439193.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:9a875d81ed0c0ecb93989d486b4b14559839733c6cf1816a564af2894a1f3b42" [label="/bin/sh -c apt-get update &&  apt-get install -y     python3-pip virtualenv     python3-dev     git     unzip wget     sudo     zlib1g zlib1g-dev bash-completion     build-essential cmake     libtinfo-dev     zip golang-go     locate curl     clang-format-3.9" shape="box"];
  "sha256:923aca076332de1772de9e5223d422aa1ef3b1f9fbae8d3a3c5b8c196eb1d7f5" [label="/bin/sh -c which gcc && gcc --version || true" shape="box"];
  "sha256:c6441ce23495eef7b9fdf5ddb28459ff86576938632e84e76dc3865cf6845db4" [label="/bin/sh -c which c++ && c++ --version || true" shape="box"];
  "sha256:e334a383189e76e68dd4c4d7d2050d5195ac173ceb0d685d7d807568a1eb8278" [label="/bin/sh -c apt-get install -y gcc-4.8 g++-4.8" shape="box"];
  "sha256:6baff5ed003403832185869b2f605a4826ad5a4b47daca79583106bbdd21b630" [label="/bin/sh -c which gcc && gcc --version || true" shape="box"];
  "sha256:2e5296229dbfc94e6b10e7086094a343ef620ec05230f81e2015c16b729fc94f" [label="/bin/sh -c which c++ && c++ --version || true" shape="box"];
  "sha256:311c492c58b3e2138f50ee65f8998870148df0c07d1fc6e0e2f25e9ade106671" [label="/bin/sh -c ln -f -s /usr/bin/gcc-4.8 /usr/bin/gcc || true" shape="box"];
  "sha256:5a56c395e119272a08ff5f913c141ab7ff005b90949355c53d798d35697138fa" [label="/bin/sh -c ln -f -s /usr/bin/g++-4.8 /usr/bin/g++ || true" shape="box"];
  "sha256:92d4985956701b7a5d4a4cfe6938f4cb5586792c33758ec195ca918f42e86b60" [label="/bin/sh -c which gcc && gcc --version || true" shape="box"];
  "sha256:3394b29f77dd34294cdc66f7a3bd162e25389e06e90be32241ff9adc02d42d25" [label="/bin/sh -c which c++ && c++ --version || true" shape="box"];
  "sha256:0978d023e9adabfd60029296ac08d09ce60a908b4f1ed9408cfd13772b8fd854" [label="/bin/sh -c updatedb" shape="box"];
  "sha256:b4e741e885cb337cb1a15a75da124d2b79227975645acc22011159aed41fccaa" [label="/bin/sh -c pip3 install --upgrade pip setuptools virtualenv==16.1.0" shape="box"];
  "sha256:f7498a5a1b3e3c531b423b14147a312fcf2731416be61ecb66ac358ab2f781b9" [label="/bin/sh -c pip3 install --upgrade pytest" shape="box"];
  "sha256:cd4f08435f0479c6311013838a0935a87f4e88926b92098ecb394e0685a47662" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:1116b11e9b63cef410e4678af767bbfefd9d124d44c0b98f46575719c3aa70dc" [label="/bin/sh -c wget --no-verbose -c https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel_${BAZEL_VERSION}-linux-x86_64.deb" shape="box"];
  "sha256:be3eedc695fe84a6ca30721ea457b1623d37f9b75b63057fc035f7fdb6c359ca" [label="/bin/sh -c dpkg -i bazel_${BAZEL_VERSION}-linux-x86_64.deb || true" shape="box"];
  "sha256:d843ee99185cfa0561d2d0d19bf45378051125b9838aefa327f408af1c6c02c1" [label="mkdir{path=/home}" shape="note"];
  "sha256:eeaa2f4ad9a1bf2a9beb2c76cd1f9b866bc7ddbea527c89eab532da6146c7810" [label="sha256:eeaa2f4ad9a1bf2a9beb2c76cd1f9b866bc7ddbea527c89eab532da6146c7810" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9a875d81ed0c0ecb93989d486b4b14559839733c6cf1816a564af2894a1f3b42" [label=""];
  "sha256:9a875d81ed0c0ecb93989d486b4b14559839733c6cf1816a564af2894a1f3b42" -> "sha256:923aca076332de1772de9e5223d422aa1ef3b1f9fbae8d3a3c5b8c196eb1d7f5" [label=""];
  "sha256:923aca076332de1772de9e5223d422aa1ef3b1f9fbae8d3a3c5b8c196eb1d7f5" -> "sha256:c6441ce23495eef7b9fdf5ddb28459ff86576938632e84e76dc3865cf6845db4" [label=""];
  "sha256:c6441ce23495eef7b9fdf5ddb28459ff86576938632e84e76dc3865cf6845db4" -> "sha256:e334a383189e76e68dd4c4d7d2050d5195ac173ceb0d685d7d807568a1eb8278" [label=""];
  "sha256:e334a383189e76e68dd4c4d7d2050d5195ac173ceb0d685d7d807568a1eb8278" -> "sha256:6baff5ed003403832185869b2f605a4826ad5a4b47daca79583106bbdd21b630" [label=""];
  "sha256:6baff5ed003403832185869b2f605a4826ad5a4b47daca79583106bbdd21b630" -> "sha256:2e5296229dbfc94e6b10e7086094a343ef620ec05230f81e2015c16b729fc94f" [label=""];
  "sha256:2e5296229dbfc94e6b10e7086094a343ef620ec05230f81e2015c16b729fc94f" -> "sha256:311c492c58b3e2138f50ee65f8998870148df0c07d1fc6e0e2f25e9ade106671" [label=""];
  "sha256:311c492c58b3e2138f50ee65f8998870148df0c07d1fc6e0e2f25e9ade106671" -> "sha256:5a56c395e119272a08ff5f913c141ab7ff005b90949355c53d798d35697138fa" [label=""];
  "sha256:5a56c395e119272a08ff5f913c141ab7ff005b90949355c53d798d35697138fa" -> "sha256:92d4985956701b7a5d4a4cfe6938f4cb5586792c33758ec195ca918f42e86b60" [label=""];
  "sha256:92d4985956701b7a5d4a4cfe6938f4cb5586792c33758ec195ca918f42e86b60" -> "sha256:3394b29f77dd34294cdc66f7a3bd162e25389e06e90be32241ff9adc02d42d25" [label=""];
  "sha256:3394b29f77dd34294cdc66f7a3bd162e25389e06e90be32241ff9adc02d42d25" -> "sha256:0978d023e9adabfd60029296ac08d09ce60a908b4f1ed9408cfd13772b8fd854" [label=""];
  "sha256:0978d023e9adabfd60029296ac08d09ce60a908b4f1ed9408cfd13772b8fd854" -> "sha256:b4e741e885cb337cb1a15a75da124d2b79227975645acc22011159aed41fccaa" [label=""];
  "sha256:b4e741e885cb337cb1a15a75da124d2b79227975645acc22011159aed41fccaa" -> "sha256:f7498a5a1b3e3c531b423b14147a312fcf2731416be61ecb66ac358ab2f781b9" [label=""];
  "sha256:f7498a5a1b3e3c531b423b14147a312fcf2731416be61ecb66ac358ab2f781b9" -> "sha256:cd4f08435f0479c6311013838a0935a87f4e88926b92098ecb394e0685a47662" [label=""];
  "sha256:cd4f08435f0479c6311013838a0935a87f4e88926b92098ecb394e0685a47662" -> "sha256:1116b11e9b63cef410e4678af767bbfefd9d124d44c0b98f46575719c3aa70dc" [label=""];
  "sha256:1116b11e9b63cef410e4678af767bbfefd9d124d44c0b98f46575719c3aa70dc" -> "sha256:be3eedc695fe84a6ca30721ea457b1623d37f9b75b63057fc035f7fdb6c359ca" [label=""];
  "sha256:be3eedc695fe84a6ca30721ea457b1623d37f9b75b63057fc035f7fdb6c359ca" -> "sha256:d843ee99185cfa0561d2d0d19bf45378051125b9838aefa327f408af1c6c02c1" [label=""];
  "sha256:d843ee99185cfa0561d2d0d19bf45378051125b9838aefa327f408af1c6c02c1" -> "sha256:eeaa2f4ad9a1bf2a9beb2c76cd1f9b866bc7ddbea527c89eab532da6146c7810" [label=""];
}

