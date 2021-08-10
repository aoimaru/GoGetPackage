[app/sources/300606161.Dockerfile]
digraph {
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" [label="docker-image://docker.io/library/ubuntu:yakkety" shape="ellipse"];
  "sha256:7b4ab70e196fbbb6269554489b14884042a77ab2c450d3397ad1c528151676b4" [label="/bin/sh -c apt-get update &&     apt-get install -y curl &&     curl -L https://github.com/rqlite/rqlite/releases/download/v${RQLITE_VERSION}/rqlite-v${RQLITE_VERSION}-linux-amd64.tar.gz -o rqlite-v${RQLITE_VERSION}-linux-amd64.tar.gz &&     tar xvfz rqlite-v${RQLITE_VERSION}-linux-amd64.tar.gz &&     cp rqlite-v${RQLITE_VERSION}-linux-amd64/rqlited /bin" shape="box"];
  "sha256:42b9bfb543f2852da3879d9bc2462632f863d8abfb4c01af7d400994f470e134" [label="/bin/sh -c mkdir -p /rqlite/file" shape="box"];
  "sha256:742d61601ce7d1ff38edf9b6e4788a4d1878a3769f0a155b4fc7f63105855ea3" [label="local://context" shape="ellipse"];
  "sha256:583dde06e7451cdd171e3db21fd87b66e9da4cdc8db185e39b141cd725fa82b1" [label="copy{src=/docker-entrypoint.sh, dest=/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:398b7c3f0be0c1443db307f4d60c64a0b4b1f5bc7077f13d50609f1d1b7fce26" [label="sha256:398b7c3f0be0c1443db307f4d60c64a0b4b1f5bc7077f13d50609f1d1b7fce26" shape="plaintext"];
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" -> "sha256:7b4ab70e196fbbb6269554489b14884042a77ab2c450d3397ad1c528151676b4" [label=""];
  "sha256:7b4ab70e196fbbb6269554489b14884042a77ab2c450d3397ad1c528151676b4" -> "sha256:42b9bfb543f2852da3879d9bc2462632f863d8abfb4c01af7d400994f470e134" [label=""];
  "sha256:42b9bfb543f2852da3879d9bc2462632f863d8abfb4c01af7d400994f470e134" -> "sha256:583dde06e7451cdd171e3db21fd87b66e9da4cdc8db185e39b141cd725fa82b1" [label=""];
  "sha256:742d61601ce7d1ff38edf9b6e4788a4d1878a3769f0a155b4fc7f63105855ea3" -> "sha256:583dde06e7451cdd171e3db21fd87b66e9da4cdc8db185e39b141cd725fa82b1" [label=""];
  "sha256:583dde06e7451cdd171e3db21fd87b66e9da4cdc8db185e39b141cd725fa82b1" -> "sha256:398b7c3f0be0c1443db307f4d60c64a0b4b1f5bc7077f13d50609f1d1b7fce26" [label=""];
}

