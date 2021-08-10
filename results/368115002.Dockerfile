[app/sources/368115002.Dockerfile]
digraph {
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:e6f15d6dbf6b08b85eb2a7538914369e6ef17e5ade2f13ec90db1be89e32019d" [label="/bin/sh -c dnf update -q -y --setopt=deltarpm=false &&     dnf install -q -y --setopt=deltarpm=false         clang         coq         gcc         gdb         glibc-devel.x86_64         glibc-devel.i686         gmp-devel.x86_64         gmp-devel.i686         gtk3-devel         java-1.8.0-openjdk-devel         kernel         kernel-devel         libmnl-devel.x86_64         libmnl-devel.i686         make         mingw32-gcc         mingw64-gcc         numpy         openssh         openssl         pkgconfig         pulseaudio-libs-devel         python3         python3-cffi         python3-crypto         python3-devel         python3-gmpy2         python3-numpy         python-argparse         python-cffi         python-crypto         python-devel         python-gmpy2         redhat-rpm-config         SDL2-devel         which         wine &&     dnf clean all" shape="box"];
  "sha256:3f8cfa3e074449cf4359f6f98fc322ddd29e9234720e72a50bc0cfb3e745c3ba" [label="mkdir{path=/shared}" shape="note"];
  "sha256:2f169698373f8de16ec9e7816d38650073f5fcf7e8db17ff5b03b35346698de3" [label="/bin/sh -c ln -s shared/machines/run_shared_test.sh /run_shared_test.sh" shape="box"];
  "sha256:27a9c45fd6ba8e32876e0a0044d43a0b093acccd03ada34f7f8d6af016395c31" [label="local://context" shape="ellipse"];
  "sha256:8cc613cc13f5f70e6053a0517ee27fe2f3a2760fd483dac542ed90dfeea7e33e" [label="copy{src=/, dest=/shared/}" shape="note"];
  "sha256:87dfbde3cc2bbbe3320085519c9ceb3c44a222f5890e49910059481c4611f55f" [label="sha256:87dfbde3cc2bbbe3320085519c9ceb3c44a222f5890e49910059481c4611f55f" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:e6f15d6dbf6b08b85eb2a7538914369e6ef17e5ade2f13ec90db1be89e32019d" [label=""];
  "sha256:e6f15d6dbf6b08b85eb2a7538914369e6ef17e5ade2f13ec90db1be89e32019d" -> "sha256:3f8cfa3e074449cf4359f6f98fc322ddd29e9234720e72a50bc0cfb3e745c3ba" [label=""];
  "sha256:3f8cfa3e074449cf4359f6f98fc322ddd29e9234720e72a50bc0cfb3e745c3ba" -> "sha256:2f169698373f8de16ec9e7816d38650073f5fcf7e8db17ff5b03b35346698de3" [label=""];
  "sha256:2f169698373f8de16ec9e7816d38650073f5fcf7e8db17ff5b03b35346698de3" -> "sha256:8cc613cc13f5f70e6053a0517ee27fe2f3a2760fd483dac542ed90dfeea7e33e" [label=""];
  "sha256:27a9c45fd6ba8e32876e0a0044d43a0b093acccd03ada34f7f8d6af016395c31" -> "sha256:8cc613cc13f5f70e6053a0517ee27fe2f3a2760fd483dac542ed90dfeea7e33e" [label=""];
  "sha256:8cc613cc13f5f70e6053a0517ee27fe2f3a2760fd483dac542ed90dfeea7e33e" -> "sha256:87dfbde3cc2bbbe3320085519c9ceb3c44a222f5890e49910059481c4611f55f" [label=""];
}

