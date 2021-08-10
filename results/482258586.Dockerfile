[app/sources/482258586.Dockerfile]
digraph {
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" [label="local://context" shape="ellipse"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:147e0b4eb1c009d31689f272d0858e03a07067c4d905c045caced55185a974a4" [label="copy{src=/conf/atomic/backup/help.1, dest=/help.1}" shape="note"];
  "sha256:a1ea2250e0540cd4306476c1381954e2f1c904c54bd214690f2d9e30d73a4011" [label="copy{src=/conf/atomic/backup/help.md, dest=/help.md}" shape="note"];
  "sha256:0c0a725c09cb2fbeb814f8af32d8ea30c72125b02719834507646479eda4b89d" [label="copy{src=/conf/licenses, dest=/licenses}" shape="note"];
  "sha256:98b3b16ae5f1412b8b6f4477142a321a1ad5ec7a2877bee19690204e96be6268" [label="copy{src=/conf/RPM-GPG-KEY-crunchydata, dest=/}" shape="note"];
  "sha256:1c1067925532213ee0edca124d05b3a2b2c23bf1f1c6d4fd58674c73de5989c9" [label="copy{src=/conf/crunchypg11.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:b8c72ae4fd24a0bc899f144aea99a595ddb42bdf478e76644ab9e63020be663f" [label="/bin/sh -c rpm --import RPM-GPG-KEY-crunchydata" shape="box"];
  "sha256:70c7037b5c406fa8ccb446f4af6b488a2266d0f2a8a6b75d064dabccb9b2f6a2" [label="/bin/sh -c rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  && yum -y --enablerepo=rhel-7-server-ose-3.11-rpms --disablerepo=crunchy* update  && yum install -y bind-utils \tgettext \thostname \tprocps-ng \tunzip  && yum -y install postgresql11 postgresql11-server  && yum clean all -y" shape="box"];
  "sha256:1cd544ef2dd0599c6cc26b344bceedb4093f11f034b5dba3b3b233ea5d1a9973" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /pgdata" shape="box"];
  "sha256:f82d96d78e652e19cbc899a63bb2138980dc060835769cb9368bad6e49ae92ef" [label="copy{src=/bin/backup, dest=/opt/cpm/bin}" shape="note"];
  "sha256:d726ee975db1e24375d9fc32d31db41a195ad0c2c02296d78ce0fba7227bde8e" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:43e63d7ecd7a367986da28674f10a978a6b5ee273ab8badf97a5a5185e4ab1d4" [label="copy{src=/conf/backup, dest=/opt/cpm/conf}" shape="note"];
  "sha256:41004913fd2d24e7418ec7ddb78203777d8d6852c0dd090230f53b76cc413754" [label="/bin/sh -c chown -R postgres:postgres  /opt/cpm /pgdata &&         chmod -R g=u /opt/cpm /pgdata" shape="box"];
  "sha256:8db15b23322a59037417b9735d430425b40fa46bc41c227a3e55c8ac9d719d79" [label="/bin/sh -c chmod g=u /etc/passwd && \tchmod g=u /etc/group" shape="box"];
  "sha256:72055e6c9634303089335721f11c0b8ed06b2f62cf632a53c169ffe6bcbaae24" [label="sha256:72055e6c9634303089335721f11c0b8ed06b2f62cf632a53c169ffe6bcbaae24" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:147e0b4eb1c009d31689f272d0858e03a07067c4d905c045caced55185a974a4" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:147e0b4eb1c009d31689f272d0858e03a07067c4d905c045caced55185a974a4" [label=""];
  "sha256:147e0b4eb1c009d31689f272d0858e03a07067c4d905c045caced55185a974a4" -> "sha256:a1ea2250e0540cd4306476c1381954e2f1c904c54bd214690f2d9e30d73a4011" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:a1ea2250e0540cd4306476c1381954e2f1c904c54bd214690f2d9e30d73a4011" [label=""];
  "sha256:a1ea2250e0540cd4306476c1381954e2f1c904c54bd214690f2d9e30d73a4011" -> "sha256:0c0a725c09cb2fbeb814f8af32d8ea30c72125b02719834507646479eda4b89d" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:0c0a725c09cb2fbeb814f8af32d8ea30c72125b02719834507646479eda4b89d" [label=""];
  "sha256:0c0a725c09cb2fbeb814f8af32d8ea30c72125b02719834507646479eda4b89d" -> "sha256:98b3b16ae5f1412b8b6f4477142a321a1ad5ec7a2877bee19690204e96be6268" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:98b3b16ae5f1412b8b6f4477142a321a1ad5ec7a2877bee19690204e96be6268" [label=""];
  "sha256:98b3b16ae5f1412b8b6f4477142a321a1ad5ec7a2877bee19690204e96be6268" -> "sha256:1c1067925532213ee0edca124d05b3a2b2c23bf1f1c6d4fd58674c73de5989c9" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:1c1067925532213ee0edca124d05b3a2b2c23bf1f1c6d4fd58674c73de5989c9" [label=""];
  "sha256:1c1067925532213ee0edca124d05b3a2b2c23bf1f1c6d4fd58674c73de5989c9" -> "sha256:b8c72ae4fd24a0bc899f144aea99a595ddb42bdf478e76644ab9e63020be663f" [label=""];
  "sha256:b8c72ae4fd24a0bc899f144aea99a595ddb42bdf478e76644ab9e63020be663f" -> "sha256:70c7037b5c406fa8ccb446f4af6b488a2266d0f2a8a6b75d064dabccb9b2f6a2" [label=""];
  "sha256:70c7037b5c406fa8ccb446f4af6b488a2266d0f2a8a6b75d064dabccb9b2f6a2" -> "sha256:1cd544ef2dd0599c6cc26b344bceedb4093f11f034b5dba3b3b233ea5d1a9973" [label=""];
  "sha256:1cd544ef2dd0599c6cc26b344bceedb4093f11f034b5dba3b3b233ea5d1a9973" -> "sha256:f82d96d78e652e19cbc899a63bb2138980dc060835769cb9368bad6e49ae92ef" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:f82d96d78e652e19cbc899a63bb2138980dc060835769cb9368bad6e49ae92ef" [label=""];
  "sha256:f82d96d78e652e19cbc899a63bb2138980dc060835769cb9368bad6e49ae92ef" -> "sha256:d726ee975db1e24375d9fc32d31db41a195ad0c2c02296d78ce0fba7227bde8e" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:d726ee975db1e24375d9fc32d31db41a195ad0c2c02296d78ce0fba7227bde8e" [label=""];
  "sha256:d726ee975db1e24375d9fc32d31db41a195ad0c2c02296d78ce0fba7227bde8e" -> "sha256:43e63d7ecd7a367986da28674f10a978a6b5ee273ab8badf97a5a5185e4ab1d4" [label=""];
  "sha256:dde197e6fc11964144a0352bcc35b50937a61ceb2f4017d18b0538d525fa25f8" -> "sha256:43e63d7ecd7a367986da28674f10a978a6b5ee273ab8badf97a5a5185e4ab1d4" [label=""];
  "sha256:43e63d7ecd7a367986da28674f10a978a6b5ee273ab8badf97a5a5185e4ab1d4" -> "sha256:41004913fd2d24e7418ec7ddb78203777d8d6852c0dd090230f53b76cc413754" [label=""];
  "sha256:41004913fd2d24e7418ec7ddb78203777d8d6852c0dd090230f53b76cc413754" -> "sha256:8db15b23322a59037417b9735d430425b40fa46bc41c227a3e55c8ac9d719d79" [label=""];
  "sha256:8db15b23322a59037417b9735d430425b40fa46bc41c227a3e55c8ac9d719d79" -> "sha256:72055e6c9634303089335721f11c0b8ed06b2f62cf632a53c169ffe6bcbaae24" [label=""];
}

