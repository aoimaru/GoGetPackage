[app/sources/209453703.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:94fb15dd86df4356d65ff01f294611fa39387d7befbc5a5ba6a552e0f8552006" [label="/bin/sh -c yum install -y centos-release-scl &&     INSTALL_PKGS=\"mercurial\" &&     yum install -y --setopt=tsflags=nodocs --enablerepo=centosplus $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all -y &&     (curl -L https://storage.googleapis.com/golang/go${GO_VERSION}${GO_PATCH_VERSION:+.}${GO_PATCH_VERSION}.linux-amd64.tar.gz |         tar -xz -C /usr/local)" shape="box"];
  "sha256:c8488912287bab484239b5115cf86c37c56cf5fccb370ce19f9eb5ee0ea9d206" [label="local://context" shape="ellipse"];
  "sha256:d38cd55c04f6f16b89f95b59e85cd4110c2290c111614fe57187b73beaf1c025" [label="copy{src=/s2i, dest=/}" shape="note"];
  "sha256:534ac460df45c8951ae6f272262833fc346f89ab1d5764423320b513c875874a" [label="sha256:534ac460df45c8951ae6f272262833fc346f89ab1d5764423320b513c875874a" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:94fb15dd86df4356d65ff01f294611fa39387d7befbc5a5ba6a552e0f8552006" [label=""];
  "sha256:94fb15dd86df4356d65ff01f294611fa39387d7befbc5a5ba6a552e0f8552006" -> "sha256:d38cd55c04f6f16b89f95b59e85cd4110c2290c111614fe57187b73beaf1c025" [label=""];
  "sha256:c8488912287bab484239b5115cf86c37c56cf5fccb370ce19f9eb5ee0ea9d206" -> "sha256:d38cd55c04f6f16b89f95b59e85cd4110c2290c111614fe57187b73beaf1c025" [label=""];
  "sha256:d38cd55c04f6f16b89f95b59e85cd4110c2290c111614fe57187b73beaf1c025" -> "sha256:534ac460df45c8951ae6f272262833fc346f89ab1d5764423320b513c875874a" [label=""];
}

