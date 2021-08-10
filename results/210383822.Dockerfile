[app/sources/210383822.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:871b97ad100e7d47451c2c3fbcd6fa32651d094c8c4fc934e60e5262886a45e7" [label="/bin/sh -c set -x &&   apt-get update &&   apt-get install -y wget &&   wget https://download.elastic.co/beats/filebeat/filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz -O /opt/filebeat.tar.gz &&   cd /opt &&   echo \"${FILEBEAT_SHA1}  filebeat.tar.gz\" | sha1sum -c - &&   tar xzvf filebeat.tar.gz &&   cd filebeat-* &&   cp filebeat /bin &&   cp filebeat.yml /filebeat.yml &&   cd /opt &&   rm -rf filebeat* &&   apt-get purge -y wget &&   apt-get autoremove -y &&   apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:99381708e8cb3ad26913dc2d9648e596c8309bc22a78e1ccf67f723e82976769" [label="local://context" shape="ellipse"];
  "sha256:f708107d48b1d36d0089157de10eb7168afc2e8695bdf565d70e54d97b3d778f" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:00f1eb7e97a106327ed085f818d16ba8cfc4f081b2338926e9292d2c5f31313e" [label="sha256:00f1eb7e97a106327ed085f818d16ba8cfc4f081b2338926e9292d2c5f31313e" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:871b97ad100e7d47451c2c3fbcd6fa32651d094c8c4fc934e60e5262886a45e7" [label=""];
  "sha256:871b97ad100e7d47451c2c3fbcd6fa32651d094c8c4fc934e60e5262886a45e7" -> "sha256:f708107d48b1d36d0089157de10eb7168afc2e8695bdf565d70e54d97b3d778f" [label=""];
  "sha256:99381708e8cb3ad26913dc2d9648e596c8309bc22a78e1ccf67f723e82976769" -> "sha256:f708107d48b1d36d0089157de10eb7168afc2e8695bdf565d70e54d97b3d778f" [label=""];
  "sha256:f708107d48b1d36d0089157de10eb7168afc2e8695bdf565d70e54d97b3d778f" -> "sha256:00f1eb7e97a106327ed085f818d16ba8cfc4f081b2338926e9292d2c5f31313e" [label=""];
}

