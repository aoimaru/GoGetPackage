[app/sources/169497739.Dockerfile]
digraph {
  "sha256:1bc059e743a0cbc2918988c2abe80014fe5f3a91bae941d465aa758768d4bac4" [label="docker-image://docker.io/jboss/base-jdk:11" shape="ellipse"];
  "sha256:e6b158a92b05298f898313f98556900fe8bdab63b4b847af386bcbc1597b230f" [label="/bin/sh -c cd $HOME     && curl -O https://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz     && sha1sum wildfly-$WILDFLY_VERSION.tar.gz | grep $WILDFLY_SHA1     && tar xf wildfly-$WILDFLY_VERSION.tar.gz     && mv $HOME/wildfly-$WILDFLY_VERSION $JBOSS_HOME     && rm wildfly-$WILDFLY_VERSION.tar.gz     && chown -R jboss:0 ${JBOSS_HOME}     && chmod -R g+rw ${JBOSS_HOME}" shape="box"];
  "sha256:eb47d6a2f45cfc787d0a7fdcd701f95645f7e48404650f429495fb93cb16ae81" [label="sha256:eb47d6a2f45cfc787d0a7fdcd701f95645f7e48404650f429495fb93cb16ae81" shape="plaintext"];
  "sha256:1bc059e743a0cbc2918988c2abe80014fe5f3a91bae941d465aa758768d4bac4" -> "sha256:e6b158a92b05298f898313f98556900fe8bdab63b4b847af386bcbc1597b230f" [label=""];
  "sha256:e6b158a92b05298f898313f98556900fe8bdab63b4b847af386bcbc1597b230f" -> "sha256:eb47d6a2f45cfc787d0a7fdcd701f95645f7e48404650f429495fb93cb16ae81" [label=""];
}

