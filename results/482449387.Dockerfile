[app/sources/482449387.Dockerfile]
digraph {
  "sha256:34e45cd6158f56e49201a580b2531eee9fd004ecb71ebdc83cdb1d442337168d" [label="local://context" shape="ellipse"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:3d8908aa64c9317dec3642895d725c983dbe9b3a375fd8e9ab00c4754257101a" [label="/bin/sh -c set -xv ; dnf -q -y upgrade && ln -fs /usr/share/zoneinfo/Europe/Brussels /etc/localtime && dnf -q install -y ${pkgs} ${pkgs_tmp} && dnf -q groupinstall -y \"${pkggroup}\" && gem install fpm && dnf -q remove -y ${pkgs_tmp} && dnf -q clean all" shape="box"];
  "sha256:61a258a4d39666ffcd8e0f51ea0a4617a16187fb8075d8f3ce8a393f5f0314b0" [label="copy{src=/pkg_rakudo.pl, dest=/}" shape="note"];
  "sha256:2b6c9bd037380eff8c4cdb24989750e2773c545c9dac9d813a390543fcd3428b" [label="copy{src=/install-zef-as-user, dest=/}" shape="note"];
  "sha256:069241c8f6d2f897dea1507289db69b194b10e1aa606de33ab60d611a4bf8520" [label="sha256:069241c8f6d2f897dea1507289db69b194b10e1aa606de33ab60d611a4bf8520" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:3d8908aa64c9317dec3642895d725c983dbe9b3a375fd8e9ab00c4754257101a" [label=""];
  "sha256:3d8908aa64c9317dec3642895d725c983dbe9b3a375fd8e9ab00c4754257101a" -> "sha256:61a258a4d39666ffcd8e0f51ea0a4617a16187fb8075d8f3ce8a393f5f0314b0" [label=""];
  "sha256:34e45cd6158f56e49201a580b2531eee9fd004ecb71ebdc83cdb1d442337168d" -> "sha256:61a258a4d39666ffcd8e0f51ea0a4617a16187fb8075d8f3ce8a393f5f0314b0" [label=""];
  "sha256:61a258a4d39666ffcd8e0f51ea0a4617a16187fb8075d8f3ce8a393f5f0314b0" -> "sha256:2b6c9bd037380eff8c4cdb24989750e2773c545c9dac9d813a390543fcd3428b" [label=""];
  "sha256:34e45cd6158f56e49201a580b2531eee9fd004ecb71ebdc83cdb1d442337168d" -> "sha256:2b6c9bd037380eff8c4cdb24989750e2773c545c9dac9d813a390543fcd3428b" [label=""];
  "sha256:2b6c9bd037380eff8c4cdb24989750e2773c545c9dac9d813a390543fcd3428b" -> "sha256:069241c8f6d2f897dea1507289db69b194b10e1aa606de33ab60d611a4bf8520" [label=""];
}

