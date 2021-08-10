[app/sources/327681724.Dockerfile]
digraph {
  "sha256:98117ed87c5336a695d7a622561a3c64a51b7b1965e2a1d6974a51fd60dc447d" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.12" shape="ellipse"];
  "sha256:243be78a6b8af276ec48ee272bd3928a663c91bddf832cda3ef6d37fc286b0d2" [label="mkdir{path=/dns-operator}" shape="note"];
  "sha256:e564a3848687ce8fdfc236927c056b9d05762fabad653cb818059f4563e36c7b" [label="local://context" shape="ellipse"];
  "sha256:6a734ce7d5b4e8d5c582ce3d389a91609d7ff51592dc61345c19ac6968589dec" [label="copy{src=/, dest=/dns-operator/}" shape="note"];
  "sha256:5d4bfe1b8b1757f2e22bae645c36e5e8e3c2e2489aeeda2f9e940b3b05d0d0ae" [label="/bin/sh -c make build" shape="box"];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" [label="docker-image://registry.svc.ci.openshift.org/openshift/origin-v4.0:base" shape="ellipse"];
  "sha256:84ed6b73db322d0a3892e29013493e7b6ea6986364f4f6e05139696b21262df4" [label="copy{src=/dns-operator/dns-operator, dest=/usr/bin/}" shape="note"];
  "sha256:61457f5661cee28088d654b8f8b972a31306d25656839e9c245d0535bcc1d503" [label="copy{src=/manifests, dest=/manifests}" shape="note"];
  "sha256:659651892a385af09668f5bdfcad26e035ccaf325ade9883482e6b4300129e53" [label="/bin/sh -c useradd dns-operator" shape="box"];
  "sha256:738e5ffdabf5c87060d9cc97c57fffeb61dc499ed94d95b315c6d37c7e0e6374" [label="sha256:738e5ffdabf5c87060d9cc97c57fffeb61dc499ed94d95b315c6d37c7e0e6374" shape="plaintext"];
  "sha256:98117ed87c5336a695d7a622561a3c64a51b7b1965e2a1d6974a51fd60dc447d" -> "sha256:243be78a6b8af276ec48ee272bd3928a663c91bddf832cda3ef6d37fc286b0d2" [label=""];
  "sha256:243be78a6b8af276ec48ee272bd3928a663c91bddf832cda3ef6d37fc286b0d2" -> "sha256:6a734ce7d5b4e8d5c582ce3d389a91609d7ff51592dc61345c19ac6968589dec" [label=""];
  "sha256:e564a3848687ce8fdfc236927c056b9d05762fabad653cb818059f4563e36c7b" -> "sha256:6a734ce7d5b4e8d5c582ce3d389a91609d7ff51592dc61345c19ac6968589dec" [label=""];
  "sha256:6a734ce7d5b4e8d5c582ce3d389a91609d7ff51592dc61345c19ac6968589dec" -> "sha256:5d4bfe1b8b1757f2e22bae645c36e5e8e3c2e2489aeeda2f9e940b3b05d0d0ae" [label=""];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" -> "sha256:84ed6b73db322d0a3892e29013493e7b6ea6986364f4f6e05139696b21262df4" [label=""];
  "sha256:5d4bfe1b8b1757f2e22bae645c36e5e8e3c2e2489aeeda2f9e940b3b05d0d0ae" -> "sha256:84ed6b73db322d0a3892e29013493e7b6ea6986364f4f6e05139696b21262df4" [label=""];
  "sha256:84ed6b73db322d0a3892e29013493e7b6ea6986364f4f6e05139696b21262df4" -> "sha256:61457f5661cee28088d654b8f8b972a31306d25656839e9c245d0535bcc1d503" [label=""];
  "sha256:e564a3848687ce8fdfc236927c056b9d05762fabad653cb818059f4563e36c7b" -> "sha256:61457f5661cee28088d654b8f8b972a31306d25656839e9c245d0535bcc1d503" [label=""];
  "sha256:61457f5661cee28088d654b8f8b972a31306d25656839e9c245d0535bcc1d503" -> "sha256:659651892a385af09668f5bdfcad26e035ccaf325ade9883482e6b4300129e53" [label=""];
  "sha256:659651892a385af09668f5bdfcad26e035ccaf325ade9883482e6b4300129e53" -> "sha256:738e5ffdabf5c87060d9cc97c57fffeb61dc499ed94d95b315c6d37c7e0e6374" [label=""];
}

