[app/sources/252771423.Dockerfile]
digraph {
  "sha256:6294863bbe9325f75d06c26e0558fd884ef5707c5db41831d8664df9c9ba3ddf" [label="docker-image://docker.io/ajoergensen/baseimage-alpine:latest" shape="ellipse"];
  "sha256:519bd89915f0081eb094357aac8ec344e17aa90da15f21dc5be5015906a5a8a6" [label="/bin/sh -c apk add \\--update git python && apk add \\--virtual build-dependencies make asciidoc python-dev xmlto && cd /tmp && git clone https://gitlab.com/esr/irker.git && cd irker && make && make install && apk del build-dependencies && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:03948b6117dc9a9024328f399d829f1e7c4744ee688da5e1743ca9fe30e2379e" [label="local://context" shape="ellipse"];
  "sha256:d436ec4b4bcdd777df0a24490686ec7b7050756632eef31109964efad2bdd435" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:33af8bfae2ec140a7ee927e12ec66f6f30790aa760e1f9bfaafb730d6f49eb0a" [label="/bin/sh -c chmod -v +x /etc/services.d/*/run" shape="box"];
  "sha256:53bc2b1d56f5672d0cde3a1be4d0a53c94c62d5be9bffddb7961250960d7c49d" [label="sha256:53bc2b1d56f5672d0cde3a1be4d0a53c94c62d5be9bffddb7961250960d7c49d" shape="plaintext"];
  "sha256:6294863bbe9325f75d06c26e0558fd884ef5707c5db41831d8664df9c9ba3ddf" -> "sha256:519bd89915f0081eb094357aac8ec344e17aa90da15f21dc5be5015906a5a8a6" [label=""];
  "sha256:519bd89915f0081eb094357aac8ec344e17aa90da15f21dc5be5015906a5a8a6" -> "sha256:d436ec4b4bcdd777df0a24490686ec7b7050756632eef31109964efad2bdd435" [label=""];
  "sha256:03948b6117dc9a9024328f399d829f1e7c4744ee688da5e1743ca9fe30e2379e" -> "sha256:d436ec4b4bcdd777df0a24490686ec7b7050756632eef31109964efad2bdd435" [label=""];
  "sha256:d436ec4b4bcdd777df0a24490686ec7b7050756632eef31109964efad2bdd435" -> "sha256:33af8bfae2ec140a7ee927e12ec66f6f30790aa760e1f9bfaafb730d6f49eb0a" [label=""];
  "sha256:33af8bfae2ec140a7ee927e12ec66f6f30790aa760e1f9bfaafb730d6f49eb0a" -> "sha256:53bc2b1d56f5672d0cde3a1be4d0a53c94c62d5be9bffddb7961250960d7c49d" [label=""];
}

