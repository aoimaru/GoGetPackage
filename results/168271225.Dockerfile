[app/sources/168271225.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:3aeecfee45de2bc54ba0ffbe581ac4a415c04f0b93d8a5307676aefb6d4847dd" [label="/bin/sh -c rpmkeys --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 &&     yum -y install centos-release-scl &&     yum-config-manager --enable centos-sclo-rh-testing &&     INSTALL_PKGS=\"rh-ruby23 rh-ruby23-ruby-devel rh-ruby23-rubygem-rake rh-ruby23-rubygem-bundler rh-nodejs4\" &&     yum install -y --setopt=tsflags=nodocs --nogpgcheck $INSTALL_PKGS && rpm -V $INSTALL_PKGS &&     yum clean all -y" shape="box"];
  "sha256:f56fee300b31ca02bee27b3479439eb7be006f6869ec2587debb1c5a536bb699" [label="local://context" shape="ellipse"];
  "sha256:a5e2d0a3365d02bc21888c2490ed39a47de17160587ded610e50b03b629c1781" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:7b58316d8ce2751c4ffa9d5eff61566ad8ebae74442f06165b93be6e37de8944" [label="copy{src=/contrib, dest=/opt/app-root}" shape="note"];
  "sha256:8c18045cdaddbb1f6e3506fbd5851b666cb91df2a0d999eeb22df76ba91c852c" [label="/bin/sh -c chown -R 1001:0 /opt/app-root" shape="box"];
  "sha256:70fd04c7b403c662275cde33891a5e7cf577ebbae77f9660afa7fc9aa32ed20c" [label="sha256:70fd04c7b403c662275cde33891a5e7cf577ebbae77f9660afa7fc9aa32ed20c" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:3aeecfee45de2bc54ba0ffbe581ac4a415c04f0b93d8a5307676aefb6d4847dd" [label=""];
  "sha256:3aeecfee45de2bc54ba0ffbe581ac4a415c04f0b93d8a5307676aefb6d4847dd" -> "sha256:a5e2d0a3365d02bc21888c2490ed39a47de17160587ded610e50b03b629c1781" [label=""];
  "sha256:f56fee300b31ca02bee27b3479439eb7be006f6869ec2587debb1c5a536bb699" -> "sha256:a5e2d0a3365d02bc21888c2490ed39a47de17160587ded610e50b03b629c1781" [label=""];
  "sha256:a5e2d0a3365d02bc21888c2490ed39a47de17160587ded610e50b03b629c1781" -> "sha256:7b58316d8ce2751c4ffa9d5eff61566ad8ebae74442f06165b93be6e37de8944" [label=""];
  "sha256:f56fee300b31ca02bee27b3479439eb7be006f6869ec2587debb1c5a536bb699" -> "sha256:7b58316d8ce2751c4ffa9d5eff61566ad8ebae74442f06165b93be6e37de8944" [label=""];
  "sha256:7b58316d8ce2751c4ffa9d5eff61566ad8ebae74442f06165b93be6e37de8944" -> "sha256:8c18045cdaddbb1f6e3506fbd5851b666cb91df2a0d999eeb22df76ba91c852c" [label=""];
  "sha256:8c18045cdaddbb1f6e3506fbd5851b666cb91df2a0d999eeb22df76ba91c852c" -> "sha256:70fd04c7b403c662275cde33891a5e7cf577ebbae77f9660afa7fc9aa32ed20c" [label=""];
}

