[app/sources/134998570.Dockerfile]
digraph {
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" [label="docker-image://docker.io/library/fedora:22" shape="ellipse"];
  "sha256:7f6b1a4394869166b1c3c8a02110eee85c38a5cbc895d00d40e6eceb3e894fe5" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:b5fd6502072c441ed8b5769fcbc691d39c23f182ab7ce8d6b75a431f7dc8369a" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git" shape="box"];
  "sha256:129811148c7386d5592b5967ea0a49a8f75e2f3f99c619becf0156dcfbafbbef" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:33dd3e6f2a7a96f51d79176ecd6509e8017a9c65809d6c13f2dc19b484ca3177" [label="sha256:33dd3e6f2a7a96f51d79176ecd6509e8017a9c65809d6c13f2dc19b484ca3177" shape="plaintext"];
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" -> "sha256:7f6b1a4394869166b1c3c8a02110eee85c38a5cbc895d00d40e6eceb3e894fe5" [label=""];
  "sha256:7f6b1a4394869166b1c3c8a02110eee85c38a5cbc895d00d40e6eceb3e894fe5" -> "sha256:b5fd6502072c441ed8b5769fcbc691d39c23f182ab7ce8d6b75a431f7dc8369a" [label=""];
  "sha256:b5fd6502072c441ed8b5769fcbc691d39c23f182ab7ce8d6b75a431f7dc8369a" -> "sha256:129811148c7386d5592b5967ea0a49a8f75e2f3f99c619becf0156dcfbafbbef" [label=""];
  "sha256:129811148c7386d5592b5967ea0a49a8f75e2f3f99c619becf0156dcfbafbbef" -> "sha256:33dd3e6f2a7a96f51d79176ecd6509e8017a9c65809d6c13f2dc19b484ca3177" [label=""];
}

