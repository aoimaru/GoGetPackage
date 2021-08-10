[app/sources/223615330.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:a10bf2ad10af89ed21e3159ee8114df6e386829aab2b89b56aac87658b358b7c" [label="/bin/sh -c apt-get update && apt-get install -y make autoconf automake libtool xsltproc libncursesw5-dev libtinfo5 libxml2-dev libxml2-utils libidn11-dev" shape="box"];
  "sha256:efb8ca35bb32add9a47e32b17cb0c494fb81a2e185b5a31cf4f46463455f52c3" [label="/bin/sh -c git clone https://github.com/neomutt/neomutt neomutt" shape="box"];
  "sha256:a3ee098b89ffd9d31f2e28172ac8d743ae740b87b00b401c13338b0fa2843861" [label="mkdir{path=/src/neomutt}" shape="note"];
  "sha256:27b7f5fea4ce07a1005dda79e820fc75c61b52f39fe61405d8b7eb381adb66f6" [label="local://context" shape="ellipse"];
  "sha256:15aedbc33c875ce730eb760439f9a1d6b2dbd4e64ad667ac38d3e37a0e990875" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:f72969601bbeb35b629c0892803a1f737c81fbed44c8877071c6a88e8e5ba62b" [label="sha256:f72969601bbeb35b629c0892803a1f737c81fbed44c8877071c6a88e8e5ba62b" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:a10bf2ad10af89ed21e3159ee8114df6e386829aab2b89b56aac87658b358b7c" [label=""];
  "sha256:a10bf2ad10af89ed21e3159ee8114df6e386829aab2b89b56aac87658b358b7c" -> "sha256:efb8ca35bb32add9a47e32b17cb0c494fb81a2e185b5a31cf4f46463455f52c3" [label=""];
  "sha256:efb8ca35bb32add9a47e32b17cb0c494fb81a2e185b5a31cf4f46463455f52c3" -> "sha256:a3ee098b89ffd9d31f2e28172ac8d743ae740b87b00b401c13338b0fa2843861" [label=""];
  "sha256:a3ee098b89ffd9d31f2e28172ac8d743ae740b87b00b401c13338b0fa2843861" -> "sha256:15aedbc33c875ce730eb760439f9a1d6b2dbd4e64ad667ac38d3e37a0e990875" [label=""];
  "sha256:27b7f5fea4ce07a1005dda79e820fc75c61b52f39fe61405d8b7eb381adb66f6" -> "sha256:15aedbc33c875ce730eb760439f9a1d6b2dbd4e64ad667ac38d3e37a0e990875" [label=""];
  "sha256:15aedbc33c875ce730eb760439f9a1d6b2dbd4e64ad667ac38d3e37a0e990875" -> "sha256:f72969601bbeb35b629c0892803a1f737c81fbed44c8877071c6a88e8e5ba62b" [label=""];
}

