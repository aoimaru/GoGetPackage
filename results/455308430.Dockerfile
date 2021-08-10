[app/sources/455308430.Dockerfile]
digraph {
  "sha256:a0628282f774bfaa99245102b12fadc128a89cad694d3e5d1a5b13294eea1e1c" [label="local://context" shape="ellipse"];
  "sha256:3de914f2b8c93dc4440ba6fdea0f352db445da7bd26b7fc6d317a05a0597e660" [label="docker-image://psono-docker.jfrog.io/centos:centos7@sha256:0f4ec88e21daf75124b8a9e5ca03c37a5e937e0e108a255d890492430789b60e" shape="ellipse"];
  "sha256:9d1d1c94535fc710b315c9c75c0d1730c066fa1f20c414c6f3c2e33ced3c2bce" [label="copy{src=/psono/static/email, dest=/var/www/html/static/email}" shape="note"];
  "sha256:d8f9f1c946e340f6d216309b366554f3e90b2fea9bbabab8bd57483cfd716808" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:8e2c8eaa7ddbfa970283590807cf650a29d0ccb79e9247cf2ea61434b856edda" [label="mkdir{path=/root}" shape="note"];
  "sha256:026f8609347515f7ab2d5ac4cc717682efc35fba101ce207d80a959aadd8c30b" [label="/bin/sh -c mkdir -p /root/.pip &&     echo '[global]' >> /root/.pip/pip.conf &&     echo 'index-url = https://psono.jfrog.io/psono/api/pypi/pypi/simple' >> /root/.pip/pip.conf &&     yum -y update &&     yum -y install https://centos7.iuscommunity.org/ius-release.rpm &&     yum -y update &&     yum -y install         gcc         haveged         libffi-devel         openssl-devel         postgresql         postgresql-devel         python36u         python36u-devel         python36u-pip &&     pip3.6 install -r requirements.txt &&     pip3.6 install uwsgi &&     pip3.6 install typing &&     mkdir -p /root/.psono_server &&     cp /root/configs/mainconfig/settings.yaml /root/.psono_server/settings.yaml &&     sed -i s/YourPostgresDatabase/postgres/g /root/.psono_server/settings.yaml &&     sed -i s/YourPostgresUser/postgres/g /root/.psono_server/settings.yaml &&     sed -i s/YourPostgresHost/postgres/g /root/.psono_server/settings.yaml &&     sed -i s/YourPostgresPort/5432/g /root/.psono_server/settings.yaml &&     sed -i s,path/to/psono-server,root,g /root/.psono_server/settings.yaml &&     yum remove -y         python36u-pip &&     yum clean all &&     rm -Rf         /root/requirements.txt         /root/var         /root/.cache         /tmp/*         /var/tmp/*" shape="box"];
  "sha256:ca14f5c9f829a3781709d8f78a5db0dcec9173c62816795b021ef66424c7161b" [label="sha256:ca14f5c9f829a3781709d8f78a5db0dcec9173c62816795b021ef66424c7161b" shape="plaintext"];
  "sha256:3de914f2b8c93dc4440ba6fdea0f352db445da7bd26b7fc6d317a05a0597e660" -> "sha256:9d1d1c94535fc710b315c9c75c0d1730c066fa1f20c414c6f3c2e33ced3c2bce" [label=""];
  "sha256:a0628282f774bfaa99245102b12fadc128a89cad694d3e5d1a5b13294eea1e1c" -> "sha256:9d1d1c94535fc710b315c9c75c0d1730c066fa1f20c414c6f3c2e33ced3c2bce" [label=""];
  "sha256:9d1d1c94535fc710b315c9c75c0d1730c066fa1f20c414c6f3c2e33ced3c2bce" -> "sha256:d8f9f1c946e340f6d216309b366554f3e90b2fea9bbabab8bd57483cfd716808" [label=""];
  "sha256:a0628282f774bfaa99245102b12fadc128a89cad694d3e5d1a5b13294eea1e1c" -> "sha256:d8f9f1c946e340f6d216309b366554f3e90b2fea9bbabab8bd57483cfd716808" [label=""];
  "sha256:d8f9f1c946e340f6d216309b366554f3e90b2fea9bbabab8bd57483cfd716808" -> "sha256:8e2c8eaa7ddbfa970283590807cf650a29d0ccb79e9247cf2ea61434b856edda" [label=""];
  "sha256:8e2c8eaa7ddbfa970283590807cf650a29d0ccb79e9247cf2ea61434b856edda" -> "sha256:026f8609347515f7ab2d5ac4cc717682efc35fba101ce207d80a959aadd8c30b" [label=""];
  "sha256:026f8609347515f7ab2d5ac4cc717682efc35fba101ce207d80a959aadd8c30b" -> "sha256:ca14f5c9f829a3781709d8f78a5db0dcec9173c62816795b021ef66424c7161b" [label=""];
}

