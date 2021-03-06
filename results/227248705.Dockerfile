[app/sources/227248705.Dockerfile]
digraph {
  "sha256:5fd18804b18e4d961e18da463e27ed2e50ea62173e506cdb81d559e5a98dcae8" [label="docker-image://docker.io/izone/hadoop:cos7-anaconda" shape="ellipse"];
  "sha256:efef56b096b11e22bd5ef0e49c1b18c5d703962f07f1075234625a1722295de5" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/zookeeper-${ZOOKEEPER_VERSION}/ /opt/zookeeper     && mkdir /opt/zookeeper/data" shape="box"];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" [label="local://context" shape="ellipse"];
  "sha256:30aa14f5ca59d916d04623cb42e60f558fa8bcd1823de7aa76bc9dcba201b5bb" [label="copy{src=/zoo.cfg, dest=/opt/zookeeper/conf/zoo.cfg}" shape="note"];
  "sha256:8c7902643f4cbac640fd0fa860360a26a98d1a72eb3a2b8093e669137dc04d90" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/hbase/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/hbase-${HBASE_VERSION}/ /opt/hbase" shape="box"];
  "sha256:7fd455220f2dff5d75cfbb4b74c4fffc2991ba47543dcf4ff197b421e28485dd" [label="copy{src=/hbase-env.sh, dest=/opt/hbase/conf/hbase-env.sh}" shape="note"];
  "sha256:2ece74ea447946d3e5eaf55b70f37ece7e7c428376292f83762a51e3ee352e86" [label="copy{src=/hbase-site.xml, dest=/opt/hbase/conf/hbase-site.xml}" shape="note"];
  "sha256:101bde871c1a143b88a71f9af33ea9a42b59aa772d822d6069c24832bc6a381f" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/apache-hive-${HIVE_VERSION}-bin/ /opt/hive" shape="box"];
  "sha256:d116f4565c33455232217a9ff0dfba222cd859de4cc840914c20d79c457bb722" [label="copy{src=/hive-env.sh, dest=/opt/hive/conf/hive-env.sh}" shape="note"];
  "sha256:a635617ae3db816f53a2172f818e746beb65258264380b8d833e7185667a0655" [label="copy{src=/hive-default.xml, dest=/opt/hive/conf/hive-default.xml}" shape="note"];
  "sha256:89e034a91fdefac9a141a8c562cef253276abcaaf2b243b6d15949a7bcb4fd4b" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/pig/pig-${PIG_VERSION}/pig-${PIG_VERSION}.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/pig-${PIG_VERSION}/ /opt/pig" shape="box"];
  "sha256:708e91bf03443675845ed6a23f6837ca2f279ddf309ba9f0616e1d4a6b87d0d9" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/sqoop/${SQOOP_VERSION}/sqoop-${SQOOP_VERSION}.bin__hadoop-2.0.4-alpha.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/sqoop-${SQOOP_VERSION}.bin__hadoop-2.0.4-alpha/ /opt/sqoop     && mkdir /opt/sqoop/hcatalog /opt/sqoop/accumulo" shape="box"];
  "sha256:9cc7ef9bb3f92df8b2180bd582e2bb3f70d0e51863a5ec01a804327b8dd808a8" [label="copy{src=/sqoop-env.sh, dest=/opt/sqoop/conf/sqoop-env.sh}" shape="note"];
  "sha256:4446eba06a4575522e3beb22fcbd8e87a3419180ea8c269cef3e2188b784f5c7" [label="/bin/sh -c ln -s /usr/local/jdbc/mysql-connector-java-5.1.40-bin.jar /opt/sqoop/lib/mysql-connector.jar     && ln -s /usr/local/jdbc/mariadb-java-client-1.4.6.jar /opt/sqoop/lib/mariadb-connector.jar     && ln -s /usr/local/jdbc/ojdbc7.jar /opt/sqoop/lib/ojdbc7.jar     && ln -s /usr/local/jdbc/postgresql-9.4.1212.jar /opt/sqoop/lib/postgresql-connector.jar" shape="box"];
  "sha256:eab84752c6eda44224ea2a9822540371a0e127a2b98edfbea225c775b54144db" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/flume/${FLUME_VERSION}/apache-flume-${FLUME_VERSION}-bin.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/apache-flume-${FLUME_VERSION}-bin/ /opt/flume" shape="box"];
  "sha256:c50163de90ffdc71e79d38d36143597da1e4b49a31a2d0638f633861a8c2a37c" [label="copy{src=/flume-env.sh, dest=/opt/flume/conf/flume-env.sh}" shape="note"];
  "sha256:58f2f596c8f0dcd59b9d5a5993bc370d0a2fb059c57ec21b6c96705cabf20dec" [label="/bin/sh -c curl http://ftp.unicamp.br/pub/apache/mahout/${MAHOUT_VERSION}/apache-mahout-distribution-${MAHOUT_VERSION}.tar.gz | tar -xzf - -C /usr/local/     && ln -s /usr/local/apache-mahout-distribution${MAHOUT_VERSION}/ /opt/mahout" shape="box"];
  "sha256:708652fdbae543531698784e7084cb9b3a7a724ea2edfab1ef190ca0285e7880" [label="copy{src=/start.sh, dest=/etc/start.sh}" shape="note"];
  "sha256:568528d0678dbb1275edd4bac40b99be4a6dc073a89c18d226d2d99188dfef6f" [label="/bin/sh -c chmod +x /etc/start.sh" shape="box"];
  "sha256:b96faf6eeb5946d7f45c3c607c9beda63ef14185c65f2289fee334b933b8605e" [label="/bin/sh -c sed -i '/PS1/d' $HOME/.bashrc     && echo 'export PS1=\"${RESET}[${RED}\\u${RESET}@${YELLOW}\\h${RESET}:${BLUE}\\w${RESET}]# ${RESET}\"' >>$HOME/.bashrc" shape="box"];
  "sha256:89e6f6adae774c8b3e5a647248fab8db7e7f72641aa6ab233377d9f1e4f9a37f" [label="sha256:89e6f6adae774c8b3e5a647248fab8db7e7f72641aa6ab233377d9f1e4f9a37f" shape="plaintext"];
  "sha256:5fd18804b18e4d961e18da463e27ed2e50ea62173e506cdb81d559e5a98dcae8" -> "sha256:efef56b096b11e22bd5ef0e49c1b18c5d703962f07f1075234625a1722295de5" [label=""];
  "sha256:efef56b096b11e22bd5ef0e49c1b18c5d703962f07f1075234625a1722295de5" -> "sha256:30aa14f5ca59d916d04623cb42e60f558fa8bcd1823de7aa76bc9dcba201b5bb" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:30aa14f5ca59d916d04623cb42e60f558fa8bcd1823de7aa76bc9dcba201b5bb" [label=""];
  "sha256:30aa14f5ca59d916d04623cb42e60f558fa8bcd1823de7aa76bc9dcba201b5bb" -> "sha256:8c7902643f4cbac640fd0fa860360a26a98d1a72eb3a2b8093e669137dc04d90" [label=""];
  "sha256:8c7902643f4cbac640fd0fa860360a26a98d1a72eb3a2b8093e669137dc04d90" -> "sha256:7fd455220f2dff5d75cfbb4b74c4fffc2991ba47543dcf4ff197b421e28485dd" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:7fd455220f2dff5d75cfbb4b74c4fffc2991ba47543dcf4ff197b421e28485dd" [label=""];
  "sha256:7fd455220f2dff5d75cfbb4b74c4fffc2991ba47543dcf4ff197b421e28485dd" -> "sha256:2ece74ea447946d3e5eaf55b70f37ece7e7c428376292f83762a51e3ee352e86" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:2ece74ea447946d3e5eaf55b70f37ece7e7c428376292f83762a51e3ee352e86" [label=""];
  "sha256:2ece74ea447946d3e5eaf55b70f37ece7e7c428376292f83762a51e3ee352e86" -> "sha256:101bde871c1a143b88a71f9af33ea9a42b59aa772d822d6069c24832bc6a381f" [label=""];
  "sha256:101bde871c1a143b88a71f9af33ea9a42b59aa772d822d6069c24832bc6a381f" -> "sha256:d116f4565c33455232217a9ff0dfba222cd859de4cc840914c20d79c457bb722" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:d116f4565c33455232217a9ff0dfba222cd859de4cc840914c20d79c457bb722" [label=""];
  "sha256:d116f4565c33455232217a9ff0dfba222cd859de4cc840914c20d79c457bb722" -> "sha256:a635617ae3db816f53a2172f818e746beb65258264380b8d833e7185667a0655" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:a635617ae3db816f53a2172f818e746beb65258264380b8d833e7185667a0655" [label=""];
  "sha256:a635617ae3db816f53a2172f818e746beb65258264380b8d833e7185667a0655" -> "sha256:89e034a91fdefac9a141a8c562cef253276abcaaf2b243b6d15949a7bcb4fd4b" [label=""];
  "sha256:89e034a91fdefac9a141a8c562cef253276abcaaf2b243b6d15949a7bcb4fd4b" -> "sha256:708e91bf03443675845ed6a23f6837ca2f279ddf309ba9f0616e1d4a6b87d0d9" [label=""];
  "sha256:708e91bf03443675845ed6a23f6837ca2f279ddf309ba9f0616e1d4a6b87d0d9" -> "sha256:9cc7ef9bb3f92df8b2180bd582e2bb3f70d0e51863a5ec01a804327b8dd808a8" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:9cc7ef9bb3f92df8b2180bd582e2bb3f70d0e51863a5ec01a804327b8dd808a8" [label=""];
  "sha256:9cc7ef9bb3f92df8b2180bd582e2bb3f70d0e51863a5ec01a804327b8dd808a8" -> "sha256:4446eba06a4575522e3beb22fcbd8e87a3419180ea8c269cef3e2188b784f5c7" [label=""];
  "sha256:4446eba06a4575522e3beb22fcbd8e87a3419180ea8c269cef3e2188b784f5c7" -> "sha256:eab84752c6eda44224ea2a9822540371a0e127a2b98edfbea225c775b54144db" [label=""];
  "sha256:eab84752c6eda44224ea2a9822540371a0e127a2b98edfbea225c775b54144db" -> "sha256:c50163de90ffdc71e79d38d36143597da1e4b49a31a2d0638f633861a8c2a37c" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:c50163de90ffdc71e79d38d36143597da1e4b49a31a2d0638f633861a8c2a37c" [label=""];
  "sha256:c50163de90ffdc71e79d38d36143597da1e4b49a31a2d0638f633861a8c2a37c" -> "sha256:58f2f596c8f0dcd59b9d5a5993bc370d0a2fb059c57ec21b6c96705cabf20dec" [label=""];
  "sha256:58f2f596c8f0dcd59b9d5a5993bc370d0a2fb059c57ec21b6c96705cabf20dec" -> "sha256:708652fdbae543531698784e7084cb9b3a7a724ea2edfab1ef190ca0285e7880" [label=""];
  "sha256:fe7b960f6b64badcc1585b6a0ac29deff2b6522ac77b57015e442fdeae150947" -> "sha256:708652fdbae543531698784e7084cb9b3a7a724ea2edfab1ef190ca0285e7880" [label=""];
  "sha256:708652fdbae543531698784e7084cb9b3a7a724ea2edfab1ef190ca0285e7880" -> "sha256:568528d0678dbb1275edd4bac40b99be4a6dc073a89c18d226d2d99188dfef6f" [label=""];
  "sha256:568528d0678dbb1275edd4bac40b99be4a6dc073a89c18d226d2d99188dfef6f" -> "sha256:b96faf6eeb5946d7f45c3c607c9beda63ef14185c65f2289fee334b933b8605e" [label=""];
  "sha256:b96faf6eeb5946d7f45c3c607c9beda63ef14185c65f2289fee334b933b8605e" -> "sha256:89e6f6adae774c8b3e5a647248fab8db7e7f72641aa6ab233377d9f1e4f9a37f" [label=""];
}

