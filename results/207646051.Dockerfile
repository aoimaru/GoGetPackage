[app/sources/207646051.Dockerfile]
digraph {
  "sha256:316ede46d95a7f73b36e9ebe3e463792d61d07dcd5b5d799431b8e1da50e1bd9" [label="docker-image://docker.io/centos/s2i-core-centos7:latest" shape="ellipse"];
  "sha256:d969261160f41b8ceb1b33387ee27e82acabb9c57be1e6b4f68bae7229ad9458" [label="/bin/sh -c yum install -y yum-utils &&     yum install -y centos-release-scl epel-release &&     INSTALL_PKGS=\"gettext hostname nss_wrapper bind-utils httpd24 httpd24-mod_ssl httpd24-mod_auth_mellon\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all" shape="box"];
  "sha256:2a544327e97e100b61f298ff87ebfa91b8846c5d0f5772ff067c117b073f8f02" [label="local://context" shape="ellipse"];
  "sha256:4c4a8a05d0804b75e1f8dfc5e57a7149d4d09ac8a56034985387a602275f56ee" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:fae50d5cca16d565113dc74fd24bedbbefa8b62aca1e966f25b99cf1c51210aa" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:010c77b2c7a762839973b86e91b73df8f0a805a51ada250496a2d38a619e2162" [label="/bin/sh -c /usr/libexec/httpd-prepare && rpm-file-permissions" shape="box"];
  "sha256:356c54bbb3305cb7d88ac55a08271a61fb61c57b8ea93ff81d48362830339d80" [label="sha256:356c54bbb3305cb7d88ac55a08271a61fb61c57b8ea93ff81d48362830339d80" shape="plaintext"];
  "sha256:316ede46d95a7f73b36e9ebe3e463792d61d07dcd5b5d799431b8e1da50e1bd9" -> "sha256:d969261160f41b8ceb1b33387ee27e82acabb9c57be1e6b4f68bae7229ad9458" [label=""];
  "sha256:d969261160f41b8ceb1b33387ee27e82acabb9c57be1e6b4f68bae7229ad9458" -> "sha256:4c4a8a05d0804b75e1f8dfc5e57a7149d4d09ac8a56034985387a602275f56ee" [label=""];
  "sha256:2a544327e97e100b61f298ff87ebfa91b8846c5d0f5772ff067c117b073f8f02" -> "sha256:4c4a8a05d0804b75e1f8dfc5e57a7149d4d09ac8a56034985387a602275f56ee" [label=""];
  "sha256:4c4a8a05d0804b75e1f8dfc5e57a7149d4d09ac8a56034985387a602275f56ee" -> "sha256:fae50d5cca16d565113dc74fd24bedbbefa8b62aca1e966f25b99cf1c51210aa" [label=""];
  "sha256:2a544327e97e100b61f298ff87ebfa91b8846c5d0f5772ff067c117b073f8f02" -> "sha256:fae50d5cca16d565113dc74fd24bedbbefa8b62aca1e966f25b99cf1c51210aa" [label=""];
  "sha256:fae50d5cca16d565113dc74fd24bedbbefa8b62aca1e966f25b99cf1c51210aa" -> "sha256:010c77b2c7a762839973b86e91b73df8f0a805a51ada250496a2d38a619e2162" [label=""];
  "sha256:010c77b2c7a762839973b86e91b73df8f0a805a51ada250496a2d38a619e2162" -> "sha256:356c54bbb3305cb7d88ac55a08271a61fb61c57b8ea93ff81d48362830339d80" [label=""];
}

