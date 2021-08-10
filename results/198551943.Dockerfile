[app/sources/198551943.Dockerfile]
digraph {
  "sha256:7f42df5de905bd569658ce165515bb7a9fa778685ae0020dcfa6cc2a50459bc0" [label="local://context" shape="ellipse"];
  "sha256:b43ea07a4c2e1f173e5b9a9eca285462300e253c8c9b2ad328c59b811daf7fcd" [label="docker-image://docker.io/debezium/jdk8:8u92" shape="ellipse"];
  "sha256:8d72c9e34c31e7eae526a30613a58fbed5d09bfd391165eac4da75f8d9fc4b42" [label="/bin/sh -c groupadd -r zookeeper -g 1001 &&     useradd -u 1001 -r -g zookeeper -m -d $ZK_HOME -s /sbin/nologin -c \"Zookeeper user\" zookeeper &&     chmod 755 $ZK_HOME" shape="box"];
  "sha256:580f019d7c8c184c84432126b832165d8d3f622a62926248d761816c5c8c55cd" [label="/bin/sh -c mkdir $ZK_HOME/data &&     mkdir $ZK_HOME/txns &&     mkdir $ZK_HOME/logs" shape="box"];
  "sha256:840c368280e8daaadef275593dd16d235756bda64b5fa07787abcdbf0b812b18" [label="/bin/sh -c curl -fSL -o /tmp/zookeeper.tar.gz $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\\?as_json\\=1 | sed -rn 's/.*\"preferred\":.*\"(.*)\"/\\1/p')zookeeper/zookeeper-$ZK_VERSION/zookeeper-$ZK_VERSION.tar.gz" shape="box"];
  "sha256:a3ce7af03de3495d56fc08cffc0a28bad44c991bf0dda3aaf6cb0f955ac93271" [label="/bin/sh -c echo \"$MD5HASH  /tmp/zookeeper.tar.gz\" | md5sum -c - &&    tar -xzf /tmp/zookeeper.tar.gz -C $ZK_HOME --strip-components 1 &&    rm -f /tmp/zookeeper.tar.gz" shape="box"];
  "sha256:b0371320d69101af0fedf3f380c788fb2ee96d5c9ca862eb4450c189fffe7642" [label="mkdir{path=/zookeeper}" shape="note"];
  "sha256:97ffd3b49d665346f4a16a8b0b900894430b6fa9a5357e3c2ccc0133af48d104" [label="copy{src=/zoo.cfg, dest=/zookeeper/conf/zoo.cfg}" shape="note"];
  "sha256:bde104cee589bef734e2104a4239cef82be9e50d37456970da0cddd5548a785d" [label="/bin/sh -c sed -i -r -e \"s|(\\\\$\\\\{zookeeper.log.dir\\\\})|$ZK_HOME/logs|g\"               -e \"s|(\\\\$\\\\{zookeeper.tracelog.dir\\\\})|$ZK_HOME/logs|g\"               -e \"s|(\\\\$\\\\{zookeeper.log.file\\\\})|zookeeper.log|g\"               -e \"s|(\\\\$\\\\{zookeeper.tracelog.file\\\\})|zookeeper_trace.log|g\"               -e \"s|(\\[myid\\:\\%X\\{myid\\}\\]\\s?)||g\"               -e 's|#(log4j.appender.ROLLINGFILE.MaxBackupIndex.*)|\\1|g'               $ZK_HOME/conf/log4j.properties" shape="box"];
  "sha256:2f0b32d54140ab1add11ac39215ab132e472a97ebe1e2ad7a034a98ecb3697ad" [label="/bin/sh -c chown -R zookeeper $ZK_HOME &&     chgrp -R zookeeper $ZK_HOME" shape="box"];
  "sha256:d978834752489a0fd32d1e2f10df9e7d418d9edec863a6f6ccf32cfaf6cc53a2" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:cac57b79fdb16ba25722033ab25e61dd9c31c517f75fff7fcb08fabaf03b5a04" [label="sha256:cac57b79fdb16ba25722033ab25e61dd9c31c517f75fff7fcb08fabaf03b5a04" shape="plaintext"];
  "sha256:b43ea07a4c2e1f173e5b9a9eca285462300e253c8c9b2ad328c59b811daf7fcd" -> "sha256:8d72c9e34c31e7eae526a30613a58fbed5d09bfd391165eac4da75f8d9fc4b42" [label=""];
  "sha256:8d72c9e34c31e7eae526a30613a58fbed5d09bfd391165eac4da75f8d9fc4b42" -> "sha256:580f019d7c8c184c84432126b832165d8d3f622a62926248d761816c5c8c55cd" [label=""];
  "sha256:580f019d7c8c184c84432126b832165d8d3f622a62926248d761816c5c8c55cd" -> "sha256:840c368280e8daaadef275593dd16d235756bda64b5fa07787abcdbf0b812b18" [label=""];
  "sha256:840c368280e8daaadef275593dd16d235756bda64b5fa07787abcdbf0b812b18" -> "sha256:a3ce7af03de3495d56fc08cffc0a28bad44c991bf0dda3aaf6cb0f955ac93271" [label=""];
  "sha256:a3ce7af03de3495d56fc08cffc0a28bad44c991bf0dda3aaf6cb0f955ac93271" -> "sha256:b0371320d69101af0fedf3f380c788fb2ee96d5c9ca862eb4450c189fffe7642" [label=""];
  "sha256:b0371320d69101af0fedf3f380c788fb2ee96d5c9ca862eb4450c189fffe7642" -> "sha256:97ffd3b49d665346f4a16a8b0b900894430b6fa9a5357e3c2ccc0133af48d104" [label=""];
  "sha256:7f42df5de905bd569658ce165515bb7a9fa778685ae0020dcfa6cc2a50459bc0" -> "sha256:97ffd3b49d665346f4a16a8b0b900894430b6fa9a5357e3c2ccc0133af48d104" [label=""];
  "sha256:97ffd3b49d665346f4a16a8b0b900894430b6fa9a5357e3c2ccc0133af48d104" -> "sha256:bde104cee589bef734e2104a4239cef82be9e50d37456970da0cddd5548a785d" [label=""];
  "sha256:bde104cee589bef734e2104a4239cef82be9e50d37456970da0cddd5548a785d" -> "sha256:2f0b32d54140ab1add11ac39215ab132e472a97ebe1e2ad7a034a98ecb3697ad" [label=""];
  "sha256:2f0b32d54140ab1add11ac39215ab132e472a97ebe1e2ad7a034a98ecb3697ad" -> "sha256:d978834752489a0fd32d1e2f10df9e7d418d9edec863a6f6ccf32cfaf6cc53a2" [label=""];
  "sha256:7f42df5de905bd569658ce165515bb7a9fa778685ae0020dcfa6cc2a50459bc0" -> "sha256:d978834752489a0fd32d1e2f10df9e7d418d9edec863a6f6ccf32cfaf6cc53a2" [label=""];
  "sha256:d978834752489a0fd32d1e2f10df9e7d418d9edec863a6f6ccf32cfaf6cc53a2" -> "sha256:cac57b79fdb16ba25722033ab25e61dd9c31c517f75fff7fcb08fabaf03b5a04" [label=""];
}

