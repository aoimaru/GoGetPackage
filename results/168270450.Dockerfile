[app/sources/168270450.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" [label="/bin/sh -c yum -y --setopt=tsflags=nodocs install https://www.softwarecollections.org/en/scls/rhscl/devtoolset-4/epel-6-x86_64/download/rhscl-devtoolset-4-epel-6-x86_64.noarch.rpm &&     yum clean all" shape="box"];
  "sha256:f2a1c3fbf4d95da2d78c3b39807f60e9ee4822618b62e7a8f6b50fc4f48cd9df" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs devtoolset-4-oprofile && yum clean all" shape="box"];
  "sha256:f391eb210a17e65fdb4e1d85141c3992180848fca3cb219e5c35fa20b6e49a24" [label="local://context" shape="ellipse"];
  "sha256:89a4681d6c0d521ebd64c54f6736ddc1aac978d9f5cf1fc6d6cf4c06f4434cc7" [label="copy{src=/enabledevtoolset-4.sh, dest=/usr/share/cont-layer/common/env/enabledevtoolset-4.sh}" shape="note"];
  "sha256:cd759e49c4df7666beafa4ec7c71eaa75bc81aee2015b0fdadee28ac74f05bd6" [label="copy{src=/usr, dest=/usr}" shape="note"];
  "sha256:cff5d383fa4cabfa7c8052219d30e7a5ba14c96b3f0b02cf4257bf8891898e02" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:fec658b408a0e10e11334c5c4a0f9f6d765d2ef720cd0fdd92a0226ec449c27a" [label="copy{src=/root, dest=/root}" shape="note"];
  "sha256:aa3d8180c848cf16739612d185f9d87946263fb9597d60e5495e072580282976" [label="/bin/sh -c groupadd -r default -f -g 1001 &&         useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin                         -c \"Default Application User\" default" shape="box"];
  "sha256:338894c16ad3b27889637f12e58dbf55eae50758ad582d129bbe10e5d7e00088" [label="sha256:338894c16ad3b27889637f12e58dbf55eae50758ad582d129bbe10e5d7e00088" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" [label=""];
  "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" -> "sha256:f2a1c3fbf4d95da2d78c3b39807f60e9ee4822618b62e7a8f6b50fc4f48cd9df" [label=""];
  "sha256:f2a1c3fbf4d95da2d78c3b39807f60e9ee4822618b62e7a8f6b50fc4f48cd9df" -> "sha256:89a4681d6c0d521ebd64c54f6736ddc1aac978d9f5cf1fc6d6cf4c06f4434cc7" [label=""];
  "sha256:f391eb210a17e65fdb4e1d85141c3992180848fca3cb219e5c35fa20b6e49a24" -> "sha256:89a4681d6c0d521ebd64c54f6736ddc1aac978d9f5cf1fc6d6cf4c06f4434cc7" [label=""];
  "sha256:89a4681d6c0d521ebd64c54f6736ddc1aac978d9f5cf1fc6d6cf4c06f4434cc7" -> "sha256:cd759e49c4df7666beafa4ec7c71eaa75bc81aee2015b0fdadee28ac74f05bd6" [label=""];
  "sha256:f391eb210a17e65fdb4e1d85141c3992180848fca3cb219e5c35fa20b6e49a24" -> "sha256:cd759e49c4df7666beafa4ec7c71eaa75bc81aee2015b0fdadee28ac74f05bd6" [label=""];
  "sha256:cd759e49c4df7666beafa4ec7c71eaa75bc81aee2015b0fdadee28ac74f05bd6" -> "sha256:cff5d383fa4cabfa7c8052219d30e7a5ba14c96b3f0b02cf4257bf8891898e02" [label=""];
  "sha256:f391eb210a17e65fdb4e1d85141c3992180848fca3cb219e5c35fa20b6e49a24" -> "sha256:cff5d383fa4cabfa7c8052219d30e7a5ba14c96b3f0b02cf4257bf8891898e02" [label=""];
  "sha256:cff5d383fa4cabfa7c8052219d30e7a5ba14c96b3f0b02cf4257bf8891898e02" -> "sha256:fec658b408a0e10e11334c5c4a0f9f6d765d2ef720cd0fdd92a0226ec449c27a" [label=""];
  "sha256:f391eb210a17e65fdb4e1d85141c3992180848fca3cb219e5c35fa20b6e49a24" -> "sha256:fec658b408a0e10e11334c5c4a0f9f6d765d2ef720cd0fdd92a0226ec449c27a" [label=""];
  "sha256:fec658b408a0e10e11334c5c4a0f9f6d765d2ef720cd0fdd92a0226ec449c27a" -> "sha256:aa3d8180c848cf16739612d185f9d87946263fb9597d60e5495e072580282976" [label=""];
  "sha256:aa3d8180c848cf16739612d185f9d87946263fb9597d60e5495e072580282976" -> "sha256:338894c16ad3b27889637f12e58dbf55eae50758ad582d129bbe10e5d7e00088" [label=""];
}

