[app/sources/320301197.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ae7b73820b68bbfdb36521aedc5edfa4c24ce125785a2a896d924921fb226058" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8" shape="box"];
  "sha256:e036121400778c6cb02972b9b052d6b22cdcee42a3268c9265163a0fe0761050" [label="/bin/sh -c echo \"deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main\" > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:9d9309768604c93bbac53770a169e45320a432cfb9cd276d58c791bd3ebac569" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9e1dff4d93743f0f0d1a3efbbd914451e2920b640f88d73aba09d7b55793a6db" [label="/bin/sh -c apt-get -y -q install python-software-properties software-properties-common" shape="box"];
  "sha256:b2b4d10d32f8082b2fe01680427ac7acb664b0b9343fd2b53e086e7874b7111d" [label="/bin/sh -c apt-get -y -q install postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3" shape="box"];
  "sha256:de5cb49e48e638cd6a4b77e44e7ded1559850ed975920f1ec0d8ddc5c3159b24" [label="/bin/sh -c /etc/init.d/postgresql start &&    psql --command \"CREATE USER docker WITH SUPERUSER PASSWORD 'docker';\" &&    createdb -O docker docker" shape="box"];
  "sha256:261c8858057bf51ae39a94992777605d081e9b79132d0462b53237ccfd8c4e82" [label="/bin/sh -c echo \"host all  all    0.0.0.0/0  md5\" >> /etc/postgresql/9.3/main/pg_hba.conf" shape="box"];
  "sha256:015d72edb2d69815d1249e89b53e740626ef09fa99b0e5d80010ee9b919377df" [label="/bin/sh -c echo \"listen_addresses='*'\" >> /etc/postgresql/9.3/main/postgresql.conf" shape="box"];
  "sha256:aac9826cf365bc1c13cd2e4252a81a7e18b59a3414be7ebb71d212a2187a2617" [label="sha256:aac9826cf365bc1c13cd2e4252a81a7e18b59a3414be7ebb71d212a2187a2617" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:ae7b73820b68bbfdb36521aedc5edfa4c24ce125785a2a896d924921fb226058" [label=""];
  "sha256:ae7b73820b68bbfdb36521aedc5edfa4c24ce125785a2a896d924921fb226058" -> "sha256:e036121400778c6cb02972b9b052d6b22cdcee42a3268c9265163a0fe0761050" [label=""];
  "sha256:e036121400778c6cb02972b9b052d6b22cdcee42a3268c9265163a0fe0761050" -> "sha256:9d9309768604c93bbac53770a169e45320a432cfb9cd276d58c791bd3ebac569" [label=""];
  "sha256:9d9309768604c93bbac53770a169e45320a432cfb9cd276d58c791bd3ebac569" -> "sha256:9e1dff4d93743f0f0d1a3efbbd914451e2920b640f88d73aba09d7b55793a6db" [label=""];
  "sha256:9e1dff4d93743f0f0d1a3efbbd914451e2920b640f88d73aba09d7b55793a6db" -> "sha256:b2b4d10d32f8082b2fe01680427ac7acb664b0b9343fd2b53e086e7874b7111d" [label=""];
  "sha256:b2b4d10d32f8082b2fe01680427ac7acb664b0b9343fd2b53e086e7874b7111d" -> "sha256:de5cb49e48e638cd6a4b77e44e7ded1559850ed975920f1ec0d8ddc5c3159b24" [label=""];
  "sha256:de5cb49e48e638cd6a4b77e44e7ded1559850ed975920f1ec0d8ddc5c3159b24" -> "sha256:261c8858057bf51ae39a94992777605d081e9b79132d0462b53237ccfd8c4e82" [label=""];
  "sha256:261c8858057bf51ae39a94992777605d081e9b79132d0462b53237ccfd8c4e82" -> "sha256:015d72edb2d69815d1249e89b53e740626ef09fa99b0e5d80010ee9b919377df" [label=""];
  "sha256:015d72edb2d69815d1249e89b53e740626ef09fa99b0e5d80010ee9b919377df" -> "sha256:aac9826cf365bc1c13cd2e4252a81a7e18b59a3414be7ebb71d212a2187a2617" [label=""];
}

