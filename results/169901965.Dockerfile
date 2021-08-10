[app/sources/169901965.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:11f66c48c69ace11f5d43cbd8c02fd9c89003944dbce3e1f510c6fde59409ab2" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -yqq install mysql-server" shape="box"];
  "sha256:28314c4fb52865d06da9cd36252e6417468869301ab47091b51be9a9e94b84be" [label="/bin/sh -c apt-get -yqq install zabbix-server-mysql" shape="box"];
  "sha256:8ebb9af85c3db111591a224e18d18fcc02cefe0a478aacfe4815cbbe30921b8f" [label="/bin/sh -c sed -i s/START=no/START=yes/g /etc/default/zabbix-server" shape="box"];
  "sha256:d71e48b1edd9b97158bd11737fd99b80696ab73a9946f585aea57564c7af3f4d" [label="/bin/sh -c mkdir -p /var/run/zabbix" shape="box"];
  "sha256:93778ce2574e9595fd820afc871efe9a44dc4c0e92bc7b934491e971e62f4a68" [label="/bin/sh -c chown zabbix:zabbix /var/run/zabbix" shape="box"];
  "sha256:a4d6e023fe8fbe90ee4af4084c46d1e4267d9e1d37c3a7718cc2a921b5f59f45" [label="/bin/sh -c sed -i -e 's/^# StartPollers=5/StartPollers=1/' \t   -e 's/^# StartPollersUnreachable=1/StartPollersUnreachable=0/' \t   -e 's/^# StartTrappers=5/StartTrappers=1/' \t   -e 's/^# StartPingers=1/StartPingers=0/' \t   -e 's/^# StartDiscoverers=1/StartDiscoverers=0/' \t   -e 's/^# StartHTTPPollers=1/StartHTTPPollers=0/' \t   -e 's/^# StartDBSyncers=4/StartDBSyncers=2/' \t   -e 's/^DBUser=zabbix/DBUser=root/' \t   -e 's/^# DBSocket=\\/tmp\\/mysql.sock/DBSocket=\\/var\\/run\\/mysqld\\/mysqld.sock/' \t   -e 's/^# StartProxyPollers=1/StartProxyPollers=0/' /etc/zabbix/zabbix_server.conf" shape="box"];
  "sha256:c8a62d675da38a8564e8fd2a4597f5f21a587b86ce7e144755a4b4f11bb1a1d5" [label="local://context" shape="ellipse"];
  "sha256:8e39cc59ca1a57868a0775549a84974880c4b781527a383ff40a8921c06369bf" [label="copy{src=/build_db.sh, dest=/}" shape="note"];
  "sha256:4b27ff69d8feafdcb4bafd37e35fc83282d097d26e81b9ac28a4ec985c08bc4f" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:a04b19148c877623d6f7bc94ed243be2efa6303e0f5249e516cf75d94eea8e34" [label="copy{src=/zabbix.sql, dest=/}" shape="note"];
  "sha256:57f28eed0cfd43dc002915023d30b74a2ef1a91471f0a88a2676cfa68f1628d8" [label="/bin/sh -c ln -s /run.sh /usr/bin/run" shape="box"];
  "sha256:99d99bed1ebadebc6e21208326fab1744772790177af91dd14895aa108722a18" [label="sha256:99d99bed1ebadebc6e21208326fab1744772790177af91dd14895aa108722a18" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label=""];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" -> "sha256:11f66c48c69ace11f5d43cbd8c02fd9c89003944dbce3e1f510c6fde59409ab2" [label=""];
  "sha256:11f66c48c69ace11f5d43cbd8c02fd9c89003944dbce3e1f510c6fde59409ab2" -> "sha256:28314c4fb52865d06da9cd36252e6417468869301ab47091b51be9a9e94b84be" [label=""];
  "sha256:28314c4fb52865d06da9cd36252e6417468869301ab47091b51be9a9e94b84be" -> "sha256:8ebb9af85c3db111591a224e18d18fcc02cefe0a478aacfe4815cbbe30921b8f" [label=""];
  "sha256:8ebb9af85c3db111591a224e18d18fcc02cefe0a478aacfe4815cbbe30921b8f" -> "sha256:d71e48b1edd9b97158bd11737fd99b80696ab73a9946f585aea57564c7af3f4d" [label=""];
  "sha256:d71e48b1edd9b97158bd11737fd99b80696ab73a9946f585aea57564c7af3f4d" -> "sha256:93778ce2574e9595fd820afc871efe9a44dc4c0e92bc7b934491e971e62f4a68" [label=""];
  "sha256:93778ce2574e9595fd820afc871efe9a44dc4c0e92bc7b934491e971e62f4a68" -> "sha256:a4d6e023fe8fbe90ee4af4084c46d1e4267d9e1d37c3a7718cc2a921b5f59f45" [label=""];
  "sha256:a4d6e023fe8fbe90ee4af4084c46d1e4267d9e1d37c3a7718cc2a921b5f59f45" -> "sha256:8e39cc59ca1a57868a0775549a84974880c4b781527a383ff40a8921c06369bf" [label=""];
  "sha256:c8a62d675da38a8564e8fd2a4597f5f21a587b86ce7e144755a4b4f11bb1a1d5" -> "sha256:8e39cc59ca1a57868a0775549a84974880c4b781527a383ff40a8921c06369bf" [label=""];
  "sha256:8e39cc59ca1a57868a0775549a84974880c4b781527a383ff40a8921c06369bf" -> "sha256:4b27ff69d8feafdcb4bafd37e35fc83282d097d26e81b9ac28a4ec985c08bc4f" [label=""];
  "sha256:c8a62d675da38a8564e8fd2a4597f5f21a587b86ce7e144755a4b4f11bb1a1d5" -> "sha256:4b27ff69d8feafdcb4bafd37e35fc83282d097d26e81b9ac28a4ec985c08bc4f" [label=""];
  "sha256:4b27ff69d8feafdcb4bafd37e35fc83282d097d26e81b9ac28a4ec985c08bc4f" -> "sha256:a04b19148c877623d6f7bc94ed243be2efa6303e0f5249e516cf75d94eea8e34" [label=""];
  "sha256:c8a62d675da38a8564e8fd2a4597f5f21a587b86ce7e144755a4b4f11bb1a1d5" -> "sha256:a04b19148c877623d6f7bc94ed243be2efa6303e0f5249e516cf75d94eea8e34" [label=""];
  "sha256:a04b19148c877623d6f7bc94ed243be2efa6303e0f5249e516cf75d94eea8e34" -> "sha256:57f28eed0cfd43dc002915023d30b74a2ef1a91471f0a88a2676cfa68f1628d8" [label=""];
  "sha256:57f28eed0cfd43dc002915023d30b74a2ef1a91471f0a88a2676cfa68f1628d8" -> "sha256:99d99bed1ebadebc6e21208326fab1744772790177af91dd14895aa108722a18" [label=""];
}

