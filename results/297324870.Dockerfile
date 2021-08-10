[app/sources/297324870.Dockerfile]
digraph {
  "sha256:b0897eab0db1061796dbe476378a6b4bb18b41d2e4f2dc209fee995c9ffce9af" [label="local://context" shape="ellipse"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:9f4fad9474071793466a85b5720733d8882f88c053e16e9d12648c9ee11b80ed" [label="/bin/sh -c yum install -y procps net-tools iproute fedmsg-relay && yum clean all -y" shape="box"];
  "sha256:8f9c4587d958d614c5729f21c4cdb00ab0189aaf97e5037e8fe63db66da30933" [label="/bin/sh -c useradd fedmsg2 -d /home/fedmsg2 &&     mkdir -p /home/fedmsg2/ &&     echo \"fedmsg2:fedmsg2\" | chpasswd" shape="box"];
  "sha256:11e86d26eeeeffa48e36b2ae129b263e40d3ca508ce5b711e81d0c204975dadb" [label="/bin/sh -c chmod -R 777 /home/fedmsg2" shape="box"];
  "sha256:4a0439151122cfe50187e14fc1398cc1dbd8c08b9583ae482d97eaf5b2c295af" [label="copy{src=/relay.py, dest=/etc/fedmsg.d/relay.py}" shape="note"];
  "sha256:44cb7cb94cf59550a9c75b50b29c9e108777ec485e63a6347500bdb96f758cb6" [label="copy{src=/ssl.py, dest=/etc/fedmsg.d/ssl.py}" shape="note"];
  "sha256:5f0bdaec67c87441c8519d200dd30370e026c4758efa412707ecdd8ca9f038ec" [label="copy{src=/endpoints.py, dest=/etc/fedmsg.d/endpoints.py}" shape="note"];
  "sha256:a622c0a697549c85252e66325d73e974dfa78c8eceb0bd859fbb8fe2e17dbbf5" [label="/bin/sh -c chmod -R 777 /etc/fedmsg.d" shape="box"];
  "sha256:3d332c66874f24c5233510d2621cefdeaf76def28f5d5cdce74b64cb202e2165" [label="copy{src=/entrypoint.sh, dest=/usr/bin/entrypoint.sh}" shape="note"];
  "sha256:06755bbda4f0d30da819a10d1b91d93ae64289ba7cfe8d0670437734746bf5d0" [label="sha256:06755bbda4f0d30da819a10d1b91d93ae64289ba7cfe8d0670437734746bf5d0" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:9f4fad9474071793466a85b5720733d8882f88c053e16e9d12648c9ee11b80ed" [label=""];
  "sha256:9f4fad9474071793466a85b5720733d8882f88c053e16e9d12648c9ee11b80ed" -> "sha256:8f9c4587d958d614c5729f21c4cdb00ab0189aaf97e5037e8fe63db66da30933" [label=""];
  "sha256:8f9c4587d958d614c5729f21c4cdb00ab0189aaf97e5037e8fe63db66da30933" -> "sha256:11e86d26eeeeffa48e36b2ae129b263e40d3ca508ce5b711e81d0c204975dadb" [label=""];
  "sha256:11e86d26eeeeffa48e36b2ae129b263e40d3ca508ce5b711e81d0c204975dadb" -> "sha256:4a0439151122cfe50187e14fc1398cc1dbd8c08b9583ae482d97eaf5b2c295af" [label=""];
  "sha256:b0897eab0db1061796dbe476378a6b4bb18b41d2e4f2dc209fee995c9ffce9af" -> "sha256:4a0439151122cfe50187e14fc1398cc1dbd8c08b9583ae482d97eaf5b2c295af" [label=""];
  "sha256:4a0439151122cfe50187e14fc1398cc1dbd8c08b9583ae482d97eaf5b2c295af" -> "sha256:44cb7cb94cf59550a9c75b50b29c9e108777ec485e63a6347500bdb96f758cb6" [label=""];
  "sha256:b0897eab0db1061796dbe476378a6b4bb18b41d2e4f2dc209fee995c9ffce9af" -> "sha256:44cb7cb94cf59550a9c75b50b29c9e108777ec485e63a6347500bdb96f758cb6" [label=""];
  "sha256:44cb7cb94cf59550a9c75b50b29c9e108777ec485e63a6347500bdb96f758cb6" -> "sha256:5f0bdaec67c87441c8519d200dd30370e026c4758efa412707ecdd8ca9f038ec" [label=""];
  "sha256:b0897eab0db1061796dbe476378a6b4bb18b41d2e4f2dc209fee995c9ffce9af" -> "sha256:5f0bdaec67c87441c8519d200dd30370e026c4758efa412707ecdd8ca9f038ec" [label=""];
  "sha256:5f0bdaec67c87441c8519d200dd30370e026c4758efa412707ecdd8ca9f038ec" -> "sha256:a622c0a697549c85252e66325d73e974dfa78c8eceb0bd859fbb8fe2e17dbbf5" [label=""];
  "sha256:a622c0a697549c85252e66325d73e974dfa78c8eceb0bd859fbb8fe2e17dbbf5" -> "sha256:3d332c66874f24c5233510d2621cefdeaf76def28f5d5cdce74b64cb202e2165" [label=""];
  "sha256:b0897eab0db1061796dbe476378a6b4bb18b41d2e4f2dc209fee995c9ffce9af" -> "sha256:3d332c66874f24c5233510d2621cefdeaf76def28f5d5cdce74b64cb202e2165" [label=""];
  "sha256:3d332c66874f24c5233510d2621cefdeaf76def28f5d5cdce74b64cb202e2165" -> "sha256:06755bbda4f0d30da819a10d1b91d93ae64289ba7cfe8d0670437734746bf5d0" [label=""];
}

