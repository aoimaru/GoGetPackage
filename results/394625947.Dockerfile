[app/sources/394625947.Dockerfile]
digraph {
  "sha256:2c454ec1c80e7018fc8669228f09e6ee1372f3ebb723d2e8b008f999edc824f9" [label="local://context" shape="ellipse"];
  "sha256:51047eb0c6cf76e811d5f093ed4ce0c06ff49af0194e303ea2c50222306d2c00" [label="docker-image://docker.io/library/ruby:2.1.7@sha256:ad18e407b6005b9a126f609fbb91b7bf8841407d7b75164fa81fbeaad3506984" shape="ellipse"];
  "sha256:eb50ba42091a4f5832e2cd54f8304b3a780637cef8494e1ed5f0a20052d34bc7" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:f944a4379c725148db216b692deac994d4dc517c795a2ea14621125b17c2355f" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-7-jre" shape="box"];
  "sha256:7cd3be1d22e37d15a7071d03744ac8f0290d5a07504562c1a2b2a94b4bb213da" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:5f7ea34871e0db6c614035de57dfaac1ea33e24434a46356eb3ff318347733fc" [label="copy{src=/Gemfile, dest=/tmp/Gemfile}" shape="note"];
  "sha256:d6bb84eaf640b13bbf9fb3e4c0a801838f5fbd41976a17f5d905d7df7a250c1d" [label="copy{src=/Gemfile.lock, dest=/tmp/Gemfile.lock}" shape="note"];
  "sha256:bae00dfcce9d02cf1710d3b8fc39e952164d539ec63f5cbc6f38fdbfbb01bf48" [label="copy{src=/supplejack_api.gemspec, dest=/tmp/supplejack_api.gemspec}" shape="note"];
  "sha256:cec35e98bd461b4064640d934bf7981ac63a7d336db3f69413bf8f394015318e" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:614dcfb6c85bcc602fd4aea96545155df8025ebcd12b24421a650966cd3240f5" [label="mkdir{path=/app}" shape="note"];
  "sha256:759a31745f52aa16a85d847fb7f05ee0cb38c5725efb67653fa23975316bedcb" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d1f4e2c531ad4a3b3dbe53a34f4b77a8bb622ac18add929819473edf89183d14" [label="sha256:d1f4e2c531ad4a3b3dbe53a34f4b77a8bb622ac18add929819473edf89183d14" shape="plaintext"];
  "sha256:51047eb0c6cf76e811d5f093ed4ce0c06ff49af0194e303ea2c50222306d2c00" -> "sha256:eb50ba42091a4f5832e2cd54f8304b3a780637cef8494e1ed5f0a20052d34bc7" [label=""];
  "sha256:eb50ba42091a4f5832e2cd54f8304b3a780637cef8494e1ed5f0a20052d34bc7" -> "sha256:f944a4379c725148db216b692deac994d4dc517c795a2ea14621125b17c2355f" [label=""];
  "sha256:f944a4379c725148db216b692deac994d4dc517c795a2ea14621125b17c2355f" -> "sha256:7cd3be1d22e37d15a7071d03744ac8f0290d5a07504562c1a2b2a94b4bb213da" [label=""];
  "sha256:7cd3be1d22e37d15a7071d03744ac8f0290d5a07504562c1a2b2a94b4bb213da" -> "sha256:5f7ea34871e0db6c614035de57dfaac1ea33e24434a46356eb3ff318347733fc" [label=""];
  "sha256:2c454ec1c80e7018fc8669228f09e6ee1372f3ebb723d2e8b008f999edc824f9" -> "sha256:5f7ea34871e0db6c614035de57dfaac1ea33e24434a46356eb3ff318347733fc" [label=""];
  "sha256:5f7ea34871e0db6c614035de57dfaac1ea33e24434a46356eb3ff318347733fc" -> "sha256:d6bb84eaf640b13bbf9fb3e4c0a801838f5fbd41976a17f5d905d7df7a250c1d" [label=""];
  "sha256:2c454ec1c80e7018fc8669228f09e6ee1372f3ebb723d2e8b008f999edc824f9" -> "sha256:d6bb84eaf640b13bbf9fb3e4c0a801838f5fbd41976a17f5d905d7df7a250c1d" [label=""];
  "sha256:d6bb84eaf640b13bbf9fb3e4c0a801838f5fbd41976a17f5d905d7df7a250c1d" -> "sha256:bae00dfcce9d02cf1710d3b8fc39e952164d539ec63f5cbc6f38fdbfbb01bf48" [label=""];
  "sha256:2c454ec1c80e7018fc8669228f09e6ee1372f3ebb723d2e8b008f999edc824f9" -> "sha256:bae00dfcce9d02cf1710d3b8fc39e952164d539ec63f5cbc6f38fdbfbb01bf48" [label=""];
  "sha256:bae00dfcce9d02cf1710d3b8fc39e952164d539ec63f5cbc6f38fdbfbb01bf48" -> "sha256:cec35e98bd461b4064640d934bf7981ac63a7d336db3f69413bf8f394015318e" [label=""];
  "sha256:cec35e98bd461b4064640d934bf7981ac63a7d336db3f69413bf8f394015318e" -> "sha256:614dcfb6c85bcc602fd4aea96545155df8025ebcd12b24421a650966cd3240f5" [label=""];
  "sha256:614dcfb6c85bcc602fd4aea96545155df8025ebcd12b24421a650966cd3240f5" -> "sha256:759a31745f52aa16a85d847fb7f05ee0cb38c5725efb67653fa23975316bedcb" [label=""];
  "sha256:2c454ec1c80e7018fc8669228f09e6ee1372f3ebb723d2e8b008f999edc824f9" -> "sha256:759a31745f52aa16a85d847fb7f05ee0cb38c5725efb67653fa23975316bedcb" [label=""];
  "sha256:759a31745f52aa16a85d847fb7f05ee0cb38c5725efb67653fa23975316bedcb" -> "sha256:d1f4e2c531ad4a3b3dbe53a34f4b77a8bb622ac18add929819473edf89183d14" [label=""];
}

