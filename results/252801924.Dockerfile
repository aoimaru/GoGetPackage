[app/sources/252801924.Dockerfile]
digraph {
  "sha256:5464eb0ebc1a8e385b3da898265a7550bbcd08ea8efd486c8d5fe7d44eebf7e5" [label="docker-image://docker.io/library/node:8.11-slim" shape="ellipse"];
  "sha256:4cc2b0f35ab335bf8dc56e96c77f161b7baf8c77d1c4065a764d22d31ee33f75" [label="/bin/sh -c apt-get update && apt-get install --assume-yes \\--no-install-recommends build-essential git python ssh less vim && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3070058ac52da6ecdfd0630efeed4d0fbf8ccfa4658b946a7103e3331fe32b7d" [label="/bin/sh -c yarn global add node-gyp node-pre-gyp npm@${NPM_VERSION}" shape="box"];
  "sha256:80d5f195fa3316d9757bb527dba380bcf36a2ed47f1bbf70bd6af36f5ff9fb96" [label="sha256:80d5f195fa3316d9757bb527dba380bcf36a2ed47f1bbf70bd6af36f5ff9fb96" shape="plaintext"];
  "sha256:5464eb0ebc1a8e385b3da898265a7550bbcd08ea8efd486c8d5fe7d44eebf7e5" -> "sha256:4cc2b0f35ab335bf8dc56e96c77f161b7baf8c77d1c4065a764d22d31ee33f75" [label=""];
  "sha256:4cc2b0f35ab335bf8dc56e96c77f161b7baf8c77d1c4065a764d22d31ee33f75" -> "sha256:3070058ac52da6ecdfd0630efeed4d0fbf8ccfa4658b946a7103e3331fe32b7d" [label=""];
  "sha256:3070058ac52da6ecdfd0630efeed4d0fbf8ccfa4658b946a7103e3331fe32b7d" -> "sha256:80d5f195fa3316d9757bb527dba380bcf36a2ed47f1bbf70bd6af36f5ff9fb96" [label=""];
}

