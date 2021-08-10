[app/sources/358705488.Dockerfile]
digraph {
  "sha256:ec843bc35ed61a393a9808a3a5666dc810394f05a9629bc23970a585aa8b21ee" [label="local://context" shape="ellipse"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:89ecec2577f8d23857c967e003d4204dd34e770fa6d7939142638168f2328e99" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:c80cbb8650dd812466160f4bf3146efb7f3a74e0c425ec19e82e709f1918fc50" [label="/bin/sh -c yum -y install       automake       curl       cmake       openssl-devel       file       gcc       gcc-c++       git       kernel-devel       libtool       make       patch       python       python-devel       python-setuptools       zip       unzip       wget       which" shape="box"];
  "sha256:40f15b83e32691286918b9150f4c010c64da67aaddb091d085bb287350129f05" [label="/bin/sh -c yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel" shape="box"];
  "sha256:27cbca0ce0ec805ab2b29a6c95e88f295f0a7c7fdb9d4cfc742472d59f897832" [label="/bin/sh -c wget -O /tmp/bazel.sh https://github.com/bazelbuild/bazel/releases/download/$bazelVersion/bazel-$bazelVersion-installer-linux-x86_64.sh       && chmod +x /tmp/bazel.sh       && /tmp/bazel.sh" shape="box"];
  "sha256:2e160f185cb7fff257c6348d55e13345a7fb7567fa887b92cf5de90fe538e8ab" [label="copy{src=/bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:ec5a2181b6b3f0630c3e283c4c3c7844f6ad50ad037127829679e3183544c147" [label="copy{src=/scripts/compile-platform.sh, dest=/compile-platform.sh}" shape="note"];
  "sha256:e2f03ed2c9761cefddd76b7051cac5e6f8b14f3c77cca43b4b4835941bde9b50" [label="sha256:e2f03ed2c9761cefddd76b7051cac5e6f8b14f3c77cca43b4b4835941bde9b50" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:89ecec2577f8d23857c967e003d4204dd34e770fa6d7939142638168f2328e99" [label=""];
  "sha256:89ecec2577f8d23857c967e003d4204dd34e770fa6d7939142638168f2328e99" -> "sha256:c80cbb8650dd812466160f4bf3146efb7f3a74e0c425ec19e82e709f1918fc50" [label=""];
  "sha256:c80cbb8650dd812466160f4bf3146efb7f3a74e0c425ec19e82e709f1918fc50" -> "sha256:40f15b83e32691286918b9150f4c010c64da67aaddb091d085bb287350129f05" [label=""];
  "sha256:40f15b83e32691286918b9150f4c010c64da67aaddb091d085bb287350129f05" -> "sha256:27cbca0ce0ec805ab2b29a6c95e88f295f0a7c7fdb9d4cfc742472d59f897832" [label=""];
  "sha256:27cbca0ce0ec805ab2b29a6c95e88f295f0a7c7fdb9d4cfc742472d59f897832" -> "sha256:2e160f185cb7fff257c6348d55e13345a7fb7567fa887b92cf5de90fe538e8ab" [label=""];
  "sha256:ec843bc35ed61a393a9808a3a5666dc810394f05a9629bc23970a585aa8b21ee" -> "sha256:2e160f185cb7fff257c6348d55e13345a7fb7567fa887b92cf5de90fe538e8ab" [label=""];
  "sha256:2e160f185cb7fff257c6348d55e13345a7fb7567fa887b92cf5de90fe538e8ab" -> "sha256:ec5a2181b6b3f0630c3e283c4c3c7844f6ad50ad037127829679e3183544c147" [label=""];
  "sha256:ec843bc35ed61a393a9808a3a5666dc810394f05a9629bc23970a585aa8b21ee" -> "sha256:ec5a2181b6b3f0630c3e283c4c3c7844f6ad50ad037127829679e3183544c147" [label=""];
  "sha256:ec5a2181b6b3f0630c3e283c4c3c7844f6ad50ad037127829679e3183544c147" -> "sha256:e2f03ed2c9761cefddd76b7051cac5e6f8b14f3c77cca43b4b4835941bde9b50" [label=""];
}

