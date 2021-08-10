[app/sources/225359758.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:213359d4ee0ac598edcbe858010e5fcac513663b45be86dd7034aef880d8c829" [label="/bin/sh -c apk --no-cache --update add                             build-base                             ca-certificates                             ruby                             ruby-irb                             ruby-dev                             gettext &&     echo 'gem: --no-document' >> /etc/gemrc &&     gem install fluentd -v $FLUENTD_VERSION &&     gem install fluent-plugin-elasticsearch fluent-plugin-parser &&     fluentd -s /fluentd/etc/ &&     apk del build-base ruby-dev &&     rm -rf /tmp/* /var/tmp/* /var/cache/apk/* &&     adduser -D -g '' -u 1000 -h /home/fluent fluent &&     chown -R fluent:fluent /home/fluent &&     mkdir -p /fluentd/log &&     chown -R fluent:fluent /fluentd" shape="box"];
  "sha256:23c6d18d88ae10f09667bfbed76d7cfa2bc7f3aabde4066b4d8dc180a744b21b" [label="mkdir{path=/home/fluent}" shape="note"];
  "sha256:29c6fe98f409307efa43b308205b11e6d66c409e2466497c7d914dfb377438b7" [label="/bin/sh -c echo \"gem: --user-install --no-document\" >> ~/.gemrc" shape="box"];
  "sha256:63b9298831667c172df3bbc59c1cae69af73859b59e4de80966a3fce86003eed" [label="local://context" shape="ellipse"];
  "sha256:34d03f6cd14792d105dd2249b3383f461d1c5b76821e6020e3a4977b9fdbd61a" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:aacae81be441d36876a68bd359846f8287c62dc9f981c9d9a0a3ec24e3c3ed47" [label="copy{src=/inputs, dest=/fluentd/etc/inputs}" shape="note"];
  "sha256:a86db4ef3eb5eee6418de69009e4e3f7676c759256fc1e739875c26f267e1e09" [label="copy{src=/filters, dest=/fluentd/etc/filters}" shape="note"];
  "sha256:ac1382a32228569fd53ff5a1cd08c50602ac771aa520fdaa9a9a2237f26d80d1" [label="copy{src=/outputs, dest=/fluentd/etc/outputs}" shape="note"];
  "sha256:ed801f95c43aef2f1dbadb6a3a4004ac6e5b77b439e96eda15bb77c69908ec38" [label="sha256:ed801f95c43aef2f1dbadb6a3a4004ac6e5b77b439e96eda15bb77c69908ec38" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:213359d4ee0ac598edcbe858010e5fcac513663b45be86dd7034aef880d8c829" [label=""];
  "sha256:213359d4ee0ac598edcbe858010e5fcac513663b45be86dd7034aef880d8c829" -> "sha256:23c6d18d88ae10f09667bfbed76d7cfa2bc7f3aabde4066b4d8dc180a744b21b" [label=""];
  "sha256:23c6d18d88ae10f09667bfbed76d7cfa2bc7f3aabde4066b4d8dc180a744b21b" -> "sha256:29c6fe98f409307efa43b308205b11e6d66c409e2466497c7d914dfb377438b7" [label=""];
  "sha256:29c6fe98f409307efa43b308205b11e6d66c409e2466497c7d914dfb377438b7" -> "sha256:34d03f6cd14792d105dd2249b3383f461d1c5b76821e6020e3a4977b9fdbd61a" [label=""];
  "sha256:63b9298831667c172df3bbc59c1cae69af73859b59e4de80966a3fce86003eed" -> "sha256:34d03f6cd14792d105dd2249b3383f461d1c5b76821e6020e3a4977b9fdbd61a" [label=""];
  "sha256:34d03f6cd14792d105dd2249b3383f461d1c5b76821e6020e3a4977b9fdbd61a" -> "sha256:aacae81be441d36876a68bd359846f8287c62dc9f981c9d9a0a3ec24e3c3ed47" [label=""];
  "sha256:63b9298831667c172df3bbc59c1cae69af73859b59e4de80966a3fce86003eed" -> "sha256:aacae81be441d36876a68bd359846f8287c62dc9f981c9d9a0a3ec24e3c3ed47" [label=""];
  "sha256:aacae81be441d36876a68bd359846f8287c62dc9f981c9d9a0a3ec24e3c3ed47" -> "sha256:a86db4ef3eb5eee6418de69009e4e3f7676c759256fc1e739875c26f267e1e09" [label=""];
  "sha256:63b9298831667c172df3bbc59c1cae69af73859b59e4de80966a3fce86003eed" -> "sha256:a86db4ef3eb5eee6418de69009e4e3f7676c759256fc1e739875c26f267e1e09" [label=""];
  "sha256:a86db4ef3eb5eee6418de69009e4e3f7676c759256fc1e739875c26f267e1e09" -> "sha256:ac1382a32228569fd53ff5a1cd08c50602ac771aa520fdaa9a9a2237f26d80d1" [label=""];
  "sha256:63b9298831667c172df3bbc59c1cae69af73859b59e4de80966a3fce86003eed" -> "sha256:ac1382a32228569fd53ff5a1cd08c50602ac771aa520fdaa9a9a2237f26d80d1" [label=""];
  "sha256:ac1382a32228569fd53ff5a1cd08c50602ac771aa520fdaa9a9a2237f26d80d1" -> "sha256:ed801f95c43aef2f1dbadb6a3a4004ac6e5b77b439e96eda15bb77c69908ec38" [label=""];
}

