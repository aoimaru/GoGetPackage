[app/sources/171488465.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:b2fd8a1276d07212cdd9d5999aadeb6576f2754273686161e6a0c82c010389a5" [label="/bin/sh -c set -x &&     mkdir -p /opt &&     apk --update add --virtual build-dependencies curl &&     curl https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz -o $ACTIVEMQ-bin.tar.gz" shape="box"];
  "sha256:f65e55dd32a1255e28b10dbe4efff2c0246cbd65297e69b1831920344e540adf" [label="/bin/sh -c if [ \"$SHA512_VAL\" != \"$(sha512sum $ACTIVEMQ-bin.tar.gz | awk '{print($1)}')\" ];    then         echo \"sha512 values doesn't match! exiting.\"  &&         exit 1;     fi;" shape="box"];
  "sha256:9d71725eae83e94fbcd242601445c77ff75e031147c64c5c7b913361e590846d" [label="/bin/sh -c tar xzf $ACTIVEMQ-bin.tar.gz -C  /opt &&     ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME &&     addgroup -S activemq && adduser -S -H -G activemq -h $ACTIVEMQ_HOME activemq &&     chown -R activemq:activemq /opt/$ACTIVEMQ &&     chown -h activemq:activemq $ACTIVEMQ_HOME &&     apk del build-dependencies &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:a83c728e9b9da86ef36d70fe1aa88011e955f49faea7487085b88935fe37b586" [label="mkdir{path=/opt/activemq}" shape="note"];
  "sha256:34e9e557874c695dfba29fc3588e9b986b5198d74066d8c996000651164a75c3" [label="sha256:34e9e557874c695dfba29fc3588e9b986b5198d74066d8c996000651164a75c3" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:b2fd8a1276d07212cdd9d5999aadeb6576f2754273686161e6a0c82c010389a5" [label=""];
  "sha256:b2fd8a1276d07212cdd9d5999aadeb6576f2754273686161e6a0c82c010389a5" -> "sha256:f65e55dd32a1255e28b10dbe4efff2c0246cbd65297e69b1831920344e540adf" [label=""];
  "sha256:f65e55dd32a1255e28b10dbe4efff2c0246cbd65297e69b1831920344e540adf" -> "sha256:9d71725eae83e94fbcd242601445c77ff75e031147c64c5c7b913361e590846d" [label=""];
  "sha256:9d71725eae83e94fbcd242601445c77ff75e031147c64c5c7b913361e590846d" -> "sha256:a83c728e9b9da86ef36d70fe1aa88011e955f49faea7487085b88935fe37b586" [label=""];
  "sha256:a83c728e9b9da86ef36d70fe1aa88011e955f49faea7487085b88935fe37b586" -> "sha256:34e9e557874c695dfba29fc3588e9b986b5198d74066d8c996000651164a75c3" [label=""];
}

