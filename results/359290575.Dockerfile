[app/sources/359290575.Dockerfile]
digraph {
  "sha256:fe25873c81df44ea130e872c33dd3f23d5df4c8285f951efcdd3c7a299167bc2" [label="docker-image://docker.io/njmittet/alpine-openjdk:jre8" shape="ellipse"];
  "sha256:1151edadb8dc9cd75c45039172fab63ce653462be0c6fa4070c46c538faee3e7" [label="/bin/sh -c apk add --update curl &&     rm -rf /var/cache/apk/* &&     mkdir -p /opt &&     curl -s -S https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz | tar -xvz -C /opt &&     ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME &&     addgroup -S activemq &&     adduser -S -H -G activemq -h $ACTIVEMQ_HOME activemq &&     chown -R activemq:activemq /opt/$ACTIVEMQ &&     chown -h activemq:activemq $ACTIVEMQ_HOME" shape="box"];
  "sha256:db51c342c09a1486953e905f6cc762936808cdf382a7d6b35b20324c4aee7686" [label="mkdir{path=/opt/activemq}" shape="note"];
  "sha256:c9436386a127e71c82e626f335362695e2372aedc093d46183a9f3bc5904cb43" [label="sha256:c9436386a127e71c82e626f335362695e2372aedc093d46183a9f3bc5904cb43" shape="plaintext"];
  "sha256:fe25873c81df44ea130e872c33dd3f23d5df4c8285f951efcdd3c7a299167bc2" -> "sha256:1151edadb8dc9cd75c45039172fab63ce653462be0c6fa4070c46c538faee3e7" [label=""];
  "sha256:1151edadb8dc9cd75c45039172fab63ce653462be0c6fa4070c46c538faee3e7" -> "sha256:db51c342c09a1486953e905f6cc762936808cdf382a7d6b35b20324c4aee7686" [label=""];
  "sha256:db51c342c09a1486953e905f6cc762936808cdf382a7d6b35b20324c4aee7686" -> "sha256:c9436386a127e71c82e626f335362695e2372aedc093d46183a9f3bc5904cb43" [label=""];
}

