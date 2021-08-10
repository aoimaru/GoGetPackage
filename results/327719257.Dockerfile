[app/sources/327719257.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:f5d42db8151447b3a78a3aa43dbf0522875b2cc0130569c72320667bde01d423" [label="/bin/sh -c yum clean all &&     yum -y install epel-release &&     yum -y install     acl     asciidoc     bzip2     file     gcc     git     libffi     libffi-devel     make     mercurial     mysql     MySQL-python     mysql-server     openssh-clients     openssh-server     openssl-devel     python-argparse     pass     python-devel     python-httplib2     python-jinja2     python-keyczar     python-lxml     python-mock     python-nose     python-passlib     python-pip     python-setuptools     python-virtualenv     PyYAML     rpm-build     rubygems     sed     sshpass     subversion     sudo     unzip     which     zip     &&     rpm -e --nodeps python-crypto &&     yum clean all" shape="box"];
  "sha256:bd6504b3dcc28a791dbd07244ea91a54558a2c736b99d0dba82c76f304936568" [label="/bin/sh -c pip install --upgrade pycrypto 'cryptography<2.0.0' 'pycparser<2.19'" shape="box"];
  "sha256:65f48f0918f5b912a70f45a25f7ea7e38ab6d8632a852a41ff2e5371ee0b82a8" [label="/bin/sh -c /bin/sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:a2da8555192d090507a7ed4ccf4ade842caf0e9bf7389b7370927665d946ee1c" [label="/bin/sh -c mkdir /etc/ansible/" shape="box"];
  "sha256:cc0ed000fe92b5bbf16c3952184c322eef35e312d4db0bf767c26be60a62605d" [label="/bin/sh -c /bin/echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:1f8de8eecae91ed64bf14f5730496ac986ce05e37ccc13d846eb2b45b41d2482" [label="/bin/sh -c ssh-keygen -q -t rsa1 -N '' -f /etc/ssh/ssh_host_key &&     ssh-keygen -q -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key &&     ssh-keygen -q -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key &&     ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa &&     cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys &&     for key in /etc/ssh/ssh_host_*_key.pub; do echo \"localhost $(cat ${key})\" >> /root/.ssh/known_hosts; done" shape="box"];
  "sha256:f45a03e93610cd4d2fbfd1459d8311696f1edf4753e9c7a846c81b651557676e" [label="/bin/sh -c pip install coverage junit-xml" shape="box"];
  "sha256:6aa8d66b767bf4abfee36b3cba11a4dc465566a2948507ff85a2cf26ca8261ca" [label="sha256:6aa8d66b767bf4abfee36b3cba11a4dc465566a2948507ff85a2cf26ca8261ca" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:f5d42db8151447b3a78a3aa43dbf0522875b2cc0130569c72320667bde01d423" [label=""];
  "sha256:f5d42db8151447b3a78a3aa43dbf0522875b2cc0130569c72320667bde01d423" -> "sha256:bd6504b3dcc28a791dbd07244ea91a54558a2c736b99d0dba82c76f304936568" [label=""];
  "sha256:bd6504b3dcc28a791dbd07244ea91a54558a2c736b99d0dba82c76f304936568" -> "sha256:65f48f0918f5b912a70f45a25f7ea7e38ab6d8632a852a41ff2e5371ee0b82a8" [label=""];
  "sha256:65f48f0918f5b912a70f45a25f7ea7e38ab6d8632a852a41ff2e5371ee0b82a8" -> "sha256:a2da8555192d090507a7ed4ccf4ade842caf0e9bf7389b7370927665d946ee1c" [label=""];
  "sha256:a2da8555192d090507a7ed4ccf4ade842caf0e9bf7389b7370927665d946ee1c" -> "sha256:cc0ed000fe92b5bbf16c3952184c322eef35e312d4db0bf767c26be60a62605d" [label=""];
  "sha256:cc0ed000fe92b5bbf16c3952184c322eef35e312d4db0bf767c26be60a62605d" -> "sha256:1f8de8eecae91ed64bf14f5730496ac986ce05e37ccc13d846eb2b45b41d2482" [label=""];
  "sha256:1f8de8eecae91ed64bf14f5730496ac986ce05e37ccc13d846eb2b45b41d2482" -> "sha256:f45a03e93610cd4d2fbfd1459d8311696f1edf4753e9c7a846c81b651557676e" [label=""];
  "sha256:f45a03e93610cd4d2fbfd1459d8311696f1edf4753e9c7a846c81b651557676e" -> "sha256:6aa8d66b767bf4abfee36b3cba11a4dc465566a2948507ff85a2cf26ca8261ca" [label=""];
}

