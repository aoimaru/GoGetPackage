[app/sources/295722185.Dockerfile]
digraph {
  "sha256:07b964e2a78df27029003a89df7f1ea9b58146a842954b36b6fa6152c15a7921" [label="local://context" shape="ellipse"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:e5ea58796dc26c958c750dc15d76afa870b7ace83d5c0d626caf38f6229211a4" [label="/bin/sh -c apk update && apk add ca-certificates" shape="box"];
  "sha256:a6a195fae74a4812f3387a52fb8273df8049e431f1d4d242675a299603499104" [label="copy{src=/bin/workflow-manager, dest=/bin/workflow-manager}" shape="note"];
  "sha256:79cef325c3528bdbb25b5bfa006f98e8cee1975f5fb86c0a012fef8b623bfeb4" [label="copy{src=/kvconfig.yml, dest=/bin/kvconfig.yml}" shape="note"];
  "sha256:b3f23ca1b2b1378d1deb5ce09eee45c58e30da33eab71f957a864ce4e02cb93e" [label="sha256:b3f23ca1b2b1378d1deb5ce09eee45c58e30da33eab71f957a864ce4e02cb93e" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:e5ea58796dc26c958c750dc15d76afa870b7ace83d5c0d626caf38f6229211a4" [label=""];
  "sha256:e5ea58796dc26c958c750dc15d76afa870b7ace83d5c0d626caf38f6229211a4" -> "sha256:a6a195fae74a4812f3387a52fb8273df8049e431f1d4d242675a299603499104" [label=""];
  "sha256:07b964e2a78df27029003a89df7f1ea9b58146a842954b36b6fa6152c15a7921" -> "sha256:a6a195fae74a4812f3387a52fb8273df8049e431f1d4d242675a299603499104" [label=""];
  "sha256:a6a195fae74a4812f3387a52fb8273df8049e431f1d4d242675a299603499104" -> "sha256:79cef325c3528bdbb25b5bfa006f98e8cee1975f5fb86c0a012fef8b623bfeb4" [label=""];
  "sha256:07b964e2a78df27029003a89df7f1ea9b58146a842954b36b6fa6152c15a7921" -> "sha256:79cef325c3528bdbb25b5bfa006f98e8cee1975f5fb86c0a012fef8b623bfeb4" [label=""];
  "sha256:79cef325c3528bdbb25b5bfa006f98e8cee1975f5fb86c0a012fef8b623bfeb4" -> "sha256:b3f23ca1b2b1378d1deb5ce09eee45c58e30da33eab71f957a864ce4e02cb93e" [label=""];
}

