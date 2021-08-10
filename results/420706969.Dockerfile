[app/sources/420706969.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:86fb949c2948b76ce7e10d1a70058fb69980113119af87b1838d629447ab49c1" [label="/bin/sh -c mkdir -p /opt/lemmy/ui--dev" shape="box"];
  "sha256:e472108fa32e87929729be0fad7741e2516070fcaf6086842c32f087f65fec03" [label="mkdir{path=/opt/lemmy/ui--dev}" shape="note"];
  "sha256:8496ef7cc75110b2f6568f6d70ce6e41650f7eb1e1907403c4581edfa49c9224" [label="local://context" shape="ellipse"];
  "sha256:cc98a7afcc001ce7605ee13bca6290d1ffa8552fab3027805e2905ca50b9b4e5" [label="copy{src=/package.json, dest=/opt/lemmy/ui--dev/}" shape="note"];
  "sha256:7ce2579050d41d48012e218cf82a71b6247de2ebb3a0bdc71b65c9c9085126d2" [label="copy{src=/yarn.lock, dest=/opt/lemmy/ui--dev/}" shape="note"];
  "sha256:f4b1dcb44d2ceb5a4cdbc9ba94ca59dd22726ce4804155097f433460ce8453f7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b1d4a1fe4aded2f291481fcd6ebf8b0f63417d8cb39d4578245157ce633f3ec5" [label="copy{src=/, dest=/opt/lemmy/ui--dev/}" shape="note"];
  "sha256:791b04cd8b4b93207847220f783ac6c77dc85974c38777f05dcbc575618db4a9" [label="sha256:791b04cd8b4b93207847220f783ac6c77dc85974c38777f05dcbc575618db4a9" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:86fb949c2948b76ce7e10d1a70058fb69980113119af87b1838d629447ab49c1" [label=""];
  "sha256:86fb949c2948b76ce7e10d1a70058fb69980113119af87b1838d629447ab49c1" -> "sha256:e472108fa32e87929729be0fad7741e2516070fcaf6086842c32f087f65fec03" [label=""];
  "sha256:e472108fa32e87929729be0fad7741e2516070fcaf6086842c32f087f65fec03" -> "sha256:cc98a7afcc001ce7605ee13bca6290d1ffa8552fab3027805e2905ca50b9b4e5" [label=""];
  "sha256:8496ef7cc75110b2f6568f6d70ce6e41650f7eb1e1907403c4581edfa49c9224" -> "sha256:cc98a7afcc001ce7605ee13bca6290d1ffa8552fab3027805e2905ca50b9b4e5" [label=""];
  "sha256:cc98a7afcc001ce7605ee13bca6290d1ffa8552fab3027805e2905ca50b9b4e5" -> "sha256:7ce2579050d41d48012e218cf82a71b6247de2ebb3a0bdc71b65c9c9085126d2" [label=""];
  "sha256:8496ef7cc75110b2f6568f6d70ce6e41650f7eb1e1907403c4581edfa49c9224" -> "sha256:7ce2579050d41d48012e218cf82a71b6247de2ebb3a0bdc71b65c9c9085126d2" [label=""];
  "sha256:7ce2579050d41d48012e218cf82a71b6247de2ebb3a0bdc71b65c9c9085126d2" -> "sha256:f4b1dcb44d2ceb5a4cdbc9ba94ca59dd22726ce4804155097f433460ce8453f7" [label=""];
  "sha256:f4b1dcb44d2ceb5a4cdbc9ba94ca59dd22726ce4804155097f433460ce8453f7" -> "sha256:b1d4a1fe4aded2f291481fcd6ebf8b0f63417d8cb39d4578245157ce633f3ec5" [label=""];
  "sha256:8496ef7cc75110b2f6568f6d70ce6e41650f7eb1e1907403c4581edfa49c9224" -> "sha256:b1d4a1fe4aded2f291481fcd6ebf8b0f63417d8cb39d4578245157ce633f3ec5" [label=""];
  "sha256:b1d4a1fe4aded2f291481fcd6ebf8b0f63417d8cb39d4578245157ce633f3ec5" -> "sha256:791b04cd8b4b93207847220f783ac6c77dc85974c38777f05dcbc575618db4a9" [label=""];
}

