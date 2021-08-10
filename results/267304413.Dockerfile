[app/sources/267304413.Dockerfile]
digraph {
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" [label="docker-image://docker.io/library/centos:7.3.1611" shape="ellipse"];
  "sha256:aaf00a40840839ee896730a70f072387016d1794aaafaf3af96a511663632947" [label="local://context" shape="ellipse"];
  "sha256:1012120e6798e60ca82a857b8bdb51e76fa81a50c3b2cfb71ea4d7b6dc0d5c52" [label="copy{src=/, dest=/vpp}" shape="note"];
  "sha256:41503a79176ba087488ca80c9527d439f63e96bb7eeeeaad9eb18a313c3d4cc2" [label="mkdir{path=/vpp}" shape="note"];
  "sha256:87afa4830ac6aeca1d0a37537dc6a63692a8efc3d9014875365a060d0355e526" [label="/bin/sh -c curl -s https://packagecloud.io/install/repositories/fdio/${REPO}/script.rpm.sh |  bash" shape="box"];
  "sha256:b79425892ab32cb168662aa81b0fb04dd86f16190ce54a337b5f9c2f279ac251" [label="/bin/sh -c yum install -y vpp-dpdk-devel make sudo" shape="box"];
  "sha256:aa8bc961d636cf5b49784de5121a0bc5d6d40162cba62bb9ca9561e9034623ea" [label="/bin/sh -c UNATTENDED=y make install-dep" shape="box"];
  "sha256:6550f853e93e8baed392dec00fada7ac7f0ca079237a48c390a27b830c2c86bc" [label="/bin/sh -c make pkg-rpm" shape="box"];
  "sha256:49eff46378a9e1e2b1b40f8db26755d21a1d9ad23b6bbc4e4538364dfe4d17e8" [label="sha256:49eff46378a9e1e2b1b40f8db26755d21a1d9ad23b6bbc4e4538364dfe4d17e8" shape="plaintext"];
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" -> "sha256:1012120e6798e60ca82a857b8bdb51e76fa81a50c3b2cfb71ea4d7b6dc0d5c52" [label=""];
  "sha256:aaf00a40840839ee896730a70f072387016d1794aaafaf3af96a511663632947" -> "sha256:1012120e6798e60ca82a857b8bdb51e76fa81a50c3b2cfb71ea4d7b6dc0d5c52" [label=""];
  "sha256:1012120e6798e60ca82a857b8bdb51e76fa81a50c3b2cfb71ea4d7b6dc0d5c52" -> "sha256:41503a79176ba087488ca80c9527d439f63e96bb7eeeeaad9eb18a313c3d4cc2" [label=""];
  "sha256:41503a79176ba087488ca80c9527d439f63e96bb7eeeeaad9eb18a313c3d4cc2" -> "sha256:87afa4830ac6aeca1d0a37537dc6a63692a8efc3d9014875365a060d0355e526" [label=""];
  "sha256:87afa4830ac6aeca1d0a37537dc6a63692a8efc3d9014875365a060d0355e526" -> "sha256:b79425892ab32cb168662aa81b0fb04dd86f16190ce54a337b5f9c2f279ac251" [label=""];
  "sha256:b79425892ab32cb168662aa81b0fb04dd86f16190ce54a337b5f9c2f279ac251" -> "sha256:aa8bc961d636cf5b49784de5121a0bc5d6d40162cba62bb9ca9561e9034623ea" [label=""];
  "sha256:aa8bc961d636cf5b49784de5121a0bc5d6d40162cba62bb9ca9561e9034623ea" -> "sha256:6550f853e93e8baed392dec00fada7ac7f0ca079237a48c390a27b830c2c86bc" [label=""];
  "sha256:6550f853e93e8baed392dec00fada7ac7f0ca079237a48c390a27b830c2c86bc" -> "sha256:49eff46378a9e1e2b1b40f8db26755d21a1d9ad23b6bbc4e4538364dfe4d17e8" [label=""];
}

