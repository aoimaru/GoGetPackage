[app/sources/482258610.Dockerfile]
digraph {
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" [label="local://context" shape="ellipse"];
  "sha256:bb8db1343b0b4123cfc3c950880841e8b1b77577f06c9b9b4b50768aed227cd3" [label="copy{src=/conf/atomic/backrestrestore/help.1, dest=/help.1}" shape="note"];
  "sha256:7f1dc67a535ff4f075b6a9ca47c789da03e0151284df34577e7be58277d044c7" [label="copy{src=/conf/atomic/backrestrestore/help.md, dest=/help.md}" shape="note"];
  "sha256:6d4f29279113df91f0aa662fbc5ae5e39cba7a3f535572ab047d519a803eb471" [label="copy{src=/conf/licenses, dest=/licenses}" shape="note"];
  "sha256:789771f4358d69a9f07f6d55343b7a582959ce9cb485cff70be39fc219a7a46b" [label="copy{src=/conf/CRUNCHY-GPG-KEY.public, dest=/}" shape="note"];
  "sha256:f6f731e4241e97e53ae93ee34291960943a26177ec7de2fd66cfaf857ffc45c0" [label="copy{src=/conf/crunchypg96.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:6376b51c440a61c04396fb5f9d027e93fb6dabb958710801e2a0373337461b6d" [label="/bin/sh -c rpm --import CRUNCHY-GPG-KEY.public" shape="box"];
  "sha256:10c490902795faf8d02014204931fc0e950f55babb7ec0da11847a3a32e089ab" [label="/bin/sh -c rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm   && yum -y --enablerepo=rhel-7-server-ose-3.11-rpms --disablerepo=crunchy* update  && yum -y install  \thostname \tgettext         nss_wrapper  \tprocps-ng   && yum -y clean all" shape="box"];
  "sha256:660cd91e608eb4846c4e68e47d11f40d1aef8ae35d53406fc007677a5c4c6c90" [label="/bin/sh -c yum -y install postgresql96-server &&      yum -y install crunchy-backrest-\"${BACKREST_VERSION}\"  && yum -y clean all" shape="box"];
  "sha256:bd82f78b5279a534a908befbdbf78752bda8f10da65aa9257bf784c3b0e102d5" [label="copy{src=/conf/.bash_profile, dest=/var/lib/pgsql/}" shape="note"];
  "sha256:8fb854fa0642fe740f6283d68abd251431e05f3c4b269b8b9ea0cf62c99b4b21" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /pgdata /backrestrepo \t/var/lib/pgsql /var/log/pgbackrest" shape="box"];
  "sha256:89fbf66e0b48865a71a8f3782a24c1ab4e5320d977b88ccf0695d58af449a385" [label="/bin/sh -c chown -R postgres:postgres /opt/cpm  \t/pgdata /backrestrepo  \t/var/lib/pgsql /var/log/pgbackrest" shape="box"];
  "sha256:fe3b23fb65ca4d0fdf21bca957979e928fb116118f686c25099289e113311395" [label="copy{src=/bin/backrest_restore, dest=/opt/cpm/bin}" shape="note"];
  "sha256:8ce3f21d64e7b76d47fcdc5a8974ae823d70346e34ebf727fede7d509e767278" [label="copy{src=/conf/backrest_restore, dest=/opt/cpm/conf}" shape="note"];
  "sha256:425a7706404ed1e9cc61cda64ee3741c44844a87efb041e4a70f5b4b4bd047fa" [label="sha256:425a7706404ed1e9cc61cda64ee3741c44844a87efb041e4a70f5b4b4bd047fa" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:bb8db1343b0b4123cfc3c950880841e8b1b77577f06c9b9b4b50768aed227cd3" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:bb8db1343b0b4123cfc3c950880841e8b1b77577f06c9b9b4b50768aed227cd3" [label=""];
  "sha256:bb8db1343b0b4123cfc3c950880841e8b1b77577f06c9b9b4b50768aed227cd3" -> "sha256:7f1dc67a535ff4f075b6a9ca47c789da03e0151284df34577e7be58277d044c7" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:7f1dc67a535ff4f075b6a9ca47c789da03e0151284df34577e7be58277d044c7" [label=""];
  "sha256:7f1dc67a535ff4f075b6a9ca47c789da03e0151284df34577e7be58277d044c7" -> "sha256:6d4f29279113df91f0aa662fbc5ae5e39cba7a3f535572ab047d519a803eb471" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:6d4f29279113df91f0aa662fbc5ae5e39cba7a3f535572ab047d519a803eb471" [label=""];
  "sha256:6d4f29279113df91f0aa662fbc5ae5e39cba7a3f535572ab047d519a803eb471" -> "sha256:789771f4358d69a9f07f6d55343b7a582959ce9cb485cff70be39fc219a7a46b" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:789771f4358d69a9f07f6d55343b7a582959ce9cb485cff70be39fc219a7a46b" [label=""];
  "sha256:789771f4358d69a9f07f6d55343b7a582959ce9cb485cff70be39fc219a7a46b" -> "sha256:f6f731e4241e97e53ae93ee34291960943a26177ec7de2fd66cfaf857ffc45c0" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:f6f731e4241e97e53ae93ee34291960943a26177ec7de2fd66cfaf857ffc45c0" [label=""];
  "sha256:f6f731e4241e97e53ae93ee34291960943a26177ec7de2fd66cfaf857ffc45c0" -> "sha256:6376b51c440a61c04396fb5f9d027e93fb6dabb958710801e2a0373337461b6d" [label=""];
  "sha256:6376b51c440a61c04396fb5f9d027e93fb6dabb958710801e2a0373337461b6d" -> "sha256:10c490902795faf8d02014204931fc0e950f55babb7ec0da11847a3a32e089ab" [label=""];
  "sha256:10c490902795faf8d02014204931fc0e950f55babb7ec0da11847a3a32e089ab" -> "sha256:660cd91e608eb4846c4e68e47d11f40d1aef8ae35d53406fc007677a5c4c6c90" [label=""];
  "sha256:660cd91e608eb4846c4e68e47d11f40d1aef8ae35d53406fc007677a5c4c6c90" -> "sha256:bd82f78b5279a534a908befbdbf78752bda8f10da65aa9257bf784c3b0e102d5" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:bd82f78b5279a534a908befbdbf78752bda8f10da65aa9257bf784c3b0e102d5" [label=""];
  "sha256:bd82f78b5279a534a908befbdbf78752bda8f10da65aa9257bf784c3b0e102d5" -> "sha256:8fb854fa0642fe740f6283d68abd251431e05f3c4b269b8b9ea0cf62c99b4b21" [label=""];
  "sha256:8fb854fa0642fe740f6283d68abd251431e05f3c4b269b8b9ea0cf62c99b4b21" -> "sha256:89fbf66e0b48865a71a8f3782a24c1ab4e5320d977b88ccf0695d58af449a385" [label=""];
  "sha256:89fbf66e0b48865a71a8f3782a24c1ab4e5320d977b88ccf0695d58af449a385" -> "sha256:fe3b23fb65ca4d0fdf21bca957979e928fb116118f686c25099289e113311395" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:fe3b23fb65ca4d0fdf21bca957979e928fb116118f686c25099289e113311395" [label=""];
  "sha256:fe3b23fb65ca4d0fdf21bca957979e928fb116118f686c25099289e113311395" -> "sha256:8ce3f21d64e7b76d47fcdc5a8974ae823d70346e34ebf727fede7d509e767278" [label=""];
  "sha256:6577534eea3554629b307e6453df4abc00e82a50708ff5b490930c39941f3249" -> "sha256:8ce3f21d64e7b76d47fcdc5a8974ae823d70346e34ebf727fede7d509e767278" [label=""];
  "sha256:8ce3f21d64e7b76d47fcdc5a8974ae823d70346e34ebf727fede7d509e767278" -> "sha256:425a7706404ed1e9cc61cda64ee3741c44844a87efb041e4a70f5b4b4bd047fa" [label=""];
}

