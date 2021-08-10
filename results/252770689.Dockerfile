[app/sources/252770689.Dockerfile]
digraph {
  "sha256:d9b799b9e12c0817956e9e49902fea300036bbf074b39ef8e92ff900e41c5368" [label="docker-image://docker.io/fpco/stack-build:lts-7.15" shape="ellipse"];
  "sha256:9804bff2adb04cce3d3171c54fc35ea222b8e931623c7e13293ff7373f2bad22" [label="local://context" shape="ellipse"];
  "sha256:f5e70cd74aaaf8b293dc63520c172d8ea44f2ad56c80f5d32545671abf399757" [label="copy{src=/stack.yaml, dest=/cafe-duty/stack.yaml}" shape="note"];
  "sha256:73d62fa34eb5032f3ce0ecd6c50f24820648f220d1c4245fb5467880cb773635" [label="copy{src=/cafe-duty.cabal, dest=/cafe-duty/cafe-duty.cabal}" shape="note"];
  "sha256:3fbe77a7d2389d733e502e3edef8fa1469cf9b2ba3c2577e13b159bad59b6ea9" [label="mkdir{path=/cafe-duty}" shape="note"];
  "sha256:0d5eaa3524b1777d7ee7762e443faf5b9f14b364e76cb75fc4a690f9db3cff7b" [label="/bin/sh -c stack --system-ghc build --dependencies-only" shape="box"];
  "sha256:c4f1051e7c5754419498ca6f2dc5b772f7c51de8b78d4c86bbc211681598d59a" [label="copy{src=/, dest=/cafe-duty}" shape="note"];
  "sha256:2b8ea5fd6b05946a6d2825e0e79992b0101e3dee3fb793dd6fb00333ea27d3d6" [label="/bin/sh -c stack --system-ghc build" shape="box"];
  "sha256:32573291bb63b938e9738fe3c5e719be52847ff54efc2debdd208ac738a9154e" [label="sha256:32573291bb63b938e9738fe3c5e719be52847ff54efc2debdd208ac738a9154e" shape="plaintext"];
  "sha256:d9b799b9e12c0817956e9e49902fea300036bbf074b39ef8e92ff900e41c5368" -> "sha256:f5e70cd74aaaf8b293dc63520c172d8ea44f2ad56c80f5d32545671abf399757" [label=""];
  "sha256:9804bff2adb04cce3d3171c54fc35ea222b8e931623c7e13293ff7373f2bad22" -> "sha256:f5e70cd74aaaf8b293dc63520c172d8ea44f2ad56c80f5d32545671abf399757" [label=""];
  "sha256:f5e70cd74aaaf8b293dc63520c172d8ea44f2ad56c80f5d32545671abf399757" -> "sha256:73d62fa34eb5032f3ce0ecd6c50f24820648f220d1c4245fb5467880cb773635" [label=""];
  "sha256:9804bff2adb04cce3d3171c54fc35ea222b8e931623c7e13293ff7373f2bad22" -> "sha256:73d62fa34eb5032f3ce0ecd6c50f24820648f220d1c4245fb5467880cb773635" [label=""];
  "sha256:73d62fa34eb5032f3ce0ecd6c50f24820648f220d1c4245fb5467880cb773635" -> "sha256:3fbe77a7d2389d733e502e3edef8fa1469cf9b2ba3c2577e13b159bad59b6ea9" [label=""];
  "sha256:3fbe77a7d2389d733e502e3edef8fa1469cf9b2ba3c2577e13b159bad59b6ea9" -> "sha256:0d5eaa3524b1777d7ee7762e443faf5b9f14b364e76cb75fc4a690f9db3cff7b" [label=""];
  "sha256:0d5eaa3524b1777d7ee7762e443faf5b9f14b364e76cb75fc4a690f9db3cff7b" -> "sha256:c4f1051e7c5754419498ca6f2dc5b772f7c51de8b78d4c86bbc211681598d59a" [label=""];
  "sha256:9804bff2adb04cce3d3171c54fc35ea222b8e931623c7e13293ff7373f2bad22" -> "sha256:c4f1051e7c5754419498ca6f2dc5b772f7c51de8b78d4c86bbc211681598d59a" [label=""];
  "sha256:c4f1051e7c5754419498ca6f2dc5b772f7c51de8b78d4c86bbc211681598d59a" -> "sha256:2b8ea5fd6b05946a6d2825e0e79992b0101e3dee3fb793dd6fb00333ea27d3d6" [label=""];
  "sha256:2b8ea5fd6b05946a6d2825e0e79992b0101e3dee3fb793dd6fb00333ea27d3d6" -> "sha256:32573291bb63b938e9738fe3c5e719be52847ff54efc2debdd208ac738a9154e" [label=""];
}

