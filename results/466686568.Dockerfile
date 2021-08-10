[app/sources/466686568.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e8f15dc1e145211bbcda710556ab6c6088925d156d45e06c4a1f0c96448e092a" [label="/bin/sh -c mkdir /test #!COMMIT" shape="box"];
  "sha256:bd2a462cc9b791dc9e5c531df786e3a05addba6fd96e8ca9956977042855069f" [label="mkdir{path=/test #!COMMIT}" shape="note"];
  "sha256:827231973965cd2771371226587b3dc267fc57a93ca3f3ff0b675fe9f69680f6" [label="/bin/sh -c ls /test #!COMMIT" shape="box"];
  "sha256:75840dca7a5649d65717023bbbebaa5f111389432ce70df61a1b9cfa9cb11a25" [label="/bin/sh -c cp /tmp/test.txt /done.txt #!COMMIT" shape="box"];
  "sha256:9e71d6249442cd902aa755f68d75beb1933b25b12b3385982fd6875555ac5a23" [label="copy{src=/done.txt, dest=/done.txt}" shape="note"];
  "sha256:51468a63cdc043b249fbb9a229c2fa70d761c394bd5a71cf7ec77867c935032d" [label="sha256:51468a63cdc043b249fbb9a229c2fa70d761c394bd5a71cf7ec77867c935032d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e8f15dc1e145211bbcda710556ab6c6088925d156d45e06c4a1f0c96448e092a" [label=""];
  "sha256:e8f15dc1e145211bbcda710556ab6c6088925d156d45e06c4a1f0c96448e092a" -> "sha256:bd2a462cc9b791dc9e5c531df786e3a05addba6fd96e8ca9956977042855069f" [label=""];
  "sha256:bd2a462cc9b791dc9e5c531df786e3a05addba6fd96e8ca9956977042855069f" -> "sha256:827231973965cd2771371226587b3dc267fc57a93ca3f3ff0b675fe9f69680f6" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:75840dca7a5649d65717023bbbebaa5f111389432ce70df61a1b9cfa9cb11a25" [label=""];
  "sha256:827231973965cd2771371226587b3dc267fc57a93ca3f3ff0b675fe9f69680f6" -> "sha256:9e71d6249442cd902aa755f68d75beb1933b25b12b3385982fd6875555ac5a23" [label=""];
  "sha256:75840dca7a5649d65717023bbbebaa5f111389432ce70df61a1b9cfa9cb11a25" -> "sha256:9e71d6249442cd902aa755f68d75beb1933b25b12b3385982fd6875555ac5a23" [label=""];
  "sha256:9e71d6249442cd902aa755f68d75beb1933b25b12b3385982fd6875555ac5a23" -> "sha256:51468a63cdc043b249fbb9a229c2fa70d761c394bd5a71cf7ec77867c935032d" [label=""];
}
