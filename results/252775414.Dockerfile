[app/sources/252775414.Dockerfile]
digraph {
  "sha256:8394a308428694c4da522303c83df1a199f80858f39dfdd911d39856f9efa395" [label="local://context" shape="ellipse"];
  "sha256:6ea5410fa606b97b0a016e4d8799105e1aa273aaa63d30b8cce074d6cf8eec5a" [label="docker-image://docker.io/library/node:8.5" shape="ellipse"];
  "sha256:57eccdce6a3298a78c02af0aa660a5bbb41eacfeff82b0df5f674afbde158ec6" [label="mkdir{path=/app}" shape="note"];
  "sha256:f3ef76453c501fd1d937bd87517475d814e0ad70f801a5723fb3692b61e503e1" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:74f8413534de8fc47865a8a5437ec937838f69ceddd3fae4837a825509cd4f63" [label="/bin/sh -c npm install -s" shape="box"];
  "sha256:4f08f2c8efa577960e981232fd706df1ee439fb8ff8ae110f006ffe2340a852a" [label="/bin/sh -c npm install -g serve" shape="box"];
  "sha256:73676e43580962e12feafa3cd2d123e90481d37767b3781fb61c6de80ab3891b" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:846ac4e750c44a164612878f4edbf5924a931d9e288bc2168ec516bc68b9ef3b" [label="sha256:846ac4e750c44a164612878f4edbf5924a931d9e288bc2168ec516bc68b9ef3b" shape="plaintext"];
  "sha256:6ea5410fa606b97b0a016e4d8799105e1aa273aaa63d30b8cce074d6cf8eec5a" -> "sha256:57eccdce6a3298a78c02af0aa660a5bbb41eacfeff82b0df5f674afbde158ec6" [label=""];
  "sha256:57eccdce6a3298a78c02af0aa660a5bbb41eacfeff82b0df5f674afbde158ec6" -> "sha256:f3ef76453c501fd1d937bd87517475d814e0ad70f801a5723fb3692b61e503e1" [label=""];
  "sha256:8394a308428694c4da522303c83df1a199f80858f39dfdd911d39856f9efa395" -> "sha256:f3ef76453c501fd1d937bd87517475d814e0ad70f801a5723fb3692b61e503e1" [label=""];
  "sha256:f3ef76453c501fd1d937bd87517475d814e0ad70f801a5723fb3692b61e503e1" -> "sha256:74f8413534de8fc47865a8a5437ec937838f69ceddd3fae4837a825509cd4f63" [label=""];
  "sha256:74f8413534de8fc47865a8a5437ec937838f69ceddd3fae4837a825509cd4f63" -> "sha256:4f08f2c8efa577960e981232fd706df1ee439fb8ff8ae110f006ffe2340a852a" [label=""];
  "sha256:4f08f2c8efa577960e981232fd706df1ee439fb8ff8ae110f006ffe2340a852a" -> "sha256:73676e43580962e12feafa3cd2d123e90481d37767b3781fb61c6de80ab3891b" [label=""];
  "sha256:8394a308428694c4da522303c83df1a199f80858f39dfdd911d39856f9efa395" -> "sha256:73676e43580962e12feafa3cd2d123e90481d37767b3781fb61c6de80ab3891b" [label=""];
  "sha256:73676e43580962e12feafa3cd2d123e90481d37767b3781fb61c6de80ab3891b" -> "sha256:846ac4e750c44a164612878f4edbf5924a931d9e288bc2168ec516bc68b9ef3b" [label=""];
}

