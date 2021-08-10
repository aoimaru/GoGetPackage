[app/sources/482793109.Dockerfile]
digraph {
  "sha256:859d2e029e8302ace19b1a66f83cec4d3b42753ecd81a582af1b1ce8ffcdfe26" [label="docker-image://docker.io/openshift/jenkins-slave-base-centos7:v3.11@sha256:6438711ef335aaef28cf0b5ab8154f9d5fc343ce3971bf22bef2a2fb2cf14802" shape="ellipse"];
  "sha256:d986b8dee1ad7cf07f2790ec7fee1d29d48cd379fc99012586619d92f48f57d7" [label="/bin/sh -c yum install -y centos-release-scl &&     yum-config-manager --enable centos-sclo-rh-testing &&     INSTALL_PKGS=\"rh-ruby24 rh-ruby24-ruby-devel rh-ruby24-rubygem-rake rh-ruby24-rubygem-bundler rh-nodejs6 autoconf automake\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS &&     yum remove -y origin-clients &&     yum clean all -y" shape="box"];
  "sha256:23b17cafcc8e60830f3685d79c4d6bc7f4014725a9a3a208bd7eebbc25f00ddd" [label="/bin/sh -c curl $ORIGIN_CLIENT | tar -C /usr/local/bin/ -xzf - &&     chmod +x /usr/local/bin/oc" shape="box"];
  "sha256:f2dfce395286fda603588880dba2ae07e917e4c58847199c2929eb89714e49c6" [label="local://context" shape="ellipse"];
  "sha256:625c3f550796069667b827358a7e7e904244b8a516fcb8a2ee7b5b17507f9334" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:53c30106eaf80ca17527615b10926f38f0468564e24e5addaf06b3a1e7c79279" [label="/bin/sh -c chown -R 1001:0 /opt/app-root && chmod -R ug+rwx /opt/app-root" shape="box"];
  "sha256:777ef160ed4b3cf75f23c9ec42b959472513a1c81b34a797ac7e4f7e6079af79" [label="sha256:777ef160ed4b3cf75f23c9ec42b959472513a1c81b34a797ac7e4f7e6079af79" shape="plaintext"];
  "sha256:859d2e029e8302ace19b1a66f83cec4d3b42753ecd81a582af1b1ce8ffcdfe26" -> "sha256:d986b8dee1ad7cf07f2790ec7fee1d29d48cd379fc99012586619d92f48f57d7" [label=""];
  "sha256:d986b8dee1ad7cf07f2790ec7fee1d29d48cd379fc99012586619d92f48f57d7" -> "sha256:23b17cafcc8e60830f3685d79c4d6bc7f4014725a9a3a208bd7eebbc25f00ddd" [label=""];
  "sha256:23b17cafcc8e60830f3685d79c4d6bc7f4014725a9a3a208bd7eebbc25f00ddd" -> "sha256:625c3f550796069667b827358a7e7e904244b8a516fcb8a2ee7b5b17507f9334" [label=""];
  "sha256:f2dfce395286fda603588880dba2ae07e917e4c58847199c2929eb89714e49c6" -> "sha256:625c3f550796069667b827358a7e7e904244b8a516fcb8a2ee7b5b17507f9334" [label=""];
  "sha256:625c3f550796069667b827358a7e7e904244b8a516fcb8a2ee7b5b17507f9334" -> "sha256:53c30106eaf80ca17527615b10926f38f0468564e24e5addaf06b3a1e7c79279" [label=""];
  "sha256:53c30106eaf80ca17527615b10926f38f0468564e24e5addaf06b3a1e7c79279" -> "sha256:777ef160ed4b3cf75f23c9ec42b959472513a1c81b34a797ac7e4f7e6079af79" [label=""];
}

