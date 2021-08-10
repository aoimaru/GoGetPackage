[app/sources/469283550.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:9c68c33f934f5d7348ea1ccb97a0b05e6e649381d344621690d9a2d2b2ce305a" [label="/bin/sh -c INSTALL_PKGS=\"       libvirt-libs openssh-clients genisoimage       \" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all" shape="box"];
  "sha256:c81de1da7042352f2afaacd4a1f352bd93154293b621ff5a2678bf4ed784955c" [label="local://context" shape="ellipse"];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.10" shape="ellipse"];
  "sha256:50a3088151774132c0f43e9678976159da7c77520d57951d85f7200058f7023c" [label="mkdir{path=/go/src/github.com/openshift/cluster-api-provider-libvirt}" shape="note"];
  "sha256:74527ada43b23af2f95d0af42cb4177bb20f763622f49d7a28eb13b0043b4080" [label="copy{src=/, dest=/go/src/github.com/openshift/cluster-api-provider-libvirt/}" shape="note"];
  "sha256:f314a8a628b081e7a8b97d9926761c18416f18868f827b5ad16b4b003a0b71c9" [label="/bin/sh -c go build -o machine-controller-manager ./cmd/manager" shape="box"];
  "sha256:3b608e562337085620e6aeb5a8601e52aa25e55c08d2396c28065ae0d4bd0e01" [label="/bin/sh -c go build -o manager ./vendor/github.com/openshift/cluster-api/cmd/manager" shape="box"];
  "sha256:cd35245f98a56ef36365f05198452c0af31a84d4d2736a38cace3f716834dc5f" [label="copy{src=/go/src/github.com/openshift/cluster-api-provider-libvirt/manager, dest=/}" shape="note"];
  "sha256:dd3a8fea9de5213a5f7ac464e134e592696e1ee57bdac5435d694d4a312f1413" [label="copy{src=/go/src/github.com/openshift/cluster-api-provider-libvirt/machine-controller-manager, dest=/}" shape="note"];
  "sha256:a8c08662057bb80ccdccd9de84297ab4476c611e017c29c8696dcbbb8cf7dfb9" [label="sha256:a8c08662057bb80ccdccd9de84297ab4476c611e017c29c8696dcbbb8cf7dfb9" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:9c68c33f934f5d7348ea1ccb97a0b05e6e649381d344621690d9a2d2b2ce305a" [label=""];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" -> "sha256:50a3088151774132c0f43e9678976159da7c77520d57951d85f7200058f7023c" [label=""];
  "sha256:50a3088151774132c0f43e9678976159da7c77520d57951d85f7200058f7023c" -> "sha256:74527ada43b23af2f95d0af42cb4177bb20f763622f49d7a28eb13b0043b4080" [label=""];
  "sha256:c81de1da7042352f2afaacd4a1f352bd93154293b621ff5a2678bf4ed784955c" -> "sha256:74527ada43b23af2f95d0af42cb4177bb20f763622f49d7a28eb13b0043b4080" [label=""];
  "sha256:74527ada43b23af2f95d0af42cb4177bb20f763622f49d7a28eb13b0043b4080" -> "sha256:f314a8a628b081e7a8b97d9926761c18416f18868f827b5ad16b4b003a0b71c9" [label=""];
  "sha256:f314a8a628b081e7a8b97d9926761c18416f18868f827b5ad16b4b003a0b71c9" -> "sha256:3b608e562337085620e6aeb5a8601e52aa25e55c08d2396c28065ae0d4bd0e01" [label=""];
  "sha256:9c68c33f934f5d7348ea1ccb97a0b05e6e649381d344621690d9a2d2b2ce305a" -> "sha256:cd35245f98a56ef36365f05198452c0af31a84d4d2736a38cace3f716834dc5f" [label=""];
  "sha256:3b608e562337085620e6aeb5a8601e52aa25e55c08d2396c28065ae0d4bd0e01" -> "sha256:cd35245f98a56ef36365f05198452c0af31a84d4d2736a38cace3f716834dc5f" [label=""];
  "sha256:cd35245f98a56ef36365f05198452c0af31a84d4d2736a38cace3f716834dc5f" -> "sha256:dd3a8fea9de5213a5f7ac464e134e592696e1ee57bdac5435d694d4a312f1413" [label=""];
  "sha256:3b608e562337085620e6aeb5a8601e52aa25e55c08d2396c28065ae0d4bd0e01" -> "sha256:dd3a8fea9de5213a5f7ac464e134e592696e1ee57bdac5435d694d4a312f1413" [label=""];
  "sha256:dd3a8fea9de5213a5f7ac464e134e592696e1ee57bdac5435d694d4a312f1413" -> "sha256:a8c08662057bb80ccdccd9de84297ab4476c611e017c29c8696dcbbb8cf7dfb9" [label=""];
}

