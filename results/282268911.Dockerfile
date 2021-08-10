[app/sources/282268911.Dockerfile]
digraph {
  "sha256:cdd44a4ee785b5c70af3dd3ccb7882570d4de997087ed90899d66e858f77ba77" [label="docker-image://docker.io/manageiq/manageiq-pods:frontend-latest" shape="ellipse"];
  "sha256:9798161f88811503290631b0c84300296ed7f90df53c0f0b08a2614643dc9372" [label="/bin/sh -c yum -y install --setopt=tsflags=nodocs                    memcached                                  rh-postgresql95-postgresql-server                    rh-postgresql95-postgresql-pglogical                    rh-postgresql95-repmgr                     mod_ssl                                    openssh-clients                            openssh-server                             &&                          yum clean all" shape="box"];
  "sha256:a6885efa63e23cac065b86e96bfc936e9489e292dcfb4222889426ee86149ea7" [label="/bin/sh -c ssh-keygen -q -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key &&     ssh-keygen -q -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key &&     ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa &&     cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys &&     for key in /etc/ssh/ssh_host_*_key.pub; do echo \"localhost $(cat ${key})\" >> /root/.ssh/known_hosts; done &&     echo \"root:smartvm\" | chpasswd &&     chmod 700 /root/.ssh &&     chmod 600 /root/.ssh/*" shape="box"];
  "sha256:84e390f257ed7b8ead4a1148d0c511c37f55f6e3e86bb8bca90cbdb1a169dd2a" [label="/bin/sh -c ${APPLIANCE_ROOT}/setup &&     mv /etc/httpd/conf.d/ssl.conf{,.orig} &&     echo \"# This file intentionally left blank. ManageIQ maintains its own SSL configuration\" > /etc/httpd/conf.d/ssl.conf" shape="box"];
  "sha256:89103137fa3128f19ad79cc2958f6e7fa70515bcbdd82e086d77150bc9f1bf91" [label="local://context" shape="ellipse"];
  "sha256:2efa93a11bca19e61996179358898faa40e55febcd0eeafb4b2f9cd5bf070eba" [label="copy{src=/docker-assets/appliance-initialize.sh, dest=/usr/bin}" shape="note"];
  "sha256:2a67c246337cedaf4f23932f4ba2d3a8aacfb411bff29711df3d99c4b8972010" [label="sha256:2a67c246337cedaf4f23932f4ba2d3a8aacfb411bff29711df3d99c4b8972010" shape="plaintext"];
  "sha256:cdd44a4ee785b5c70af3dd3ccb7882570d4de997087ed90899d66e858f77ba77" -> "sha256:9798161f88811503290631b0c84300296ed7f90df53c0f0b08a2614643dc9372" [label=""];
  "sha256:9798161f88811503290631b0c84300296ed7f90df53c0f0b08a2614643dc9372" -> "sha256:a6885efa63e23cac065b86e96bfc936e9489e292dcfb4222889426ee86149ea7" [label=""];
  "sha256:a6885efa63e23cac065b86e96bfc936e9489e292dcfb4222889426ee86149ea7" -> "sha256:84e390f257ed7b8ead4a1148d0c511c37f55f6e3e86bb8bca90cbdb1a169dd2a" [label=""];
  "sha256:84e390f257ed7b8ead4a1148d0c511c37f55f6e3e86bb8bca90cbdb1a169dd2a" -> "sha256:2efa93a11bca19e61996179358898faa40e55febcd0eeafb4b2f9cd5bf070eba" [label=""];
  "sha256:89103137fa3128f19ad79cc2958f6e7fa70515bcbdd82e086d77150bc9f1bf91" -> "sha256:2efa93a11bca19e61996179358898faa40e55febcd0eeafb4b2f9cd5bf070eba" [label=""];
  "sha256:2efa93a11bca19e61996179358898faa40e55febcd0eeafb4b2f9cd5bf070eba" -> "sha256:2a67c246337cedaf4f23932f4ba2d3a8aacfb411bff29711df3d99c4b8972010" [label=""];
}

