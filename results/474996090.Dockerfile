[app/sources/474996090.Dockerfile]
digraph {
  "sha256:8952dff19b6763e9268745daf90570f25ace9a81d5c282c94922400f07d2683d" [label="local://context" shape="ellipse"];
  "sha256:621c41f3294b7cade90993e29e3c83bd88a9369b371dd2f390fbc943b5ff9c34" [label="docker-image://registry.centos.org/centos/centos:latest" shape="ellipse"];
  "sha256:b2c67b7e388e31963a3224a2c10a9df606c3a6513fdf2943e8e977066bbfd170" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:2224e51ca1cbf7e7fbbd13228db48be4be61efe0754f48a7d7b9c705527c597a" [label="/bin/sh -c yum -y install mariadb-server" shape="box"];
  "sha256:e9838ceef482b2b563e97bfc538d6e19bc476f2a9a1fd88ab4ac20f2af2fce88" [label="copy{src=/gss_db.sql, dest=/tmp/gss_db.sql}" shape="note"];
  "sha256:eb3176d2e38e7e8639b82c8c712d2355fd9befedcc682ce032652d9ccd0a110b" [label="copy{src=/mariadb-prepare-db-dir, dest=/usr/libexec/mariadb-prepare-db-dir}" shape="note"];
  "sha256:8ffa498796152ef302ac07743a758d28be32efa4fb8aae6327752c4c4dfdc39c" [label="/bin/sh -c /usr/libexec/mariadb-prepare-db-dir" shape="box"];
  "sha256:3be5d32de3d0d91e141104048da2bfe2c0f1065e35cd18b62dbedcba6edf4b42" [label="/bin/sh -c /usr/bin/mysqld_safe --basedir=/usr &     sleep 10s &&     /usr/bin/mysqladmin -u root password 'redhat' &&     mysql --user=root --password=redhat < /tmp/gss_db.sql &&     mysqladmin shutdown --password=redhat" shape="box"];
  "sha256:0706d023fc06a05bb357f175f73ae59ee3b9b2d5885524267fb5cc99f680eaea" [label="sha256:0706d023fc06a05bb357f175f73ae59ee3b9b2d5885524267fb5cc99f680eaea" shape="plaintext"];
  "sha256:621c41f3294b7cade90993e29e3c83bd88a9369b371dd2f390fbc943b5ff9c34" -> "sha256:b2c67b7e388e31963a3224a2c10a9df606c3a6513fdf2943e8e977066bbfd170" [label=""];
  "sha256:b2c67b7e388e31963a3224a2c10a9df606c3a6513fdf2943e8e977066bbfd170" -> "sha256:2224e51ca1cbf7e7fbbd13228db48be4be61efe0754f48a7d7b9c705527c597a" [label=""];
  "sha256:2224e51ca1cbf7e7fbbd13228db48be4be61efe0754f48a7d7b9c705527c597a" -> "sha256:e9838ceef482b2b563e97bfc538d6e19bc476f2a9a1fd88ab4ac20f2af2fce88" [label=""];
  "sha256:8952dff19b6763e9268745daf90570f25ace9a81d5c282c94922400f07d2683d" -> "sha256:e9838ceef482b2b563e97bfc538d6e19bc476f2a9a1fd88ab4ac20f2af2fce88" [label=""];
  "sha256:e9838ceef482b2b563e97bfc538d6e19bc476f2a9a1fd88ab4ac20f2af2fce88" -> "sha256:eb3176d2e38e7e8639b82c8c712d2355fd9befedcc682ce032652d9ccd0a110b" [label=""];
  "sha256:8952dff19b6763e9268745daf90570f25ace9a81d5c282c94922400f07d2683d" -> "sha256:eb3176d2e38e7e8639b82c8c712d2355fd9befedcc682ce032652d9ccd0a110b" [label=""];
  "sha256:eb3176d2e38e7e8639b82c8c712d2355fd9befedcc682ce032652d9ccd0a110b" -> "sha256:8ffa498796152ef302ac07743a758d28be32efa4fb8aae6327752c4c4dfdc39c" [label=""];
  "sha256:8ffa498796152ef302ac07743a758d28be32efa4fb8aae6327752c4c4dfdc39c" -> "sha256:3be5d32de3d0d91e141104048da2bfe2c0f1065e35cd18b62dbedcba6edf4b42" [label=""];
  "sha256:3be5d32de3d0d91e141104048da2bfe2c0f1065e35cd18b62dbedcba6edf4b42" -> "sha256:0706d023fc06a05bb357f175f73ae59ee3b9b2d5885524267fb5cc99f680eaea" [label=""];
}

