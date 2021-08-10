[app/sources/210383840.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c939f41b5a493bac5cfae0abf6905041a143a90234392343247fe0650fb86a39" [label="/bin/sh -c apt-get update &&   apt-get install -y wget &&   wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz -O /opt/filebeat.tar.gz &&   cd /opt &&   echo \"${FILEBEAT_SHA1}  filebeat.tar.gz\" | sha1sum -c - &&   tar xzvf filebeat.tar.gz &&   cd filebeat-* &&   cp filebeat /bin &&   cp filebeat.yml /filebeat.yml &&   cd /opt &&   rm -rf filebeat* &&   apt-get purge -y wget &&   apt-get autoremove -y &&   apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a0199d5ad010295bf7695ecabc73ea350e5df0f46dc717a61986236107b8e487" [label="sha256:a0199d5ad010295bf7695ecabc73ea350e5df0f46dc717a61986236107b8e487" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c939f41b5a493bac5cfae0abf6905041a143a90234392343247fe0650fb86a39" [label=""];
  "sha256:c939f41b5a493bac5cfae0abf6905041a143a90234392343247fe0650fb86a39" -> "sha256:a0199d5ad010295bf7695ecabc73ea350e5df0f46dc717a61986236107b8e487" [label=""];
}

