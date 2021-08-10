[app/sources/192981366.Dockerfile]
digraph {
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" [label="docker-image://docker.io/centurylink/ca-certs:latest" shape="ellipse"];
  "sha256:7c7408b81b25e44a101cf2314fc8574706019c43b9bdd2cc8144a6c0dd282e69" [label="mkdir{path=/banyancollector}" shape="note"];
  "sha256:b47a9d1217ff8ea662d1c63ebe50f7aa07a6096867dd2bf01575346fc40a182c" [label="local://context" shape="ellipse"];
  "sha256:1cb91ba8e2b7900123543978d5e2a79d720069a54148613a6fcfa168df65385c" [label="copy{src=/data/bin, dest=/banyancollector/data/bin}" shape="note"];
  "sha256:91dd3d2702da5c34ddc919717ba11de91a31cdfc4171a087da27855e0c7c1451" [label="copy{src=/data/defaultscripts, dest=/banyancollector/data/defaultscripts}" shape="note"];
  "sha256:f56098955a1ab1ead0fb0c7e663db063789124c8b82c4111ce6f3b52300b72a0" [label="data/bin/busybox ln -s data/bin/busybox cp" shape="box"];
  "sha256:4fc5127afc84f3e2814a2e3da07430d72691bf34f5ea9814fd7fa55e9ecf9960" [label="copy{src=/collector, dest=/banyancollector/},copy{src=/git_info.txt, dest=/banyancollector/}" shape="note"];
  "sha256:3cc4065b1754964d7c64f39f8c1c98a0b93664d72c0b0b074b67094f1e0c0836" [label="sha256:3cc4065b1754964d7c64f39f8c1c98a0b93664d72c0b0b074b67094f1e0c0836" shape="plaintext"];
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" -> "sha256:7c7408b81b25e44a101cf2314fc8574706019c43b9bdd2cc8144a6c0dd282e69" [label=""];
  "sha256:7c7408b81b25e44a101cf2314fc8574706019c43b9bdd2cc8144a6c0dd282e69" -> "sha256:1cb91ba8e2b7900123543978d5e2a79d720069a54148613a6fcfa168df65385c" [label=""];
  "sha256:b47a9d1217ff8ea662d1c63ebe50f7aa07a6096867dd2bf01575346fc40a182c" -> "sha256:1cb91ba8e2b7900123543978d5e2a79d720069a54148613a6fcfa168df65385c" [label=""];
  "sha256:1cb91ba8e2b7900123543978d5e2a79d720069a54148613a6fcfa168df65385c" -> "sha256:91dd3d2702da5c34ddc919717ba11de91a31cdfc4171a087da27855e0c7c1451" [label=""];
  "sha256:b47a9d1217ff8ea662d1c63ebe50f7aa07a6096867dd2bf01575346fc40a182c" -> "sha256:91dd3d2702da5c34ddc919717ba11de91a31cdfc4171a087da27855e0c7c1451" [label=""];
  "sha256:91dd3d2702da5c34ddc919717ba11de91a31cdfc4171a087da27855e0c7c1451" -> "sha256:f56098955a1ab1ead0fb0c7e663db063789124c8b82c4111ce6f3b52300b72a0" [label=""];
  "sha256:f56098955a1ab1ead0fb0c7e663db063789124c8b82c4111ce6f3b52300b72a0" -> "sha256:4fc5127afc84f3e2814a2e3da07430d72691bf34f5ea9814fd7fa55e9ecf9960" [label=""];
  "sha256:b47a9d1217ff8ea662d1c63ebe50f7aa07a6096867dd2bf01575346fc40a182c" -> "sha256:4fc5127afc84f3e2814a2e3da07430d72691bf34f5ea9814fd7fa55e9ecf9960" [label=""];
  "sha256:4fc5127afc84f3e2814a2e3da07430d72691bf34f5ea9814fd7fa55e9ecf9960" -> "sha256:3cc4065b1754964d7c64f39f8c1c98a0b93664d72c0b0b074b67094f1e0c0836" [label=""];
}

