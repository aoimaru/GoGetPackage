[app/sources/354587122.Dockerfile]
digraph {
  "sha256:ed637e0f146b9553944ba43798af0c80e313a587fcbc3a58b6c192dfd81a31cb" [label="docker-image://docker.io/library/solr:5.5" shape="ellipse"];
  "sha256:30896da9fb6f7c449276d6379fab40e523de0859ba30ae222c818670452454c1" [label="/bin/sh -c if [ ${SOLR_DATAIMPORTHANDLER_MYSQL} = true ]; then     curl -L -o /tmp/mysql_connector.tar.gz \"https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.45.tar.gz\"        && mkdir /opt/solr/contrib/dataimporthandler/lib        && tar -zxvf /tmp/mysql_connector.tar.gz -C /opt/solr/contrib/dataimporthandler/lib \"mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar\" --strip-components 1        && rm /tmp/mysql_connector.tar.gz ;fi" shape="box"];
  "sha256:c36fbe17152f8ea1de7b42f6d7d51e4a04b63a320be1214407b6c0a0907530ef" [label="/bin/sh -c if [ ${SOLR_DATAIMPORTHANDLER_MSSQL} = true ]; then     curl -L -o /tmp/mssql-jdbc-7.0.0.jre8.jar \"https://github.com/Microsoft/mssql-jdbc/releases/download/v7.0.0/mssql-jdbc-7.0.0.jre8.jar\"        && mkdir -p /opt/solr/contrib/dataimporthandler/lib        && mv /tmp/mssql-jdbc-7.0.0.jre8.jar \"/opt/solr/contrib/dataimporthandler/lib/mssql-jdbc-7.0.0.jre8.jar\" ;fi" shape="box"];
  "sha256:dbde4a3a3f1442c9ef7bc49e8ef1c08d8d9d9d50e175c826d063c1137e2c276f" [label="sha256:dbde4a3a3f1442c9ef7bc49e8ef1c08d8d9d9d50e175c826d063c1137e2c276f" shape="plaintext"];
  "sha256:ed637e0f146b9553944ba43798af0c80e313a587fcbc3a58b6c192dfd81a31cb" -> "sha256:30896da9fb6f7c449276d6379fab40e523de0859ba30ae222c818670452454c1" [label=""];
  "sha256:30896da9fb6f7c449276d6379fab40e523de0859ba30ae222c818670452454c1" -> "sha256:c36fbe17152f8ea1de7b42f6d7d51e4a04b63a320be1214407b6c0a0907530ef" [label=""];
  "sha256:c36fbe17152f8ea1de7b42f6d7d51e4a04b63a320be1214407b6c0a0907530ef" -> "sha256:dbde4a3a3f1442c9ef7bc49e8ef1c08d8d9d9d50e175c826d063c1137e2c276f" [label=""];
}

