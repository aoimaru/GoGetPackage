[app/sources/223615352.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:bd0156835266c1fe26e6dbc72e444137a3e01c82237dfd8a7178ccf400d06bf4" [label="/bin/sh -c apt-get update && apt-get install -y make mercurial zlib1g-dev gyp ninja-build libssl-dev" shape="box"];
  "sha256:1056b16f5b0d5c016ab6f3d8e31f650f79ba2a380ec68d5749c29262f7b2d570" [label="/bin/sh -c hg clone https://hg.mozilla.org/projects/nspr nspr" shape="box"];
  "sha256:55ddbcdbf9f46f8ad089921db8e7c0da87c98f4d4508c2d4cf56b6a4cb9846bb" [label="/bin/sh -c hg clone https://hg.mozilla.org/projects/nss nss" shape="box"];
  "sha256:27cc38a01b7f34711142012fb76e3c7b63e844d6abad155aaaf4bcea6882826c" [label="/bin/sh -c git clone --depth 1 https://github.com/mozilla/nss-fuzzing-corpus.git nss-corpus" shape="box"];
  "sha256:63e80893006fd1e0249fe26554519f4c8ba389078859aa00862bf5869eac5cb4" [label="mkdir{path=/src/nss}" shape="note"];
  "sha256:181e1fcd8055eba8166fe43af171038dcd34d3a61ef5c57395a2b4ac4e84e727" [label="local://context" shape="ellipse"];
  "sha256:ee1b1b62dde7915aba4c6d5bf46282cfc5312f8637db64f092caf3ed9c0f7427" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:80db92a7359e397f1f5e6616e4e9aed1492a5a77c8ef755df7bfd6f6116bc5dd" [label="sha256:80db92a7359e397f1f5e6616e4e9aed1492a5a77c8ef755df7bfd6f6116bc5dd" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:bd0156835266c1fe26e6dbc72e444137a3e01c82237dfd8a7178ccf400d06bf4" [label=""];
  "sha256:bd0156835266c1fe26e6dbc72e444137a3e01c82237dfd8a7178ccf400d06bf4" -> "sha256:1056b16f5b0d5c016ab6f3d8e31f650f79ba2a380ec68d5749c29262f7b2d570" [label=""];
  "sha256:1056b16f5b0d5c016ab6f3d8e31f650f79ba2a380ec68d5749c29262f7b2d570" -> "sha256:55ddbcdbf9f46f8ad089921db8e7c0da87c98f4d4508c2d4cf56b6a4cb9846bb" [label=""];
  "sha256:55ddbcdbf9f46f8ad089921db8e7c0da87c98f4d4508c2d4cf56b6a4cb9846bb" -> "sha256:27cc38a01b7f34711142012fb76e3c7b63e844d6abad155aaaf4bcea6882826c" [label=""];
  "sha256:27cc38a01b7f34711142012fb76e3c7b63e844d6abad155aaaf4bcea6882826c" -> "sha256:63e80893006fd1e0249fe26554519f4c8ba389078859aa00862bf5869eac5cb4" [label=""];
  "sha256:63e80893006fd1e0249fe26554519f4c8ba389078859aa00862bf5869eac5cb4" -> "sha256:ee1b1b62dde7915aba4c6d5bf46282cfc5312f8637db64f092caf3ed9c0f7427" [label=""];
  "sha256:181e1fcd8055eba8166fe43af171038dcd34d3a61ef5c57395a2b4ac4e84e727" -> "sha256:ee1b1b62dde7915aba4c6d5bf46282cfc5312f8637db64f092caf3ed9c0f7427" [label=""];
  "sha256:ee1b1b62dde7915aba4c6d5bf46282cfc5312f8637db64f092caf3ed9c0f7427" -> "sha256:80db92a7359e397f1f5e6616e4e9aed1492a5a77c8ef755df7bfd6f6116bc5dd" [label=""];
}

