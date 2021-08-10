[app/sources/168272095.Dockerfile]
digraph {
  "sha256:e39b73bd1cb85c925164f75b3414bc25ae4984f93fdea66f5a0ad477544989b2" [label="docker-image://docker.io/openshift3/sti-base:1.0" shape="ellipse"];
  "sha256:8763c12f4ef2be6758a40dd324e1e845435588ffc75d8872f7e40a0d095195ed" [label="/bin/sh -c yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     INSTALL_PKGS=\"httpd24 perl516 perl516-mod_perl perl516-perl-CPANPLUS\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     scl enable perl516 -- cpanp 's conf prereqs 1; s save system' &&     scl enable perl516 -- cpanp 's conf allow_build_interactivity 0; s save system'" shape="box"];
  "sha256:1cf84b6880d593171679fa0502e985f0ae49a5d9cc061b0f889adcf5686d0935" [label="local://context" shape="ellipse"];
  "sha256:c6449e8bb1b26e8015f3b076d2f930a4428d74e40cd54637be4f95236f5bd47a" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:d7f35ce1f94294e39abdf95beaf6a3aca80e0f97307d448a38279b8351a14534" [label="copy{src=/contrib, dest=/opt/app-root}" shape="note"];
  "sha256:1838711042a593b82c75e9b5c73baa48a3b3944419a3c8294755a1afe88eade8" [label="/bin/sh -c mkdir -p /opt/app-root/etc/httpd.d &&     sed -i -f /opt/app-root/etc/httpdconf.sed /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf  &&     chmod -R og+rwx /opt/rh/httpd24/root/var/run/httpd /opt/app-root/etc/httpd.d &&     chown -R 1001:0 /opt/app-root" shape="box"];
  "sha256:f30edf281d43a90168bb89f4ab5327afc25f711281afd6396accd8bf6d0d52bc" [label="sha256:f30edf281d43a90168bb89f4ab5327afc25f711281afd6396accd8bf6d0d52bc" shape="plaintext"];
  "sha256:e39b73bd1cb85c925164f75b3414bc25ae4984f93fdea66f5a0ad477544989b2" -> "sha256:8763c12f4ef2be6758a40dd324e1e845435588ffc75d8872f7e40a0d095195ed" [label=""];
  "sha256:8763c12f4ef2be6758a40dd324e1e845435588ffc75d8872f7e40a0d095195ed" -> "sha256:c6449e8bb1b26e8015f3b076d2f930a4428d74e40cd54637be4f95236f5bd47a" [label=""];
  "sha256:1cf84b6880d593171679fa0502e985f0ae49a5d9cc061b0f889adcf5686d0935" -> "sha256:c6449e8bb1b26e8015f3b076d2f930a4428d74e40cd54637be4f95236f5bd47a" [label=""];
  "sha256:c6449e8bb1b26e8015f3b076d2f930a4428d74e40cd54637be4f95236f5bd47a" -> "sha256:d7f35ce1f94294e39abdf95beaf6a3aca80e0f97307d448a38279b8351a14534" [label=""];
  "sha256:1cf84b6880d593171679fa0502e985f0ae49a5d9cc061b0f889adcf5686d0935" -> "sha256:d7f35ce1f94294e39abdf95beaf6a3aca80e0f97307d448a38279b8351a14534" [label=""];
  "sha256:d7f35ce1f94294e39abdf95beaf6a3aca80e0f97307d448a38279b8351a14534" -> "sha256:1838711042a593b82c75e9b5c73baa48a3b3944419a3c8294755a1afe88eade8" [label=""];
  "sha256:1838711042a593b82c75e9b5c73baa48a3b3944419a3c8294755a1afe88eade8" -> "sha256:f30edf281d43a90168bb89f4ab5327afc25f711281afd6396accd8bf6d0d52bc" [label=""];
}

