[app/sources/222585577.Dockerfile]
digraph {
  "sha256:50fd91bc8f5e702cc14b9f904b144ee97dd95547d2a716056f0c6f8c78dedf45" [label="docker-image://quay.io/enmasse/nodejs-base:10-1@sha256:dff7e36ce81bb099f8964bd19c8eba216c6f1875d569810f045ab32040b4052c" shape="ellipse"];
  "sha256:a42a92ee25279b7be833fcf3e24fbc4a970a6189a0a7e93a71f6bc50d326acfe" [label="/bin/sh -c mkdir -p /opt/app-root/src/" shape="box"];
  "sha256:f072bba83c9ce750c20f14e2f030c95a7ab8ee0a8444455bc4bd6eac98442ccc" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:755af7d32a03dcede98b9aa952404104eadac35ad0e7e2a9c6e6e7e6ce3ee36f" [label="local://context" shape="ellipse"];
  "sha256:45071c7e325b552408b76697ca4e08ac96a1f1d388ab06bd0b44b47cd5ceff08" [label="copy{src=/target/agent--dist.tar.gz, dest=/opt/app-root/src/}" shape="note"];
  "sha256:39a9de5da0d22f971e4a04f1f7f292beaf0c44519975f9c2466dcd173acf1c18" [label="sha256:39a9de5da0d22f971e4a04f1f7f292beaf0c44519975f9c2466dcd173acf1c18" shape="plaintext"];
  "sha256:50fd91bc8f5e702cc14b9f904b144ee97dd95547d2a716056f0c6f8c78dedf45" -> "sha256:a42a92ee25279b7be833fcf3e24fbc4a970a6189a0a7e93a71f6bc50d326acfe" [label=""];
  "sha256:a42a92ee25279b7be833fcf3e24fbc4a970a6189a0a7e93a71f6bc50d326acfe" -> "sha256:f072bba83c9ce750c20f14e2f030c95a7ab8ee0a8444455bc4bd6eac98442ccc" [label=""];
  "sha256:f072bba83c9ce750c20f14e2f030c95a7ab8ee0a8444455bc4bd6eac98442ccc" -> "sha256:45071c7e325b552408b76697ca4e08ac96a1f1d388ab06bd0b44b47cd5ceff08" [label=""];
  "sha256:755af7d32a03dcede98b9aa952404104eadac35ad0e7e2a9c6e6e7e6ce3ee36f" -> "sha256:45071c7e325b552408b76697ca4e08ac96a1f1d388ab06bd0b44b47cd5ceff08" [label=""];
  "sha256:45071c7e325b552408b76697ca4e08ac96a1f1d388ab06bd0b44b47cd5ceff08" -> "sha256:39a9de5da0d22f971e4a04f1f7f292beaf0c44519975f9c2466dcd173acf1c18" [label=""];
}

