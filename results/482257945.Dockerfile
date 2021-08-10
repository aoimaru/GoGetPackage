[app/sources/482257945.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:cf1fd279510acc26f3201e88f8bf95bf3a1b19892a171043f550761a5592a620" [label="/bin/sh -c rpm -Uvh https://download.postgresql.org/pub/repos/yum/${PGVERSION}/redhat/rhel-7-x86_64/${PGDG_REPO}" shape="box"];
  "sha256:577398e0efbe53bae49e17d008c6b5fd94bfb0188ef129666c42b259c346c0ac" [label="/bin/sh -c yum -y update && yum -y install epel-release  && yum -y install  \thostname \tgettext \tnss_wrapper  \tprocps-ng   && yum -y clean all" shape="box"];
  "sha256:e63da1a055ecd77596410a099fdbde2678bec3cec66bbb6de760a5d8378d3718" [label="/bin/sh -c yum -y install postgresql11-server   && yum -y install --disablerepo=\"${PGDG_REPO_DISABLE}\" pgbackrest-\"${BACKREST_VERSION}\"  && yum -y clean all" shape="box"];
  "sha256:84840a50383a3303b8b4071a517b78fc3462e663686bc9451b629c9bfbe0136c" [label="local://context" shape="ellipse"];
  "sha256:47ad7df9537e133d4942bd224be5e14aed08bfc51e41e7c4909289af47613ffe" [label="copy{src=/conf/.bash_profile, dest=/var/lib/pgsql/}" shape="note"];
  "sha256:0c4311d452bb30bab1bcc085f518ec198145bc9d3fbd05d080653e12d7aaecd8" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /pgdata /backrestrepo \t/var/lib/pgsql /var/log/pgbackrest" shape="box"];
  "sha256:3de14b1a573e3e9a48d6a5d643e7e23a81ad887bc04b3a5da217981db206c7ed" [label="/bin/sh -c chown -R postgres:postgres /opt/cpm  \t/pgdata /backrestrepo  \t/var/lib/pgsql /var/log/pgbackrest" shape="box"];
  "sha256:cd8dabf3d0b11d11326d8f5bd5462a0ee1b6865266d43439946cafe8692641f4" [label="copy{src=/bin/backrest_restore, dest=/opt/cpm/bin}" shape="note"];
  "sha256:723f7502316b153e7f89ed3089510a50ba6c811725410cc388cf2d23abdb782b" [label="copy{src=/conf/backrest_restore, dest=/opt/cpm/conf}" shape="note"];
  "sha256:ca4140004a71ebab820ec50f0759031e9b36257c7c47ae3f1283986e1e348d5d" [label="sha256:ca4140004a71ebab820ec50f0759031e9b36257c7c47ae3f1283986e1e348d5d" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:cf1fd279510acc26f3201e88f8bf95bf3a1b19892a171043f550761a5592a620" [label=""];
  "sha256:cf1fd279510acc26f3201e88f8bf95bf3a1b19892a171043f550761a5592a620" -> "sha256:577398e0efbe53bae49e17d008c6b5fd94bfb0188ef129666c42b259c346c0ac" [label=""];
  "sha256:577398e0efbe53bae49e17d008c6b5fd94bfb0188ef129666c42b259c346c0ac" -> "sha256:e63da1a055ecd77596410a099fdbde2678bec3cec66bbb6de760a5d8378d3718" [label=""];
  "sha256:e63da1a055ecd77596410a099fdbde2678bec3cec66bbb6de760a5d8378d3718" -> "sha256:47ad7df9537e133d4942bd224be5e14aed08bfc51e41e7c4909289af47613ffe" [label=""];
  "sha256:84840a50383a3303b8b4071a517b78fc3462e663686bc9451b629c9bfbe0136c" -> "sha256:47ad7df9537e133d4942bd224be5e14aed08bfc51e41e7c4909289af47613ffe" [label=""];
  "sha256:47ad7df9537e133d4942bd224be5e14aed08bfc51e41e7c4909289af47613ffe" -> "sha256:0c4311d452bb30bab1bcc085f518ec198145bc9d3fbd05d080653e12d7aaecd8" [label=""];
  "sha256:0c4311d452bb30bab1bcc085f518ec198145bc9d3fbd05d080653e12d7aaecd8" -> "sha256:3de14b1a573e3e9a48d6a5d643e7e23a81ad887bc04b3a5da217981db206c7ed" [label=""];
  "sha256:3de14b1a573e3e9a48d6a5d643e7e23a81ad887bc04b3a5da217981db206c7ed" -> "sha256:cd8dabf3d0b11d11326d8f5bd5462a0ee1b6865266d43439946cafe8692641f4" [label=""];
  "sha256:84840a50383a3303b8b4071a517b78fc3462e663686bc9451b629c9bfbe0136c" -> "sha256:cd8dabf3d0b11d11326d8f5bd5462a0ee1b6865266d43439946cafe8692641f4" [label=""];
  "sha256:cd8dabf3d0b11d11326d8f5bd5462a0ee1b6865266d43439946cafe8692641f4" -> "sha256:723f7502316b153e7f89ed3089510a50ba6c811725410cc388cf2d23abdb782b" [label=""];
  "sha256:84840a50383a3303b8b4071a517b78fc3462e663686bc9451b629c9bfbe0136c" -> "sha256:723f7502316b153e7f89ed3089510a50ba6c811725410cc388cf2d23abdb782b" [label=""];
  "sha256:723f7502316b153e7f89ed3089510a50ba6c811725410cc388cf2d23abdb782b" -> "sha256:ca4140004a71ebab820ec50f0759031e9b36257c7c47ae3f1283986e1e348d5d" [label=""];
}

