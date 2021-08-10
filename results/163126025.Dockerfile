[app/sources/163126025.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:9a06c94c1b5471385ce12d88201f4111b9a0d7e166af20141c495ae234cc42cd" [label="/bin/sh -c dnf -y install \t\twget \t\tmake \t\tpkgconf-pkg-config \t\tautoconf \t\tgcc-c++ \t\tlibtool \t\tzlib-devel \t\tbzip2-devel \t\topenssl-devel \t\tlibarchive-devel \t\tpcre-devel \t\tlibuuid-devel \t\tpoppler-utils \t\tpython-nose" shape="box"];
  "sha256:b23c214ee4bf17030447ac1dd8fe1e4ade46053257c5e4284a25a7e66406628a" [label="/bin/sh -c wget -O /tmp/v3.7.0.tar.gz https://github.com/VirusTotal/yara/archive/v3.7.0.tar.gz && \tcd /tmp && \ttar xfz v3.7.0.tar.gz && \tcd yara-3.7.0 && \t./bootstrap.sh && \t./configure --prefix=/usr && \tmake && make install && \trm -rf v3.7.0*" shape="box"];
  "sha256:2b29aa8241c8b47913e405e7778d03268b674fd88087936962afedcf7576bbbe" [label="/bin/sh -c groupadd -g $gid $user && \tuseradd -u $uid -g $gid $user" shape="box"];
  "sha256:0cc391b7bfb000a5114fb0b8ff8ceef6f3aa08ce98b97ecdad02322b942abe00" [label="sha256:0cc391b7bfb000a5114fb0b8ff8ceef6f3aa08ce98b97ecdad02322b942abe00" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:9a06c94c1b5471385ce12d88201f4111b9a0d7e166af20141c495ae234cc42cd" [label=""];
  "sha256:9a06c94c1b5471385ce12d88201f4111b9a0d7e166af20141c495ae234cc42cd" -> "sha256:b23c214ee4bf17030447ac1dd8fe1e4ade46053257c5e4284a25a7e66406628a" [label=""];
  "sha256:b23c214ee4bf17030447ac1dd8fe1e4ade46053257c5e4284a25a7e66406628a" -> "sha256:2b29aa8241c8b47913e405e7778d03268b674fd88087936962afedcf7576bbbe" [label=""];
  "sha256:2b29aa8241c8b47913e405e7778d03268b674fd88087936962afedcf7576bbbe" -> "sha256:0cc391b7bfb000a5114fb0b8ff8ceef6f3aa08ce98b97ecdad02322b942abe00" [label=""];
}

