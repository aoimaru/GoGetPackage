[app/sources/130376492.Dockerfile]
digraph {
  "sha256:b7e0622b0d96ae1def7664f15d752c3d12df69968bea7a37165083bcbb90e3b0" [label="local://context" shape="ellipse"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:3514a6cfee27119d0c59fe56dcefdb8f3d21ddd8871754e8b45d8de2b6655286" [label="yum install -y epel-release" shape="box"];
  "sha256:3ebd7119ba38cd1e2b1e9fb1a13ffca189b00fee16aed121bc24626657b6448f" [label="yum install -y rsync bridge-utils qemu-kvm qemu-system-x86 parted sudo openssh-clients nc git which file" shape="box"];
  "sha256:db385917a2899460229552520bfd0bd3f21e50cf53dc69257f9937661fa0a60a" [label="/bin/sh -c mkdir /var/tmp/openvnet" shape="box"];
  "sha256:62648a570ed8418261b6d7df8de50243d7bb87b2485bc5b32b3f9fc830af6d22" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB" shape="box"];
  "sha256:1338581da13b76a6a397cf7d13457f299a496c5be91d1c5ffa091c02dd7cad45" [label="/bin/sh -c curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:50fe05841f3a092436c97124cf44a988491438245a208a67881e11d1df3e6018" [label="/bin/sh -c rvm install 2.3.0" shape="box"];
  "sha256:b5804be1c41368cd31a5e06eae6d1d316bc2a4b295f15634fb1f1fecdf6f7201" [label="mkdir{path=/var/tmp/openvnet}" shape="note"];
  "sha256:aa2e2bd2477070b5f6e450e722b63641793e595e111fc57756e37d1c9a5daeb5" [label="copy{src=/, dest=/var/tmp/openvnet}" shape="note"];
  "sha256:f76951d12444dca34b857c449f27ae5fbf51c0f0567b5ab079a42eeb14ef522a" [label="sha256:f76951d12444dca34b857c449f27ae5fbf51c0f0567b5ab079a42eeb14ef522a" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:3514a6cfee27119d0c59fe56dcefdb8f3d21ddd8871754e8b45d8de2b6655286" [label=""];
  "sha256:3514a6cfee27119d0c59fe56dcefdb8f3d21ddd8871754e8b45d8de2b6655286" -> "sha256:3ebd7119ba38cd1e2b1e9fb1a13ffca189b00fee16aed121bc24626657b6448f" [label=""];
  "sha256:3ebd7119ba38cd1e2b1e9fb1a13ffca189b00fee16aed121bc24626657b6448f" -> "sha256:db385917a2899460229552520bfd0bd3f21e50cf53dc69257f9937661fa0a60a" [label=""];
  "sha256:db385917a2899460229552520bfd0bd3f21e50cf53dc69257f9937661fa0a60a" -> "sha256:62648a570ed8418261b6d7df8de50243d7bb87b2485bc5b32b3f9fc830af6d22" [label=""];
  "sha256:62648a570ed8418261b6d7df8de50243d7bb87b2485bc5b32b3f9fc830af6d22" -> "sha256:1338581da13b76a6a397cf7d13457f299a496c5be91d1c5ffa091c02dd7cad45" [label=""];
  "sha256:1338581da13b76a6a397cf7d13457f299a496c5be91d1c5ffa091c02dd7cad45" -> "sha256:50fe05841f3a092436c97124cf44a988491438245a208a67881e11d1df3e6018" [label=""];
  "sha256:50fe05841f3a092436c97124cf44a988491438245a208a67881e11d1df3e6018" -> "sha256:b5804be1c41368cd31a5e06eae6d1d316bc2a4b295f15634fb1f1fecdf6f7201" [label=""];
  "sha256:b5804be1c41368cd31a5e06eae6d1d316bc2a4b295f15634fb1f1fecdf6f7201" -> "sha256:aa2e2bd2477070b5f6e450e722b63641793e595e111fc57756e37d1c9a5daeb5" [label=""];
  "sha256:b7e0622b0d96ae1def7664f15d752c3d12df69968bea7a37165083bcbb90e3b0" -> "sha256:aa2e2bd2477070b5f6e450e722b63641793e595e111fc57756e37d1c9a5daeb5" [label=""];
  "sha256:aa2e2bd2477070b5f6e450e722b63641793e595e111fc57756e37d1c9a5daeb5" -> "sha256:f76951d12444dca34b857c449f27ae5fbf51c0f0567b5ab079a42eeb14ef522a" [label=""];
}

