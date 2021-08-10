[app/sources/465255145.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:ea716775feb074e62bd484113caccacf3a5a9a36755b58be31ada3b2d5c74ad4" [label="local://context" shape="ellipse"];
  "sha256:108280977a68544cbf475e2b44746a2141f1bea8f5549cc7c3733df6987d5c73" [label="copy{src=/, dest=/dns-frontend}" shape="note"];
  "sha256:e140605b88ee459cbfe72b40c0e91ddcc547a1f938b4260967f192e34c79e2b7" [label="mkdir{path=/dns-frontend}" shape="note"];
  "sha256:bf6b24d70e1f105384630a9ad6917dc5b78eb0eee7ea941a270eebaf23d33741" [label="sha256:bf6b24d70e1f105384630a9ad6917dc5b78eb0eee7ea941a270eebaf23d33741" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label=""];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" -> "sha256:108280977a68544cbf475e2b44746a2141f1bea8f5549cc7c3733df6987d5c73" [label=""];
  "sha256:ea716775feb074e62bd484113caccacf3a5a9a36755b58be31ada3b2d5c74ad4" -> "sha256:108280977a68544cbf475e2b44746a2141f1bea8f5549cc7c3733df6987d5c73" [label=""];
  "sha256:108280977a68544cbf475e2b44746a2141f1bea8f5549cc7c3733df6987d5c73" -> "sha256:e140605b88ee459cbfe72b40c0e91ddcc547a1f938b4260967f192e34c79e2b7" [label=""];
  "sha256:e140605b88ee459cbfe72b40c0e91ddcc547a1f938b4260967f192e34c79e2b7" -> "sha256:bf6b24d70e1f105384630a9ad6917dc5b78eb0eee7ea941a270eebaf23d33741" [label=""];
}

