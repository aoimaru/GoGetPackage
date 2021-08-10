[app/sources/140141299.Dockerfile]
digraph {
  "sha256:b75244267b99ef35587988a48539f3f8caa72a117778da90229c97319fe6c0e8" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:fe685f05441fb67883755f67f33c24f620a0eeef098e01f2128f3a48c6d2b8f4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   g++-mips64el-linux-gnuabi64   libssl-dev   pkg-config" shape="box"];
  "sha256:a75dd81fedf04825e3c3d65ef2de0f0dc8bc8203aa3302d92013c50928f42747" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:048bc13a63225457c26a019e08acd00126d86ca9bc34e0b828e4d3f29ea7e716" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:c355584f82a02f0b75020ea4a444da54abd8511ac7eaf17a56a16c0b70c2686e" [label="sha256:c355584f82a02f0b75020ea4a444da54abd8511ac7eaf17a56a16c0b70c2686e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:fe685f05441fb67883755f67f33c24f620a0eeef098e01f2128f3a48c6d2b8f4" [label=""];
  "sha256:fe685f05441fb67883755f67f33c24f620a0eeef098e01f2128f3a48c6d2b8f4" -> "sha256:a75dd81fedf04825e3c3d65ef2de0f0dc8bc8203aa3302d92013c50928f42747" [label=""];
  "sha256:b75244267b99ef35587988a48539f3f8caa72a117778da90229c97319fe6c0e8" -> "sha256:a75dd81fedf04825e3c3d65ef2de0f0dc8bc8203aa3302d92013c50928f42747" [label=""];
  "sha256:a75dd81fedf04825e3c3d65ef2de0f0dc8bc8203aa3302d92013c50928f42747" -> "sha256:048bc13a63225457c26a019e08acd00126d86ca9bc34e0b828e4d3f29ea7e716" [label=""];
  "sha256:048bc13a63225457c26a019e08acd00126d86ca9bc34e0b828e4d3f29ea7e716" -> "sha256:c355584f82a02f0b75020ea4a444da54abd8511ac7eaf17a56a16c0b70c2686e" [label=""];
}

