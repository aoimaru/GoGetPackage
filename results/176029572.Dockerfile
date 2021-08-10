[app/sources/176029572.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:a21016103d4aa0efebe07a9f58e4aa3530d253fba4af2d2dc78651f7954ea678" [label="/bin/sh -c groupadd -r cerebro && useradd -r -g cerebro cerebro" shape="box"];
  "sha256:ea44be98752bb99a8a9ec8a1c994ddd0a58dba7c69df0c3ee3820ef04a539769" [label="/bin/sh -c curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\"     && curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\"     && gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --verify /usr/local/bin/gosu.asc     && rm /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu \t&& gosu nobody true" shape="box"];
  "sha256:592a674726736551de9f80d12ee347f646d2095614556b1be5f7be37d69b064e" [label="/bin/sh -c cd /tmp     && curl -o cerebro-${CEREBRO_VERSION}.tgz -SL \"https://github.com/lmenezes/cerebro/releases/download/v${CEREBRO_VERSION}/cerebro-${CEREBRO_VERSION}.tgz\"     && echo \"$CEREBRO_SHA256  /tmp/cerebro-${CEREBRO_VERSION}.tgz\" | sha256sum -c -     && tar zxvf /tmp/cerebro-${CEREBRO_VERSION}.tgz     && mkdir /tmp/cerebro-${CEREBRO_VERSION}/logs     && mv /tmp/cerebro-${CEREBRO_VERSION} /opt/cerebro     && rm /tmp/cerebro-${CEREBRO_VERSION}.tgz" shape="box"];
  "sha256:c88b45b9f70a6728b230a403196823807ddef53a1837b060038e608ded47ff53" [label="mkdir{path=/opt/cerebro}" shape="note"];
  "sha256:befad365964cda162a2cb7f5c64288569c0082a40098451e267443e776724de5" [label="local://context" shape="ellipse"];
  "sha256:cd719959ed7aeec1641481f460d5f0ad1efc6cc68ade761212f24830da54eb8b" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:bc3ec51c6bde6cee720aef1b3f5fd2fa0512e2d218b4067b17067622bda346c2" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:0881bc38ab3e1e7bfe1fa73970aa037c9a8a853378952b5f525adca29fd0fb77" [label="sha256:0881bc38ab3e1e7bfe1fa73970aa037c9a8a853378952b5f525adca29fd0fb77" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:a21016103d4aa0efebe07a9f58e4aa3530d253fba4af2d2dc78651f7954ea678" [label=""];
  "sha256:a21016103d4aa0efebe07a9f58e4aa3530d253fba4af2d2dc78651f7954ea678" -> "sha256:ea44be98752bb99a8a9ec8a1c994ddd0a58dba7c69df0c3ee3820ef04a539769" [label=""];
  "sha256:ea44be98752bb99a8a9ec8a1c994ddd0a58dba7c69df0c3ee3820ef04a539769" -> "sha256:592a674726736551de9f80d12ee347f646d2095614556b1be5f7be37d69b064e" [label=""];
  "sha256:592a674726736551de9f80d12ee347f646d2095614556b1be5f7be37d69b064e" -> "sha256:c88b45b9f70a6728b230a403196823807ddef53a1837b060038e608ded47ff53" [label=""];
  "sha256:c88b45b9f70a6728b230a403196823807ddef53a1837b060038e608ded47ff53" -> "sha256:cd719959ed7aeec1641481f460d5f0ad1efc6cc68ade761212f24830da54eb8b" [label=""];
  "sha256:befad365964cda162a2cb7f5c64288569c0082a40098451e267443e776724de5" -> "sha256:cd719959ed7aeec1641481f460d5f0ad1efc6cc68ade761212f24830da54eb8b" [label=""];
  "sha256:cd719959ed7aeec1641481f460d5f0ad1efc6cc68ade761212f24830da54eb8b" -> "sha256:bc3ec51c6bde6cee720aef1b3f5fd2fa0512e2d218b4067b17067622bda346c2" [label=""];
  "sha256:bc3ec51c6bde6cee720aef1b3f5fd2fa0512e2d218b4067b17067622bda346c2" -> "sha256:0881bc38ab3e1e7bfe1fa73970aa037c9a8a853378952b5f525adca29fd0fb77" [label=""];
}

