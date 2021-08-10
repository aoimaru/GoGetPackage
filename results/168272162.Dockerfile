[app/sources/168272162.Dockerfile]
digraph {
  "sha256:1cc4bae96792c594b686f4681d2117128122f3c64cd3bad9914006c78936b8fb" [label="docker-image://docker.io/rhscl/s2i-base-rhel7:1" shape="ellipse"];
  "sha256:f74bd79768a0f763bdbde227ec563951c5dead49e5e40dd3063de5c5bef0d956" [label="/bin/sh -c yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     yum-config-manager --enable rhel-7-server-ose-3.0-rpms &&     yum-config-manager --disable epel >/dev/null || : &&     INSTALL_PKGS=\"python27 python27-python-devel python27-python-setuptools python27-python-pip nss_wrapper httpd httpd-devel\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS &&     yum clean all -y" shape="box"];
  "sha256:8af4b6d6b8bfb4c2974e5d43883524ad1727559fb5edb475e8f02dec3aadc642" [label="local://context" shape="ellipse"];
  "sha256:e7d0cc5dcc41736090fa062eee560f07353ba0c487e9cfa98d3ab3fee29dec66" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:103eb9874b16788d48a32660938fa77b656a377a68526a4f7bce260a28b2a8b8" [label="copy{src=/contrib, dest=/opt/app-root}" shape="note"];
  "sha256:cf9b8eba2db70edeeaea2fa1e019ec05e3e993ce7e36dfd2ce770f476776d258" [label="/bin/sh -c chown -R 1001:0 /opt/app-root && chmod -R og+rwx /opt/app-root" shape="box"];
  "sha256:67be0347ee706d5d8aa3bca87722b07cbc7a426b69bdfbc6e83da863f8c0841c" [label="sha256:67be0347ee706d5d8aa3bca87722b07cbc7a426b69bdfbc6e83da863f8c0841c" shape="plaintext"];
  "sha256:1cc4bae96792c594b686f4681d2117128122f3c64cd3bad9914006c78936b8fb" -> "sha256:f74bd79768a0f763bdbde227ec563951c5dead49e5e40dd3063de5c5bef0d956" [label=""];
  "sha256:f74bd79768a0f763bdbde227ec563951c5dead49e5e40dd3063de5c5bef0d956" -> "sha256:e7d0cc5dcc41736090fa062eee560f07353ba0c487e9cfa98d3ab3fee29dec66" [label=""];
  "sha256:8af4b6d6b8bfb4c2974e5d43883524ad1727559fb5edb475e8f02dec3aadc642" -> "sha256:e7d0cc5dcc41736090fa062eee560f07353ba0c487e9cfa98d3ab3fee29dec66" [label=""];
  "sha256:e7d0cc5dcc41736090fa062eee560f07353ba0c487e9cfa98d3ab3fee29dec66" -> "sha256:103eb9874b16788d48a32660938fa77b656a377a68526a4f7bce260a28b2a8b8" [label=""];
  "sha256:8af4b6d6b8bfb4c2974e5d43883524ad1727559fb5edb475e8f02dec3aadc642" -> "sha256:103eb9874b16788d48a32660938fa77b656a377a68526a4f7bce260a28b2a8b8" [label=""];
  "sha256:103eb9874b16788d48a32660938fa77b656a377a68526a4f7bce260a28b2a8b8" -> "sha256:cf9b8eba2db70edeeaea2fa1e019ec05e3e993ce7e36dfd2ce770f476776d258" [label=""];
  "sha256:cf9b8eba2db70edeeaea2fa1e019ec05e3e993ce7e36dfd2ce770f476776d258" -> "sha256:67be0347ee706d5d8aa3bca87722b07cbc7a426b69bdfbc6e83da863f8c0841c" [label=""];
}

