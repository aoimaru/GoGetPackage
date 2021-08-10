[app/sources/252770945.Dockerfile]
digraph {
  "sha256:025ca57ca68da4db052ec99c15c169a40262ba9919dc418556fb67de138c5035" [label="docker-image://docker.io/fedora/apache:latest" shape="ellipse"];
  "sha256:f8f1eaa7848cbd75b2ba0a241338570ccaa87ee6eae6c2b559ccae6979934ed2" [label="/bin/sh -c dnf -y update && dnf -y install httpd mod_ssl mod_wsgi python3 python3-mod_wsgi && dnf clean all" shape="box"];
  "sha256:e1915bfe905d29d01a1d633e220e5dd8bd571e9fd010e4fe99f4950518f6c182" [label="/bin/sh -c sed -i.orig 's/#ServerName/ServerName/' /etc/httpd/conf/httpd.conf" shape="box"];
  "sha256:f2dcbcdfad3d2177d7da87628be387fc205340e73ae7fb12b6c41424e15b42b8" [label="mkdir{path=/var/www/homeautomation}" shape="note"];
  "sha256:fd5789ce4855fa8939435be9647cbd6e489aa861875f9a118c658d7f0d337420" [label="local://context" shape="ellipse"];
  "sha256:9967ccea02efaacfba7c39c1138d3bec90b8cfeb7ca00635180406084ece9ad9" [label="copy{src=/requirements.txt, dest=/var/www/homeautomation}" shape="note"];
  "sha256:9aceb26c4e03dae365b7e5571edae6d54cc57f89c5a2b72d730369afc9159d3d" [label="/bin/sh -c pip3 install -r ${REQ_FILE}" shape="box"];
  "sha256:a06fb066ec22dea57135ea573684479485920aa02515802281d60be5a8c74e08" [label="copy{src=/homeautomation_vhost.conf, dest=/etc/httpd/conf.d}" shape="note"];
  "sha256:608cb65042d6b3f0363ebefde3afa0ad07f6fdc55e2dd4b8893493a3a1a25066" [label="copy{src=/, dest=/var/www/homeautomation}" shape="note"];
  "sha256:e3af09a1345d06b03c64351be322096047c56737f364596cc458949d5d554669" [label="/bin/sh -c chown -R apache:apache /var/www/homeautomation" shape="box"];
  "sha256:d2c951dce17458635ef9c3bdcce2c7ec13d3c51671b2d41034cad17b732324b0" [label="/bin/sh -c chmod 774 /var/www/homeautomation" shape="box"];
  "sha256:015ff93d1b59a8347419e93a0488075d3a82710843614148408e3e8bb2c3d400" [label="/bin/sh -c chmod 774 /var/www/homeautomation/app.sqlite" shape="box"];
  "sha256:cd65c46379f1d19c2b35cb3afbf9f562bf2a73f58246e22744e557b7b8be3aea" [label="sha256:cd65c46379f1d19c2b35cb3afbf9f562bf2a73f58246e22744e557b7b8be3aea" shape="plaintext"];
  "sha256:025ca57ca68da4db052ec99c15c169a40262ba9919dc418556fb67de138c5035" -> "sha256:f8f1eaa7848cbd75b2ba0a241338570ccaa87ee6eae6c2b559ccae6979934ed2" [label=""];
  "sha256:f8f1eaa7848cbd75b2ba0a241338570ccaa87ee6eae6c2b559ccae6979934ed2" -> "sha256:e1915bfe905d29d01a1d633e220e5dd8bd571e9fd010e4fe99f4950518f6c182" [label=""];
  "sha256:e1915bfe905d29d01a1d633e220e5dd8bd571e9fd010e4fe99f4950518f6c182" -> "sha256:f2dcbcdfad3d2177d7da87628be387fc205340e73ae7fb12b6c41424e15b42b8" [label=""];
  "sha256:f2dcbcdfad3d2177d7da87628be387fc205340e73ae7fb12b6c41424e15b42b8" -> "sha256:9967ccea02efaacfba7c39c1138d3bec90b8cfeb7ca00635180406084ece9ad9" [label=""];
  "sha256:fd5789ce4855fa8939435be9647cbd6e489aa861875f9a118c658d7f0d337420" -> "sha256:9967ccea02efaacfba7c39c1138d3bec90b8cfeb7ca00635180406084ece9ad9" [label=""];
  "sha256:9967ccea02efaacfba7c39c1138d3bec90b8cfeb7ca00635180406084ece9ad9" -> "sha256:9aceb26c4e03dae365b7e5571edae6d54cc57f89c5a2b72d730369afc9159d3d" [label=""];
  "sha256:9aceb26c4e03dae365b7e5571edae6d54cc57f89c5a2b72d730369afc9159d3d" -> "sha256:a06fb066ec22dea57135ea573684479485920aa02515802281d60be5a8c74e08" [label=""];
  "sha256:fd5789ce4855fa8939435be9647cbd6e489aa861875f9a118c658d7f0d337420" -> "sha256:a06fb066ec22dea57135ea573684479485920aa02515802281d60be5a8c74e08" [label=""];
  "sha256:a06fb066ec22dea57135ea573684479485920aa02515802281d60be5a8c74e08" -> "sha256:608cb65042d6b3f0363ebefde3afa0ad07f6fdc55e2dd4b8893493a3a1a25066" [label=""];
  "sha256:fd5789ce4855fa8939435be9647cbd6e489aa861875f9a118c658d7f0d337420" -> "sha256:608cb65042d6b3f0363ebefde3afa0ad07f6fdc55e2dd4b8893493a3a1a25066" [label=""];
  "sha256:608cb65042d6b3f0363ebefde3afa0ad07f6fdc55e2dd4b8893493a3a1a25066" -> "sha256:e3af09a1345d06b03c64351be322096047c56737f364596cc458949d5d554669" [label=""];
  "sha256:e3af09a1345d06b03c64351be322096047c56737f364596cc458949d5d554669" -> "sha256:d2c951dce17458635ef9c3bdcce2c7ec13d3c51671b2d41034cad17b732324b0" [label=""];
  "sha256:d2c951dce17458635ef9c3bdcce2c7ec13d3c51671b2d41034cad17b732324b0" -> "sha256:015ff93d1b59a8347419e93a0488075d3a82710843614148408e3e8bb2c3d400" [label=""];
  "sha256:015ff93d1b59a8347419e93a0488075d3a82710843614148408e3e8bb2c3d400" -> "sha256:cd65c46379f1d19c2b35cb3afbf9f562bf2a73f58246e22744e557b7b8be3aea" [label=""];
}

