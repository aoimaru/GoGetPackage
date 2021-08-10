[app/sources/366522682.Dockerfile]
digraph {
  "sha256:3a28af43f7d23e9f3e19280647fc22919b993861bbf9c56ab74fd0952a473208" [label="docker-image://docker.io/hawkbit/hawkbit-update-server:0.3.0M3" shape="ellipse"];
  "sha256:b2262db643aeb180c1955ec106f745ad992a9230c9ebf53b5b2e83828c443329" [label="local://context" shape="ellipse"];
  "sha256:39f74ab9c8ef5c36d321c6018f818d1467d7ccde9922ed6207724fb85e6afa19" [label="copy{src=/KEY, dest=/}" shape="note"];
  "sha256:cd1a392c786b8660d950ddcce4b39f2d340e7185cd00f5a80fa628e6ad117a4f" [label="/bin/sh -c set -x     && apk add --no-cache --virtual build-dependencies gnupg unzip libressl wget     && gpg --import KEY     && wget -O $JAVA_HOME/lib/ext/mariadb-java-client.jar --no-verbose https://downloads.mariadb.com/Connectors/java/connector-java-$MARIADB_DRIVER_VERSION/mariadb-java-client-$MARIADB_DRIVER_VERSION.jar     && wget -O $JAVA_HOME/lib/ext/mariadb-java-client.jar.asc --no-verbose https://downloads.mariadb.com/Connectors/java/connector-java-$MARIADB_DRIVER_VERSION/mariadb-java-client-$MARIADB_DRIVER_VERSION.jar.asc     && gpg --verify --batch $JAVA_HOME/lib/ext/mariadb-java-client.jar.asc $JAVA_HOME/lib/ext/mariadb-java-client.jar     && apk del build-dependencies" shape="box"];
  "sha256:a697c5fe28480c23540d4e21df253f241c1e0fb470f3139d79eea1633ed5a436" [label="sha256:a697c5fe28480c23540d4e21df253f241c1e0fb470f3139d79eea1633ed5a436" shape="plaintext"];
  "sha256:3a28af43f7d23e9f3e19280647fc22919b993861bbf9c56ab74fd0952a473208" -> "sha256:39f74ab9c8ef5c36d321c6018f818d1467d7ccde9922ed6207724fb85e6afa19" [label=""];
  "sha256:b2262db643aeb180c1955ec106f745ad992a9230c9ebf53b5b2e83828c443329" -> "sha256:39f74ab9c8ef5c36d321c6018f818d1467d7ccde9922ed6207724fb85e6afa19" [label=""];
  "sha256:39f74ab9c8ef5c36d321c6018f818d1467d7ccde9922ed6207724fb85e6afa19" -> "sha256:cd1a392c786b8660d950ddcce4b39f2d340e7185cd00f5a80fa628e6ad117a4f" [label=""];
  "sha256:cd1a392c786b8660d950ddcce4b39f2d340e7185cd00f5a80fa628e6ad117a4f" -> "sha256:a697c5fe28480c23540d4e21df253f241c1e0fb470f3139d79eea1633ed5a436" [label=""];
}

