[app/sources/298150066.Dockerfile]
digraph {
  "sha256:07888e5f62835a3f2480f59ab2d6cfa68586cb87bc45c702103fb33648cf5955" [label="local://context" shape="ellipse"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:c24f20917b2e7057fe6d33440e507e8a0f6983f3a46ab3ec1d81ffc4e248c98e" [label="copy{src=/bin/employer, dest=/employer}" shape="note"];
  "sha256:90d1484dbf04e01f7dc68fc8c0e04758f1e0ac78f6c73dca953e074058f0e1d7" [label="/bin/sh -c chmod 700 /employer" shape="box"];
  "sha256:74567b91c5d41c21e47383b2d97fc099673909bf3ce90f52e36d211081565fd9" [label="sha256:74567b91c5d41c21e47383b2d97fc099673909bf3ce90f52e36d211081565fd9" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:c24f20917b2e7057fe6d33440e507e8a0f6983f3a46ab3ec1d81ffc4e248c98e" [label=""];
  "sha256:07888e5f62835a3f2480f59ab2d6cfa68586cb87bc45c702103fb33648cf5955" -> "sha256:c24f20917b2e7057fe6d33440e507e8a0f6983f3a46ab3ec1d81ffc4e248c98e" [label=""];
  "sha256:c24f20917b2e7057fe6d33440e507e8a0f6983f3a46ab3ec1d81ffc4e248c98e" -> "sha256:90d1484dbf04e01f7dc68fc8c0e04758f1e0ac78f6c73dca953e074058f0e1d7" [label=""];
  "sha256:90d1484dbf04e01f7dc68fc8c0e04758f1e0ac78f6c73dca953e074058f0e1d7" -> "sha256:74567b91c5d41c21e47383b2d97fc099673909bf3ce90f52e36d211081565fd9" [label=""];
}

