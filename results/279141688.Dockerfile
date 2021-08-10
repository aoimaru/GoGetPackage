[app/sources/279141688.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:e9904698a7d179eb623db74d7182789024df5c2aa0fc8cd29e9a8863e60fab3b" [label="local://context" shape="ellipse"];
  "sha256:ce06e034c642305a9678947a2881628316b91fa18dfd8147884090e49186fef2" [label="copy{src=/neo, dest=/root/neo}" shape="note"];
  "sha256:1ee41a725510241f25636d4d0bf6d0051b24816b4ce2b063cb1fc760d0926f7a" [label="/bin/sh -c dnf install -y gcc-c++ cmake ninja-build git pkg-config;     dnf install -y 'dnf-command(copr)';     dnf copr enable -y arturh/intel-opencl-staging;     dnf copr enable -y arturh/intel-opencl-experimental;     dnf copr enable -y arturh/intel-opencl-unstable;     dnf copr enable -y arturh/intel-opencl;     dnf --showduplicate list intel-igc-opencl-devel intel-gmmlib-devel;     dnf install -y intel-igc-opencl-devel intel-gmmlib-devel;     mkdir /root/build; cd /root/build ; cmake -G Ninja     -DDO_NOT_RUN_AUB_TESTS=1 -DDONT_CARE_OF_VIRTUALS=1 ../neo;     ninja -j `nproc`" shape="box"];
  "sha256:0105151e121b241a626c9c367cc1825c50b8f762eacced7ae046dd339c7381d1" [label="sha256:0105151e121b241a626c9c367cc1825c50b8f762eacced7ae046dd339c7381d1" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:ce06e034c642305a9678947a2881628316b91fa18dfd8147884090e49186fef2" [label=""];
  "sha256:e9904698a7d179eb623db74d7182789024df5c2aa0fc8cd29e9a8863e60fab3b" -> "sha256:ce06e034c642305a9678947a2881628316b91fa18dfd8147884090e49186fef2" [label=""];
  "sha256:ce06e034c642305a9678947a2881628316b91fa18dfd8147884090e49186fef2" -> "sha256:1ee41a725510241f25636d4d0bf6d0051b24816b4ce2b063cb1fc760d0926f7a" [label=""];
  "sha256:1ee41a725510241f25636d4d0bf6d0051b24816b4ce2b063cb1fc760d0926f7a" -> "sha256:0105151e121b241a626c9c367cc1825c50b8f762eacced7ae046dd339c7381d1" [label=""];
}

