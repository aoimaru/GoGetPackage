[app/sources/192425725.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:f5248b34e2f91af0c7c088e4e8b0168d8e590bc068caf51be3639612fd3c3c9b" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:ec5f8972ef92e0c9987fcb892b1a190bfc8a251aef0ef5b030cc0f2a754c553b" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:cdd0ca1c4f6df2a1c45c469e82f068ba43c8fb2cb7bde0c86a5f512667fea639" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:b6ff0810197a207f916eeb2b6230d39a88c592f541f8d1644d0a7059774d4bb0" [label="local://context" shape="ellipse"];
  "sha256:d8a35aa3a9543cba6d32f7e764250e61d9817761cb9f2a7e18899ce88c6eca17" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:56cec113abd5f0c933305503877307e9d08d0c796b50d2d6d0692c0720e67ebb" [label="sha256:56cec113abd5f0c933305503877307e9d08d0c796b50d2d6d0692c0720e67ebb" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:f5248b34e2f91af0c7c088e4e8b0168d8e590bc068caf51be3639612fd3c3c9b" [label=""];
  "sha256:f5248b34e2f91af0c7c088e4e8b0168d8e590bc068caf51be3639612fd3c3c9b" -> "sha256:ec5f8972ef92e0c9987fcb892b1a190bfc8a251aef0ef5b030cc0f2a754c553b" [label=""];
  "sha256:ec5f8972ef92e0c9987fcb892b1a190bfc8a251aef0ef5b030cc0f2a754c553b" -> "sha256:cdd0ca1c4f6df2a1c45c469e82f068ba43c8fb2cb7bde0c86a5f512667fea639" [label=""];
  "sha256:cdd0ca1c4f6df2a1c45c469e82f068ba43c8fb2cb7bde0c86a5f512667fea639" -> "sha256:d8a35aa3a9543cba6d32f7e764250e61d9817761cb9f2a7e18899ce88c6eca17" [label=""];
  "sha256:b6ff0810197a207f916eeb2b6230d39a88c592f541f8d1644d0a7059774d4bb0" -> "sha256:d8a35aa3a9543cba6d32f7e764250e61d9817761cb9f2a7e18899ce88c6eca17" [label=""];
  "sha256:d8a35aa3a9543cba6d32f7e764250e61d9817761cb9f2a7e18899ce88c6eca17" -> "sha256:56cec113abd5f0c933305503877307e9d08d0c796b50d2d6d0692c0720e67ebb" [label=""];
}

