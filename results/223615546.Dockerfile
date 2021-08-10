[app/sources/223615546.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:c7b68dc2e089f0992b9d558c31a57ffd03a56cd7069acd090518063669b0e248" [label="/bin/sh -c apt-get update && apt-get install -y make build-essential" shape="box"];
  "sha256:ebd01840dbab0d29aa046637fb60f2c2d0507325f29307248424ba444efdf99e" [label="/bin/sh -c git clone -b oss_fuzz --depth 1 https://github.com/aawc/unrar.git" shape="box"];
  "sha256:c590af746eeb37ce49faf193f357bc846442469fe962d07915a68c0241343af2" [label="mkdir{path=/src/unrar}" shape="note"];
  "sha256:ee793b7dd6877a03cac2c54542fdae0d59fc653c02a4823b14a4aff2d07f7d1f" [label="local://context" shape="ellipse"];
  "sha256:7826ddd656a2cbe0ff87b65d76ff25b8b61a2c93b7645e4a3b1ec3cb86509b7f" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:69d6540da90e7f3e463ef75177c5511bff05bb037540ebd7a809eec95fcb8886" [label="copy{src=/unrar_fuzzer.cc, dest=/src/unrar/}" shape="note"];
  "sha256:b8e320726d15eee72cf1b1ea39686f2af868b78abe3aded6558fc2e6ef2f27f6" [label="sha256:b8e320726d15eee72cf1b1ea39686f2af868b78abe3aded6558fc2e6ef2f27f6" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:c7b68dc2e089f0992b9d558c31a57ffd03a56cd7069acd090518063669b0e248" [label=""];
  "sha256:c7b68dc2e089f0992b9d558c31a57ffd03a56cd7069acd090518063669b0e248" -> "sha256:ebd01840dbab0d29aa046637fb60f2c2d0507325f29307248424ba444efdf99e" [label=""];
  "sha256:ebd01840dbab0d29aa046637fb60f2c2d0507325f29307248424ba444efdf99e" -> "sha256:c590af746eeb37ce49faf193f357bc846442469fe962d07915a68c0241343af2" [label=""];
  "sha256:c590af746eeb37ce49faf193f357bc846442469fe962d07915a68c0241343af2" -> "sha256:7826ddd656a2cbe0ff87b65d76ff25b8b61a2c93b7645e4a3b1ec3cb86509b7f" [label=""];
  "sha256:ee793b7dd6877a03cac2c54542fdae0d59fc653c02a4823b14a4aff2d07f7d1f" -> "sha256:7826ddd656a2cbe0ff87b65d76ff25b8b61a2c93b7645e4a3b1ec3cb86509b7f" [label=""];
  "sha256:7826ddd656a2cbe0ff87b65d76ff25b8b61a2c93b7645e4a3b1ec3cb86509b7f" -> "sha256:69d6540da90e7f3e463ef75177c5511bff05bb037540ebd7a809eec95fcb8886" [label=""];
  "sha256:ee793b7dd6877a03cac2c54542fdae0d59fc653c02a4823b14a4aff2d07f7d1f" -> "sha256:69d6540da90e7f3e463ef75177c5511bff05bb037540ebd7a809eec95fcb8886" [label=""];
  "sha256:69d6540da90e7f3e463ef75177c5511bff05bb037540ebd7a809eec95fcb8886" -> "sha256:b8e320726d15eee72cf1b1ea39686f2af868b78abe3aded6558fc2e6ef2f27f6" [label=""];
}

