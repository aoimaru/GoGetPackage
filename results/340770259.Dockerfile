[app/sources/340770259.Dockerfile]
digraph {
  "sha256:6a89099e8ead8235d9d0d3111777fe69ca24324cffe72e9a2d0c9d6c6e67922c" [label="docker-image://docker.io/library/oraclelinux:7-slim" shape="ellipse"];
  "sha256:1709268a3573f1ee88ea1f2b0f72c4d41217798169ac5e3223b12b58f6f5dd13" [label="/bin/sh -c mkdir $INSTALL_DIR" shape="box"];
  "sha256:4add102990a3991f75306df6074c1e7c2255bb2a2666efa7b1142c90abfc899d" [label="local://context" shape="ellipse"];
  "sha256:829d5f46a7d462115c71f860697896eda25421ea17dc2f2e1d2b47d77d33eea1" [label="copy{src=/xe.rsp, dest=/tmp/install/},copy{src=/runOracle.sh, dest=/tmp/install/},copy{src=/checkDBStatus.sh, dest=/tmp/install/}" shape="note"];
  "sha256:64ad7b5b561d151ed6eaa9f5c08eb573f29d992216fa663bf959655c61207b76" [label="/bin/sh -c cd /tmp     && curl -k -o oracle-xe-11.2.0-1.0.x86_64.rpm.zip \"https://deathstar.primekey.com/index.php/s/Xg9ZbWMAdXxQ3Ad/download?path=%2FDatabases%2FOracle&files=oracle-xe-11.2.0-1.0.x86_64.rpm.zip\"" shape="box"];
  "sha256:9426247f3a311aa9d28fe7c770ca076d0fe55bdd1ba77d4789ed5851e991ab23" [label="/bin/sh -c cd $INSTALL_DIR" shape="box"];
  "sha256:fa50d795270a2de2a3d8782626708f012c26b8dc98dfc28228a4619be74c3a14" [label="/bin/sh -c ls -la /tmp" shape="box"];
  "sha256:b51e2e0cfa2503822515707f629a66b91340859cee20b41605e6509bdd8ba28a" [label="/bin/sh -c mv /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm.zip $INSTALL_DIR/oracle-xe-11.2.0-1.0.x86_64.rpm.zip" shape="box"];
  "sha256:4151e30343ae0f8e5ce835b0381349888d088f9717a6ad316c580e66ae07dccb" [label="/bin/sh -c chmod 777 $INSTALL_DIR/oracle-xe-11.2.0-1.0.x86_64.rpm.zip" shape="box"];
  "sha256:e499226757acc15ccdf08fbc0c771c6bd8d48c9b0cf28220aa90192a5c92b356" [label="/bin/sh -c yum -y install unzip libaio bc initscripts net-tools openssl compat-libstdc++-33 &&     rm -rf /var/cache/yum &&     cd $INSTALL_DIR &&     ls -la $INSTALL_DIR &&     unzip oracle-xe-11.2.0-1.0.x86_64.rpm.zip &&     rm $INSTALL_FILE_1 &&        cat() { declare -A PROC=([\"/proc/sys/kernel/shmmax\"]=4294967295 [\"/proc/sys/kernel/shmmni\"]=4096 [\"/proc/sys/kernel/shmall\"]=2097152 [\"/proc/sys/fs/file-max\"]=6815744); [[ ${PROC[$1]} == \"\" ]] && /usr/bin/cat $* || echo ${PROC[$1]}; } &&     free() { echo \"Swap: 2048 0 2048\"; } &&     export -f cat free &&     rpm -i Disk1/*.rpm &&        unset -f cat free &&     mkdir -p $ORACLE_BASE/scripts/setup &&     mkdir $ORACLE_BASE/scripts/startup &&     ln -s $ORACLE_BASE/scripts /docker-entrypoint-initdb.d &&     mkdir $ORACLE_BASE/oradata &&     chown -R oracle:dba $ORACLE_BASE &&     mv $INSTALL_DIR/$CONFIG_RSP $ORACLE_BASE/ &&     mv $INSTALL_DIR/$RUN_FILE $ORACLE_BASE/ &&     mv $INSTALL_DIR/$CHECK_DB_FILE $ORACLE_BASE/ &&     cd /tmp &&     rm -rf $INSTALL_DIR &&     chmod ug+x $ORACLE_BASE/*.sh" shape="box"];
  "sha256:e41504922dad1881af8388b21c1fd11bf610c68ebbbb2e51398bb91fb241bc43" [label="sha256:e41504922dad1881af8388b21c1fd11bf610c68ebbbb2e51398bb91fb241bc43" shape="plaintext"];
  "sha256:6a89099e8ead8235d9d0d3111777fe69ca24324cffe72e9a2d0c9d6c6e67922c" -> "sha256:1709268a3573f1ee88ea1f2b0f72c4d41217798169ac5e3223b12b58f6f5dd13" [label=""];
  "sha256:1709268a3573f1ee88ea1f2b0f72c4d41217798169ac5e3223b12b58f6f5dd13" -> "sha256:829d5f46a7d462115c71f860697896eda25421ea17dc2f2e1d2b47d77d33eea1" [label=""];
  "sha256:4add102990a3991f75306df6074c1e7c2255bb2a2666efa7b1142c90abfc899d" -> "sha256:829d5f46a7d462115c71f860697896eda25421ea17dc2f2e1d2b47d77d33eea1" [label=""];
  "sha256:829d5f46a7d462115c71f860697896eda25421ea17dc2f2e1d2b47d77d33eea1" -> "sha256:64ad7b5b561d151ed6eaa9f5c08eb573f29d992216fa663bf959655c61207b76" [label=""];
  "sha256:64ad7b5b561d151ed6eaa9f5c08eb573f29d992216fa663bf959655c61207b76" -> "sha256:9426247f3a311aa9d28fe7c770ca076d0fe55bdd1ba77d4789ed5851e991ab23" [label=""];
  "sha256:9426247f3a311aa9d28fe7c770ca076d0fe55bdd1ba77d4789ed5851e991ab23" -> "sha256:fa50d795270a2de2a3d8782626708f012c26b8dc98dfc28228a4619be74c3a14" [label=""];
  "sha256:fa50d795270a2de2a3d8782626708f012c26b8dc98dfc28228a4619be74c3a14" -> "sha256:b51e2e0cfa2503822515707f629a66b91340859cee20b41605e6509bdd8ba28a" [label=""];
  "sha256:b51e2e0cfa2503822515707f629a66b91340859cee20b41605e6509bdd8ba28a" -> "sha256:4151e30343ae0f8e5ce835b0381349888d088f9717a6ad316c580e66ae07dccb" [label=""];
  "sha256:4151e30343ae0f8e5ce835b0381349888d088f9717a6ad316c580e66ae07dccb" -> "sha256:e499226757acc15ccdf08fbc0c771c6bd8d48c9b0cf28220aa90192a5c92b356" [label=""];
  "sha256:e499226757acc15ccdf08fbc0c771c6bd8d48c9b0cf28220aa90192a5c92b356" -> "sha256:e41504922dad1881af8388b21c1fd11bf610c68ebbbb2e51398bb91fb241bc43" [label=""];
}

