[app/sources/276646521.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:6828502c712f89fb7e495ad8a8b14a0ea462f55a2ca89a95cb632e6efa7fd781" [label="/bin/sh -c rpm -Uvh https://download.ceph.com/rpm-$CEPH_VERSION/el7/noarch/ceph-release-1-1.el7.noarch.rpm &&   yum install -y epel-release &&   yum install -y --nogpgcheck ceph-common &&   yum clean all" shape="box"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:0bfa44569a53040fa4fa01dca4559570071e8c4f47635925ceb251fe807d4fea" [label="local://context" shape="ellipse"];
  "sha256:b8109a644ac4c7b0bc24a0d15927bfcc11681bd332c8010eca8b2dba815427fa" [label="copy{src=/, dest=/go/src/github.com/kubernetes-incubator/external-storage}" shape="note"];
  "sha256:8314498fa540ac662142a6751198178fba9463a7a15c35f5f186335146dceca6" [label="mkdir{path=/go/src/github.com/kubernetes-incubator/external-storage/ceph/rbd/cmd/rbd-provisioner}" shape="note"];
  "sha256:15ea2477926742fc6b579a64dc2713dd01ea823f856dfa452a98cdf435b3d543" [label="/bin/sh -c go build -a -ldflags '-extldflags \"-static\"' -o /go/bin/rbd-provisioner main.go" shape="box"];
  "sha256:6f9301c903cba01c631ef065c25f57d60171dbf7b90db7e9d3cb615c6c80c90c" [label="copy{src=/go/bin/rbd-provisioner, dest=/usr/local/bin/rbd-provisioner}" shape="note"];
  "sha256:3c6ba8b21565e44d87f68d1f98136f2504cb53fbdaee26d9f0df8833af32435b" [label="sha256:3c6ba8b21565e44d87f68d1f98136f2504cb53fbdaee26d9f0df8833af32435b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:6828502c712f89fb7e495ad8a8b14a0ea462f55a2ca89a95cb632e6efa7fd781" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:b8109a644ac4c7b0bc24a0d15927bfcc11681bd332c8010eca8b2dba815427fa" [label=""];
  "sha256:0bfa44569a53040fa4fa01dca4559570071e8c4f47635925ceb251fe807d4fea" -> "sha256:b8109a644ac4c7b0bc24a0d15927bfcc11681bd332c8010eca8b2dba815427fa" [label=""];
  "sha256:b8109a644ac4c7b0bc24a0d15927bfcc11681bd332c8010eca8b2dba815427fa" -> "sha256:8314498fa540ac662142a6751198178fba9463a7a15c35f5f186335146dceca6" [label=""];
  "sha256:8314498fa540ac662142a6751198178fba9463a7a15c35f5f186335146dceca6" -> "sha256:15ea2477926742fc6b579a64dc2713dd01ea823f856dfa452a98cdf435b3d543" [label=""];
  "sha256:6828502c712f89fb7e495ad8a8b14a0ea462f55a2ca89a95cb632e6efa7fd781" -> "sha256:6f9301c903cba01c631ef065c25f57d60171dbf7b90db7e9d3cb615c6c80c90c" [label=""];
  "sha256:15ea2477926742fc6b579a64dc2713dd01ea823f856dfa452a98cdf435b3d543" -> "sha256:6f9301c903cba01c631ef065c25f57d60171dbf7b90db7e9d3cb615c6c80c90c" [label=""];
  "sha256:6f9301c903cba01c631ef065c25f57d60171dbf7b90db7e9d3cb615c6c80c90c" -> "sha256:3c6ba8b21565e44d87f68d1f98136f2504cb53fbdaee26d9f0df8833af32435b" [label=""];
}

