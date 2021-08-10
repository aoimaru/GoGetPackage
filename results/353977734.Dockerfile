[app/sources/353977734.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c70468825b73a2a47691812c0ef804d94ebced89c6d00cad583b1afc43323f8e" [label="local://context" shape="ellipse"];
  "sha256:f8da2cb075778bf46766c52548837a7e3de04c810dc598a6a2b5176db70b3139" [label="copy{src=/etcd, dest=/usr/local/bin/}" shape="note"];
  "sha256:054275333b37dbd25b71cb0625a40f5a6e4ca31531261b460fc43aa3213fc06c" [label="copy{src=/etcdctl, dest=/usr/local/bin/}" shape="note"];
  "sha256:c7643573c54c37b94c17ddfd83fbe2550e6120ffe99b5f8ba05e5d21cd722953" [label="/bin/sh -c mkdir -p /var/etcd/" shape="box"];
  "sha256:5738bbef6b8e06b43bbb69c181f5a393710681a6470f5f76a54fdc86eeaef2dd" [label="/bin/sh -c mkdir -p /var/lib/etcd/" shape="box"];
  "sha256:ed575b67d1b73195d3058cf8b480c3602d079136f3bceb46108d008652795696" [label="/bin/sh -c echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf" shape="box"];
  "sha256:f2f1cdcbbca1707adba71f2cfba3e87b16074b695bdd64206086183b7632dade" [label="sha256:f2f1cdcbbca1707adba71f2cfba3e87b16074b695bdd64206086183b7632dade" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f8da2cb075778bf46766c52548837a7e3de04c810dc598a6a2b5176db70b3139" [label=""];
  "sha256:c70468825b73a2a47691812c0ef804d94ebced89c6d00cad583b1afc43323f8e" -> "sha256:f8da2cb075778bf46766c52548837a7e3de04c810dc598a6a2b5176db70b3139" [label=""];
  "sha256:f8da2cb075778bf46766c52548837a7e3de04c810dc598a6a2b5176db70b3139" -> "sha256:054275333b37dbd25b71cb0625a40f5a6e4ca31531261b460fc43aa3213fc06c" [label=""];
  "sha256:c70468825b73a2a47691812c0ef804d94ebced89c6d00cad583b1afc43323f8e" -> "sha256:054275333b37dbd25b71cb0625a40f5a6e4ca31531261b460fc43aa3213fc06c" [label=""];
  "sha256:054275333b37dbd25b71cb0625a40f5a6e4ca31531261b460fc43aa3213fc06c" -> "sha256:c7643573c54c37b94c17ddfd83fbe2550e6120ffe99b5f8ba05e5d21cd722953" [label=""];
  "sha256:c7643573c54c37b94c17ddfd83fbe2550e6120ffe99b5f8ba05e5d21cd722953" -> "sha256:5738bbef6b8e06b43bbb69c181f5a393710681a6470f5f76a54fdc86eeaef2dd" [label=""];
  "sha256:5738bbef6b8e06b43bbb69c181f5a393710681a6470f5f76a54fdc86eeaef2dd" -> "sha256:ed575b67d1b73195d3058cf8b480c3602d079136f3bceb46108d008652795696" [label=""];
  "sha256:ed575b67d1b73195d3058cf8b480c3602d079136f3bceb46108d008652795696" -> "sha256:f2f1cdcbbca1707adba71f2cfba3e87b16074b695bdd64206086183b7632dade" [label=""];
}

