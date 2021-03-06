[app/sources/292703682.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3444b604ab43ca96359cb7585ffc621ea5a222af2d70e2807e0da5dc0ab96bd3" [label="/bin/sh -c apt-get update > /dev/null" shape="box"];
  "sha256:c56fa496c7ec55634b705f395a4d51ccd168d0d4ee2a985934c84b7e7003c654" [label="/bin/sh -c apt-get install -yqq locales > /dev/null" shape="box"];
  "sha256:eb740bdfe9fd8a4c103690f68df8a18c83ad18a914eb74ab8a34070f07776a20" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" [label="local://context" shape="ellipse"];
  "sha256:225ca4e6fc65b3b971d42278c1fbc0ffa42ae67186386731a9de23bca78df1ac" [label="copy{src=/postgresql.conf, dest=/postgresql.conf}" shape="note"];
  "sha256:46b7d5c3e37a395086a8bddd97dcd087994ee307a4809ac18df5d408c5b83d76" [label="copy{src=/pg_hba.conf, dest=/pg_hba.conf}" shape="note"];
  "sha256:10d3cd34bb92fe7f1399b312263c14af988e3b038735045fd5ab59a5d9e6a775" [label="copy{src=/60-postgresql-shm.conf, dest=/60-postgresql-shm.conf}" shape="note"];
  "sha256:7ac17594b079bc89faea0adcd6613681f8c2c924f9fd6ffbf22657cd05d9b024" [label="copy{src=/create-postgres-database.sql, dest=/create-postgres-database.sql}" shape="note"];
  "sha256:57bbfef1321cefc5d84f97403dfcdeaeb4682eead38c943da668c8c6d11fbc6a" [label="copy{src=/create-postgres.sql, dest=/create-postgres.sql}" shape="note"];
  "sha256:12c826f35d893f86db6a3b98831cb81ac1fe327dbcab6aae545b1360e24c594d" [label="/bin/sh -c apt-get -y update > /dev/null" shape="box"];
  "sha256:1471a1bf164d7f30b14cd66b374c88eb6d98ea83a9ae1ae94c523603bae43925" [label="/bin/sh -c apt-get -y install -o Dpkg::Options::=\"--force-confdef\" -o Dpkg::Options::=\"--force-confold\" postgresql > /dev/null" shape="box"];
  "sha256:6f4c34cb378757a5d8d129fc340f20e11649c344cd3af9239ab548f6736c65b2" [label="/bin/sh -c mv postgresql.conf /etc/postgresql/${PG_VERSION}/main/postgresql.conf" shape="box"];
  "sha256:0681eeb29ddcc44d76c1240b8de6a0142e0607f32379c1fd1b9fd74e68355925" [label="/bin/sh -c mv pg_hba.conf /etc/postgresql/${PG_VERSION}/main/pg_hba.conf" shape="box"];
  "sha256:e6dad2f4a360dd74eedfc202db5e3b0a959d7204f268f6d831756bfac1487426" [label="/bin/sh -c chown -Rf postgres:postgres /etc/postgresql/${PG_VERSION}/main" shape="box"];
  "sha256:f6d0c928a1fa78fd8c9f6cf2186ee605cf4045c8922203b3c85338e6ac761316" [label="/bin/sh -c mkdir /ssd" shape="box"];
  "sha256:0af7c1d7b11a31e9b1c2c55f6f802a9de87ad1a61322d59d53fb19adc2ca4e1c" [label="/bin/sh -c cp -R -p /var/lib/postgresql/${PG_VERSION}/main /ssd/postgresql" shape="box"];
  "sha256:beaad04071599b063fcfd6eadd44c0212a9e2af463ae2d0f12df2647eacbcc6c" [label="/bin/sh -c cp /etc/postgresql/${PG_VERSION}/main/postgresql.conf /ssd/postgresql" shape="box"];
  "sha256:f3549ff69457bc33a64efd890db823342beb5d01b6a6fa480745f1a351a71743" [label="/bin/sh -c mv 60-postgresql-shm.conf /etc/sysctl.d/60-postgresql-shm.conf" shape="box"];
  "sha256:1877eb9e46a8f7e2b92e9fed25e5a09af912520b85f7041d5f9ab341a525db83" [label="/bin/sh -c chown -Rf postgres:postgres /var/run/postgresql" shape="box"];
  "sha256:daa8e4521595a2a84b6111ba07ec7370da621027c0f5f56a86151c8ed41751f8" [label="/bin/sh -c chmod 2777 /var/run/postgresql" shape="box"];
  "sha256:cc2a08aa32e88d680b7cf6209cd3921efad5d579726b815fb85f0c2f124f5228" [label="/bin/sh -c chown postgres:postgres /etc/sysctl.d/60-postgresql-shm.conf" shape="box"];
  "sha256:7d317b8340810447948490418fbcc3922b9c4ba62285d8e2a810738b9950f3ab" [label="/bin/sh -c chown postgres:postgres create-postgres*" shape="box"];
  "sha256:f79b1d43c4370010b86f8313841f81f212e7b026d0cb1b83a723f55c60bb236a" [label="/bin/sh -c chown -Rf postgres:postgres /ssd" shape="box"];
  "sha256:8e556f0c38b4ab44e6b7b7e063a178c6fea6bb6a0bf7cb51f2c532945781297c" [label="/bin/sh -c service postgresql start &&     until psql -c \"\\q\"; do sleep 1; done &&     psql < create-postgres-database.sql &&     psql -a hello_world < create-postgres.sql &&     service postgresql stop" shape="box"];
  "sha256:b5b3e86f30a088f553c41317114dc27b77585b234bc69f46dfa1230ba2c87812" [label="sha256:b5b3e86f30a088f553c41317114dc27b77585b234bc69f46dfa1230ba2c87812" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3444b604ab43ca96359cb7585ffc621ea5a222af2d70e2807e0da5dc0ab96bd3" [label=""];
  "sha256:3444b604ab43ca96359cb7585ffc621ea5a222af2d70e2807e0da5dc0ab96bd3" -> "sha256:c56fa496c7ec55634b705f395a4d51ccd168d0d4ee2a985934c84b7e7003c654" [label=""];
  "sha256:c56fa496c7ec55634b705f395a4d51ccd168d0d4ee2a985934c84b7e7003c654" -> "sha256:eb740bdfe9fd8a4c103690f68df8a18c83ad18a914eb74ab8a34070f07776a20" [label=""];
  "sha256:eb740bdfe9fd8a4c103690f68df8a18c83ad18a914eb74ab8a34070f07776a20" -> "sha256:225ca4e6fc65b3b971d42278c1fbc0ffa42ae67186386731a9de23bca78df1ac" [label=""];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" -> "sha256:225ca4e6fc65b3b971d42278c1fbc0ffa42ae67186386731a9de23bca78df1ac" [label=""];
  "sha256:225ca4e6fc65b3b971d42278c1fbc0ffa42ae67186386731a9de23bca78df1ac" -> "sha256:46b7d5c3e37a395086a8bddd97dcd087994ee307a4809ac18df5d408c5b83d76" [label=""];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" -> "sha256:46b7d5c3e37a395086a8bddd97dcd087994ee307a4809ac18df5d408c5b83d76" [label=""];
  "sha256:46b7d5c3e37a395086a8bddd97dcd087994ee307a4809ac18df5d408c5b83d76" -> "sha256:10d3cd34bb92fe7f1399b312263c14af988e3b038735045fd5ab59a5d9e6a775" [label=""];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" -> "sha256:10d3cd34bb92fe7f1399b312263c14af988e3b038735045fd5ab59a5d9e6a775" [label=""];
  "sha256:10d3cd34bb92fe7f1399b312263c14af988e3b038735045fd5ab59a5d9e6a775" -> "sha256:7ac17594b079bc89faea0adcd6613681f8c2c924f9fd6ffbf22657cd05d9b024" [label=""];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" -> "sha256:7ac17594b079bc89faea0adcd6613681f8c2c924f9fd6ffbf22657cd05d9b024" [label=""];
  "sha256:7ac17594b079bc89faea0adcd6613681f8c2c924f9fd6ffbf22657cd05d9b024" -> "sha256:57bbfef1321cefc5d84f97403dfcdeaeb4682eead38c943da668c8c6d11fbc6a" [label=""];
  "sha256:28d9c3407cddeb0c1a45980cb68d47b4fa5906ea779382e4dc07262471cbae51" -> "sha256:57bbfef1321cefc5d84f97403dfcdeaeb4682eead38c943da668c8c6d11fbc6a" [label=""];
  "sha256:57bbfef1321cefc5d84f97403dfcdeaeb4682eead38c943da668c8c6d11fbc6a" -> "sha256:12c826f35d893f86db6a3b98831cb81ac1fe327dbcab6aae545b1360e24c594d" [label=""];
  "sha256:12c826f35d893f86db6a3b98831cb81ac1fe327dbcab6aae545b1360e24c594d" -> "sha256:1471a1bf164d7f30b14cd66b374c88eb6d98ea83a9ae1ae94c523603bae43925" [label=""];
  "sha256:1471a1bf164d7f30b14cd66b374c88eb6d98ea83a9ae1ae94c523603bae43925" -> "sha256:6f4c34cb378757a5d8d129fc340f20e11649c344cd3af9239ab548f6736c65b2" [label=""];
  "sha256:6f4c34cb378757a5d8d129fc340f20e11649c344cd3af9239ab548f6736c65b2" -> "sha256:0681eeb29ddcc44d76c1240b8de6a0142e0607f32379c1fd1b9fd74e68355925" [label=""];
  "sha256:0681eeb29ddcc44d76c1240b8de6a0142e0607f32379c1fd1b9fd74e68355925" -> "sha256:e6dad2f4a360dd74eedfc202db5e3b0a959d7204f268f6d831756bfac1487426" [label=""];
  "sha256:e6dad2f4a360dd74eedfc202db5e3b0a959d7204f268f6d831756bfac1487426" -> "sha256:f6d0c928a1fa78fd8c9f6cf2186ee605cf4045c8922203b3c85338e6ac761316" [label=""];
  "sha256:f6d0c928a1fa78fd8c9f6cf2186ee605cf4045c8922203b3c85338e6ac761316" -> "sha256:0af7c1d7b11a31e9b1c2c55f6f802a9de87ad1a61322d59d53fb19adc2ca4e1c" [label=""];
  "sha256:0af7c1d7b11a31e9b1c2c55f6f802a9de87ad1a61322d59d53fb19adc2ca4e1c" -> "sha256:beaad04071599b063fcfd6eadd44c0212a9e2af463ae2d0f12df2647eacbcc6c" [label=""];
  "sha256:beaad04071599b063fcfd6eadd44c0212a9e2af463ae2d0f12df2647eacbcc6c" -> "sha256:f3549ff69457bc33a64efd890db823342beb5d01b6a6fa480745f1a351a71743" [label=""];
  "sha256:f3549ff69457bc33a64efd890db823342beb5d01b6a6fa480745f1a351a71743" -> "sha256:1877eb9e46a8f7e2b92e9fed25e5a09af912520b85f7041d5f9ab341a525db83" [label=""];
  "sha256:1877eb9e46a8f7e2b92e9fed25e5a09af912520b85f7041d5f9ab341a525db83" -> "sha256:daa8e4521595a2a84b6111ba07ec7370da621027c0f5f56a86151c8ed41751f8" [label=""];
  "sha256:daa8e4521595a2a84b6111ba07ec7370da621027c0f5f56a86151c8ed41751f8" -> "sha256:cc2a08aa32e88d680b7cf6209cd3921efad5d579726b815fb85f0c2f124f5228" [label=""];
  "sha256:cc2a08aa32e88d680b7cf6209cd3921efad5d579726b815fb85f0c2f124f5228" -> "sha256:7d317b8340810447948490418fbcc3922b9c4ba62285d8e2a810738b9950f3ab" [label=""];
  "sha256:7d317b8340810447948490418fbcc3922b9c4ba62285d8e2a810738b9950f3ab" -> "sha256:f79b1d43c4370010b86f8313841f81f212e7b026d0cb1b83a723f55c60bb236a" [label=""];
  "sha256:f79b1d43c4370010b86f8313841f81f212e7b026d0cb1b83a723f55c60bb236a" -> "sha256:8e556f0c38b4ab44e6b7b7e063a178c6fea6bb6a0bf7cb51f2c532945781297c" [label=""];
  "sha256:8e556f0c38b4ab44e6b7b7e063a178c6fea6bb6a0bf7cb51f2c532945781297c" -> "sha256:b5b3e86f30a088f553c41317114dc27b77585b234bc69f46dfa1230ba2c87812" [label=""];
}

