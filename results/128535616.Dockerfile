[app/sources/128535616.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   g++-powerpc-linux-gnuspe   libssl-dev   pkg-config" shape="box"];
  "sha256:9343594e17c0097395c8007839fe06cfb30d6ab6eb0586c0f0c013fb48561d17" [label="local://context" shape="ellipse"];
  "sha256:a8d051d07d66885b17a9f38d24796e2d7e19c7bc5c62b383468d910b4eda093d" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:4c9027321ecca33af5ddb94d3f0fd3845b7861a24a39cd283390265e2abceb10" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:79b9bbf85d64f33ed5c88163f6fce05dcda467f480887b8ce7a698d2bb8383b5" [label="sha256:79b9bbf85d64f33ed5c88163f6fce05dcda467f480887b8ce7a698d2bb8383b5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" [label=""];
  "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" -> "sha256:a8d051d07d66885b17a9f38d24796e2d7e19c7bc5c62b383468d910b4eda093d" [label=""];
  "sha256:9343594e17c0097395c8007839fe06cfb30d6ab6eb0586c0f0c013fb48561d17" -> "sha256:a8d051d07d66885b17a9f38d24796e2d7e19c7bc5c62b383468d910b4eda093d" [label=""];
  "sha256:a8d051d07d66885b17a9f38d24796e2d7e19c7bc5c62b383468d910b4eda093d" -> "sha256:4c9027321ecca33af5ddb94d3f0fd3845b7861a24a39cd283390265e2abceb10" [label=""];
  "sha256:4c9027321ecca33af5ddb94d3f0fd3845b7861a24a39cd283390265e2abceb10" -> "sha256:79b9bbf85d64f33ed5c88163f6fce05dcda467f480887b8ce7a698d2bb8383b5" [label=""];
}

