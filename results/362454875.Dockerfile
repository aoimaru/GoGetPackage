[app/sources/362454875.Dockerfile]
digraph {
  "sha256:46bc4aa46ca5f44d555c6594d8c568042f131abba1c992cf0553d3b17292b931" [label="docker-image://docker.io/mayjojo/hawq-devel:centos7" shape="ellipse"];
  "sha256:3678d4b5ff6257556be52c0fe5a5ac5d34a57e3acc3d4fd9b87a2833798db274" [label="/bin/sh -c curl -L \"http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.3.2.0/hdp.repo\" -o /etc/yum.repos.d/hdp.repo &&  yum install -y hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoop-mapreduce hadoop-client hdp-select &&  yum clean all" shape="box"];
  "sha256:b971c9ebcef96573fb958afa775505670cec70044ad8b98d0eaa6c724af7d9c6" [label="/bin/sh -c ln -s /usr/hdp/current/hadoop-hdfs-namenode/../hadoop/sbin/hadoop-daemon.sh /usr/bin/hadoop-daemon.sh" shape="box"];
  "sha256:ed4c0eb415c609c6853a656fdae21e31b040d8255a9a3b7fe21cdcec6f24f05d" [label="local://context" shape="ellipse"];
  "sha256:6b437eb21076120eb45db7b4cf8fac13ef74b4cf3dd8cd53f6363b28afc94974" [label="copy{src=/conf/*, dest=/etc/hadoop/conf/}" shape="note"];
  "sha256:fc8a0b5f94a68db9ea090a6b5ef1f3b7e1beb749b2fba7c3b13051068f677017" [label="copy{src=/entrypoint.sh, dest=/usr/bin/entrypoint.sh}" shape="note"];
  "sha256:74bdcbbf6088311137dbdc928a136c0945ba00fba5bca937edfdac556d261285" [label="copy{src=/start-hdfs.sh, dest=/usr/bin/start-hdfs.sh}" shape="note"];
  "sha256:32bc713c9fe0850f7c1d24b675f442f10be217bd82bfd6d5e073f88cb5cf3b37" [label="sha256:32bc713c9fe0850f7c1d24b675f442f10be217bd82bfd6d5e073f88cb5cf3b37" shape="plaintext"];
  "sha256:46bc4aa46ca5f44d555c6594d8c568042f131abba1c992cf0553d3b17292b931" -> "sha256:3678d4b5ff6257556be52c0fe5a5ac5d34a57e3acc3d4fd9b87a2833798db274" [label=""];
  "sha256:3678d4b5ff6257556be52c0fe5a5ac5d34a57e3acc3d4fd9b87a2833798db274" -> "sha256:b971c9ebcef96573fb958afa775505670cec70044ad8b98d0eaa6c724af7d9c6" [label=""];
  "sha256:b971c9ebcef96573fb958afa775505670cec70044ad8b98d0eaa6c724af7d9c6" -> "sha256:6b437eb21076120eb45db7b4cf8fac13ef74b4cf3dd8cd53f6363b28afc94974" [label=""];
  "sha256:ed4c0eb415c609c6853a656fdae21e31b040d8255a9a3b7fe21cdcec6f24f05d" -> "sha256:6b437eb21076120eb45db7b4cf8fac13ef74b4cf3dd8cd53f6363b28afc94974" [label=""];
  "sha256:6b437eb21076120eb45db7b4cf8fac13ef74b4cf3dd8cd53f6363b28afc94974" -> "sha256:fc8a0b5f94a68db9ea090a6b5ef1f3b7e1beb749b2fba7c3b13051068f677017" [label=""];
  "sha256:ed4c0eb415c609c6853a656fdae21e31b040d8255a9a3b7fe21cdcec6f24f05d" -> "sha256:fc8a0b5f94a68db9ea090a6b5ef1f3b7e1beb749b2fba7c3b13051068f677017" [label=""];
  "sha256:fc8a0b5f94a68db9ea090a6b5ef1f3b7e1beb749b2fba7c3b13051068f677017" -> "sha256:74bdcbbf6088311137dbdc928a136c0945ba00fba5bca937edfdac556d261285" [label=""];
  "sha256:ed4c0eb415c609c6853a656fdae21e31b040d8255a9a3b7fe21cdcec6f24f05d" -> "sha256:74bdcbbf6088311137dbdc928a136c0945ba00fba5bca937edfdac556d261285" [label=""];
  "sha256:74bdcbbf6088311137dbdc928a136c0945ba00fba5bca937edfdac556d261285" -> "sha256:32bc713c9fe0850f7c1d24b675f442f10be217bd82bfd6d5e073f88cb5cf3b37" [label=""];
}

