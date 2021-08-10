[app/sources/218767215.Dockerfile]
digraph {
  "sha256:f90fbaa31efc7fb7d2e9b076e64518916d4c1ae9dd6f5a696e8cec5cd5081173" [label="local://context" shape="ellipse"];
  "sha256:7419317ae0ba4f3edce20f5351a21953d45cd96c3d066a7e96083e35f3037601" [label="docker-image://docker.io/centos/s2i-base-centos7:latest" shape="ellipse"];
  "sha256:20bdbcc8892c27959fcf37bea32e5daf593177ee3bf64de750a9a415bad9390a" [label="/bin/sh -c yum install -y centos-release-scl &&     INSTALL_PKGS=\"rh-ruby23 rh-ruby23-ruby-devel rh-ruby23-rubygem-rake rh-ruby23-rubygem-bundler\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS &&     yum clean all -y" shape="box"];
  "sha256:52f8b1a5c3539e20fdde2338b039afd5d289cb4cd771d8f00731a1ef49b0c1e8" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:c60ab9deaa71c7b7e61da8df70122785a50b7feceb986dc4d8ec966d91a927de" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:725411feb031bf333a03d6415e42f122638e7f46c5ccf4d90306582ead81a0f1" [label="/bin/sh -c chown -R 1001:0 ${APP_ROOT} && chmod -R ug+rwx ${APP_ROOT} &&     rpm-file-permissions" shape="box"];
  "sha256:04f8ffc28dd29bb786a971f3f743bd193bc6c3cbf7c670883ddbfd3216926010" [label="sha256:04f8ffc28dd29bb786a971f3f743bd193bc6c3cbf7c670883ddbfd3216926010" shape="plaintext"];
  "sha256:7419317ae0ba4f3edce20f5351a21953d45cd96c3d066a7e96083e35f3037601" -> "sha256:20bdbcc8892c27959fcf37bea32e5daf593177ee3bf64de750a9a415bad9390a" [label=""];
  "sha256:20bdbcc8892c27959fcf37bea32e5daf593177ee3bf64de750a9a415bad9390a" -> "sha256:52f8b1a5c3539e20fdde2338b039afd5d289cb4cd771d8f00731a1ef49b0c1e8" [label=""];
  "sha256:f90fbaa31efc7fb7d2e9b076e64518916d4c1ae9dd6f5a696e8cec5cd5081173" -> "sha256:52f8b1a5c3539e20fdde2338b039afd5d289cb4cd771d8f00731a1ef49b0c1e8" [label=""];
  "sha256:52f8b1a5c3539e20fdde2338b039afd5d289cb4cd771d8f00731a1ef49b0c1e8" -> "sha256:c60ab9deaa71c7b7e61da8df70122785a50b7feceb986dc4d8ec966d91a927de" [label=""];
  "sha256:f90fbaa31efc7fb7d2e9b076e64518916d4c1ae9dd6f5a696e8cec5cd5081173" -> "sha256:c60ab9deaa71c7b7e61da8df70122785a50b7feceb986dc4d8ec966d91a927de" [label=""];
  "sha256:c60ab9deaa71c7b7e61da8df70122785a50b7feceb986dc4d8ec966d91a927de" -> "sha256:725411feb031bf333a03d6415e42f122638e7f46c5ccf4d90306582ead81a0f1" [label=""];
  "sha256:725411feb031bf333a03d6415e42f122638e7f46c5ccf4d90306582ead81a0f1" -> "sha256:04f8ffc28dd29bb786a971f3f743bd193bc6c3cbf7c670883ddbfd3216926010" [label=""];
}

