[app/sources/233475834.Dockerfile]
digraph {
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" [label="docker-image://docker.io/eason02/java:1.8" shape="ellipse"];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64\" &&     curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64.asc\" &&     gpg --verify /usr/local/bin/gosu.asc &&     rm /usr/local/bin/gosu.asc &&     rm -rf /root/.gnupg/ &&     chmod +x /usr/local/bin/gosu &&     gosu nobody true" shape="box"];
  "sha256:40009620d32265b09db1ca426cac2effa021f44fc97dd089ae68584ebbaeb1f3" [label="/bin/sh -c set -x &&     yum clean all &&     yum -y install which &&     yum -y install openssl &&     wget https://artifacts.elastic.co/downloads/logstash/logstash-6.1.2.rpm &&     rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch &&     sha1sum logstash-6.1.2.rpm &&     rpm --install logstash-6.1.2.rpm &&     rm -rf /etc/logstash/* &&     rm -rf logstash-6.1.2.rpm &&     ls -R /etc/logstash &&     cd /etc/logstash &&     rm -rf *" shape="box"];
  "sha256:84918c8bce7faa6756be2f2488395253a2f59d92a9345c987d786ed37ae95568" [label="/bin/sh -c ls -R /etc/logstash/" shape="box"];
  "sha256:d7a1f35718133d110fe3aa2f5a5bceb4ff9a821a791ff92378947254cfab0e8a" [label="/bin/sh -c set -x &&         chown logstash:root /var/log/logstash &&         ls -ltr /var/log/ &&         echo securerandom.source=file:/dev/urandom >> /usr/java/jdk1.8.0_112/jre/lib/security/java.security" shape="box"];
  "sha256:342d9b10a440442da8e72299900f2547e3cd8eb69b61bab4ff0cba9c01ca5805" [label="/bin/sh -c ls -R /etc/pki/tls/certs/ && ls -R /etc/pki/tls/private/" shape="box"];
  "sha256:5a5f520253313080fc07685123f7c60e41e1edee2a517e4bbea6705ad74a78e3" [label="local://context" shape="ellipse"];
  "sha256:cd9c1e2581d5cbef6fa316116ad1aa715e150b3d17207fe08de29dee0580b44f" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:9860b6b6a3ea87ed11d9f3e5248d4d5d36c03695e54b5cff9e90bff1e5043672" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:e0cbd3539b0d3295b6039d1dbb2f09ae5783270df7e9d49c317b6ba0f07d3e0e" [label="sha256:e0cbd3539b0d3295b6039d1dbb2f09ae5783270df7e9d49c317b6ba0f07d3e0e" shape="plaintext"];
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" -> "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label=""];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" -> "sha256:40009620d32265b09db1ca426cac2effa021f44fc97dd089ae68584ebbaeb1f3" [label=""];
  "sha256:40009620d32265b09db1ca426cac2effa021f44fc97dd089ae68584ebbaeb1f3" -> "sha256:84918c8bce7faa6756be2f2488395253a2f59d92a9345c987d786ed37ae95568" [label=""];
  "sha256:84918c8bce7faa6756be2f2488395253a2f59d92a9345c987d786ed37ae95568" -> "sha256:d7a1f35718133d110fe3aa2f5a5bceb4ff9a821a791ff92378947254cfab0e8a" [label=""];
  "sha256:d7a1f35718133d110fe3aa2f5a5bceb4ff9a821a791ff92378947254cfab0e8a" -> "sha256:342d9b10a440442da8e72299900f2547e3cd8eb69b61bab4ff0cba9c01ca5805" [label=""];
  "sha256:342d9b10a440442da8e72299900f2547e3cd8eb69b61bab4ff0cba9c01ca5805" -> "sha256:cd9c1e2581d5cbef6fa316116ad1aa715e150b3d17207fe08de29dee0580b44f" [label=""];
  "sha256:5a5f520253313080fc07685123f7c60e41e1edee2a517e4bbea6705ad74a78e3" -> "sha256:cd9c1e2581d5cbef6fa316116ad1aa715e150b3d17207fe08de29dee0580b44f" [label=""];
  "sha256:cd9c1e2581d5cbef6fa316116ad1aa715e150b3d17207fe08de29dee0580b44f" -> "sha256:9860b6b6a3ea87ed11d9f3e5248d4d5d36c03695e54b5cff9e90bff1e5043672" [label=""];
  "sha256:9860b6b6a3ea87ed11d9f3e5248d4d5d36c03695e54b5cff9e90bff1e5043672" -> "sha256:e0cbd3539b0d3295b6039d1dbb2f09ae5783270df7e9d49c317b6ba0f07d3e0e" [label=""];
}

