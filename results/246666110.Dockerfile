[app/sources/246666110.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:0cf297c0748b004cbaf6ce02abb2a46a67c20d622d74c0d6387413ef3e6fe18b" [label="/bin/sh -c apt-get update -qq   && apt-get install -qqy curl wget   && apt-get clean     && touch /var/log/todo.log   && chmod 666 /var/log/todo.log" shape="box"];
  "sha256:627f125b2ead332396f9de053011096f74859ba238ca840c7b18d848fadc2b16" [label="local://context" shape="ellipse"];
  "sha256:ea5ca8c05b968136ee4f5748603ba11fb0793951c202b2a9cd0fee84800930c2" [label="copy{src=/application/lib/springboot-webapp.jar, dest=/app.jar}" shape="note"];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" [label="https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh" shape="ellipse"];
  "sha256:fbc93f1d343370e18ad53aaaa6d51d823521db7e9e2f528bce9f681402f196e9" [label="copy{src=/wait-for-it.sh, dest=/wait-for-it.sh}" shape="note"];
  "sha256:4fb563479a0b0223f91682a0427f795f6c6dca9afd0646ff56a99610e35ba558" [label="/bin/sh -c bash -c 'chmod +x wait-for-it.sh'" shape="box"];
  "sha256:bbd17597ced35eef63207a911a53f3342538b811e9905d7f865e322a6887a074" [label="/bin/sh -c curl -L -O https://download.elastic.co/beats/filebeat/${FILEBEAT_VERSION}  && dpkg -i ${FILEBEAT_VERSION}  && rm ${FILEBEAT_VERSION}" shape="box"];
  "sha256:516cbc4f0551e793080d64a93fb83787a3dd8875e8c3ad4f65bfd3baa80b98c1" [label="copy{src=/filebeat.yml, dest=/etc/filebeat/filebeat.yml}" shape="note"];
  "sha256:d4dea7f4451bd1841cd301beaeaca63c5b07d37a2022e340569983b7eb2b0389" [label="/bin/sh -c mkdir -p /etc/pki/tls/certs" shape="box"];
  "sha256:3de6b1c500cfd742c18e93be26c66ed798d39b1e5c2e119fdb96e954e4a53e7d" [label="copy{src=/logstash-beats.crt, dest=/etc/pki/tls/certs/logstash-beats.crt}" shape="note"];
  "sha256:62e2ec869b77e0c2c165d5b7d02248cd0e0af05046a48153e23a8b3be23c866e" [label="copy{src=/start.sh, dest=/usr/local/bin/start.sh}" shape="note"];
  "sha256:5ec913bb9e0f92d522fd72b37cd549cf20d22e2640f18d2a602175818ad3ec17" [label="/bin/sh -c chmod +x /usr/local/bin/start.sh" shape="box"];
  "sha256:e28131cb99d5e999ea90fcb7782e2216e0eb085cb5dd6d747b1afc10ab1b1e62" [label="sha256:e28131cb99d5e999ea90fcb7782e2216e0eb085cb5dd6d747b1afc10ab1b1e62" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:0cf297c0748b004cbaf6ce02abb2a46a67c20d622d74c0d6387413ef3e6fe18b" [label=""];
  "sha256:0cf297c0748b004cbaf6ce02abb2a46a67c20d622d74c0d6387413ef3e6fe18b" -> "sha256:ea5ca8c05b968136ee4f5748603ba11fb0793951c202b2a9cd0fee84800930c2" [label=""];
  "sha256:627f125b2ead332396f9de053011096f74859ba238ca840c7b18d848fadc2b16" -> "sha256:ea5ca8c05b968136ee4f5748603ba11fb0793951c202b2a9cd0fee84800930c2" [label=""];
  "sha256:ea5ca8c05b968136ee4f5748603ba11fb0793951c202b2a9cd0fee84800930c2" -> "sha256:fbc93f1d343370e18ad53aaaa6d51d823521db7e9e2f528bce9f681402f196e9" [label=""];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" -> "sha256:fbc93f1d343370e18ad53aaaa6d51d823521db7e9e2f528bce9f681402f196e9" [label=""];
  "sha256:fbc93f1d343370e18ad53aaaa6d51d823521db7e9e2f528bce9f681402f196e9" -> "sha256:4fb563479a0b0223f91682a0427f795f6c6dca9afd0646ff56a99610e35ba558" [label=""];
  "sha256:4fb563479a0b0223f91682a0427f795f6c6dca9afd0646ff56a99610e35ba558" -> "sha256:bbd17597ced35eef63207a911a53f3342538b811e9905d7f865e322a6887a074" [label=""];
  "sha256:bbd17597ced35eef63207a911a53f3342538b811e9905d7f865e322a6887a074" -> "sha256:516cbc4f0551e793080d64a93fb83787a3dd8875e8c3ad4f65bfd3baa80b98c1" [label=""];
  "sha256:627f125b2ead332396f9de053011096f74859ba238ca840c7b18d848fadc2b16" -> "sha256:516cbc4f0551e793080d64a93fb83787a3dd8875e8c3ad4f65bfd3baa80b98c1" [label=""];
  "sha256:516cbc4f0551e793080d64a93fb83787a3dd8875e8c3ad4f65bfd3baa80b98c1" -> "sha256:d4dea7f4451bd1841cd301beaeaca63c5b07d37a2022e340569983b7eb2b0389" [label=""];
  "sha256:d4dea7f4451bd1841cd301beaeaca63c5b07d37a2022e340569983b7eb2b0389" -> "sha256:3de6b1c500cfd742c18e93be26c66ed798d39b1e5c2e119fdb96e954e4a53e7d" [label=""];
  "sha256:627f125b2ead332396f9de053011096f74859ba238ca840c7b18d848fadc2b16" -> "sha256:3de6b1c500cfd742c18e93be26c66ed798d39b1e5c2e119fdb96e954e4a53e7d" [label=""];
  "sha256:3de6b1c500cfd742c18e93be26c66ed798d39b1e5c2e119fdb96e954e4a53e7d" -> "sha256:62e2ec869b77e0c2c165d5b7d02248cd0e0af05046a48153e23a8b3be23c866e" [label=""];
  "sha256:627f125b2ead332396f9de053011096f74859ba238ca840c7b18d848fadc2b16" -> "sha256:62e2ec869b77e0c2c165d5b7d02248cd0e0af05046a48153e23a8b3be23c866e" [label=""];
  "sha256:62e2ec869b77e0c2c165d5b7d02248cd0e0af05046a48153e23a8b3be23c866e" -> "sha256:5ec913bb9e0f92d522fd72b37cd549cf20d22e2640f18d2a602175818ad3ec17" [label=""];
  "sha256:5ec913bb9e0f92d522fd72b37cd549cf20d22e2640f18d2a602175818ad3ec17" -> "sha256:e28131cb99d5e999ea90fcb7782e2216e0eb085cb5dd6d747b1afc10ab1b1e62" [label=""];
}

