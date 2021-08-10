[app/sources/207602979.Dockerfile]
digraph {
  "sha256:a6a05121b7af7cad1050bfbfac9a8b286dc1a623c1d4917c8e713ffe42dca8d9" [label="local://context" shape="ellipse"];
  "sha256:ea55524e8f6ed3b8b688053d2ec7bdfe588ac10b08a40db1d40686c50a37dd9e" [label="docker-image://docker.io/library/alpine:2.7" shape="ellipse"];
  "sha256:7014d081360ba674c103361ad74e364138f1ccbac111247706a121be06a00b71" [label="/bin/sh -c apk add --update       asterisk       asterisk-sample-config && asterisk -U asterisk && sleep 5 && pkill -9 asterisk && sleep 2 && rm -rf /var/run/asterisk/* && mkdir -p /var/spool/asterisk/fax && chown -R asterisk: /var/spool/asterisk/fax &&  rm -rf /var/cache/apk/*            /tmp/*            /var/tmp/*" shape="box"];
  "sha256:e41302dbf91588084f5ca88d935480b8779f9c3a6952ad5fc84698538415184d" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:7df280ff058a88cfbcc10c79a5bbbd65e70927e6e58f806800354bd9292c2a1d" [label="sha256:7df280ff058a88cfbcc10c79a5bbbd65e70927e6e58f806800354bd9292c2a1d" shape="plaintext"];
  "sha256:ea55524e8f6ed3b8b688053d2ec7bdfe588ac10b08a40db1d40686c50a37dd9e" -> "sha256:7014d081360ba674c103361ad74e364138f1ccbac111247706a121be06a00b71" [label=""];
  "sha256:7014d081360ba674c103361ad74e364138f1ccbac111247706a121be06a00b71" -> "sha256:e41302dbf91588084f5ca88d935480b8779f9c3a6952ad5fc84698538415184d" [label=""];
  "sha256:a6a05121b7af7cad1050bfbfac9a8b286dc1a623c1d4917c8e713ffe42dca8d9" -> "sha256:e41302dbf91588084f5ca88d935480b8779f9c3a6952ad5fc84698538415184d" [label=""];
  "sha256:e41302dbf91588084f5ca88d935480b8779f9c3a6952ad5fc84698538415184d" -> "sha256:7df280ff058a88cfbcc10c79a5bbbd65e70927e6e58f806800354bd9292c2a1d" [label=""];
}

